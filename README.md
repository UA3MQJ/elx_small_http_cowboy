# elx-small-http-cowboy

Minimal HTTP server for stress tests

Build:
mix deps.get

Build with HiPE:
remove all files from _build
ERL_COMPILER_OPTIONS="[native,{hipe, [verbose, o3]}]" mix deps.compile --force
ERL_COMPILER_OPTIONS="[native,{hipe, [verbose, o3]}]" mix compile

Start:

mix run --no-halt