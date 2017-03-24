defmodule HttpTest2 do
  # @compile :native
  # @compile {:hipe, [:verbose, :o3]}

  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: HttpTest2.Worker.start_link(arg1, arg2, arg3)
      worker(__MODULE__, [], function: :start_web_site),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HttpTest2.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def start_web_site do
    {:ok, _} = Plug.Adapters.Cowboy.http(Http_test2.Router, [port: 4000])
  end
end
