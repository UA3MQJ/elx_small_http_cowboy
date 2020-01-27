# elx_small_http_cowboy

Minimal HTTP server for stress tests

Build:
> mix deps.get

Build with HiPE:
> remove all files from _build

> ERL_COMPILER_OPTIONS="[native,{hipe, [verbose, o3]}]" mix deps.compile --force

> ERL_COMPILER_OPTIONS="[native,{hipe, [verbose, o3]}]" mix compile


Start:

> mix run --no-halt
 
# result 

```
wrk -t100 -c500 -d10s http://127.0.0.1:4000/123

Running 10s test @ http://127.0.0.1:4000/123
  100 threads and 500 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.47ms    6.96ms  80.34ms   83.00%
    Req/Sec   669.09    156.09     1.66k    71.49%
  671726 requests in 10.10s, 105.82MB read
Requests/sec:  66476.29
Transfer/sec:     10.47MB