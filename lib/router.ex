defmodule Http_test2.Router do
  # @compile :native
  # @compile {:hipe, [:verbose, :o3]}

  use Plug.Router
  use Plug.Debugger

  plug Plug.Parsers, parsers: [:erlencoded, :multipart]
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hi there, I love !")
  end

  get "/:key" do
    send_resp(conn, 200, "Hi there, I love " <> key <> "!")
  end

end
