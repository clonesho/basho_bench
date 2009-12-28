%% -------------------------------------------------------------------
%%
%% riak_bench: Benchmarking Suite for Riak
%%
%% Copyright (c) 2009 Basho Techonologies
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.    
%%
%% -------------------------------------------------------------------
-module(riak_bench_driver_null).

-export([new/0,
         run/4]).

-include("riak_bench.hrl").

%% ====================================================================
%% API
%% ====================================================================

new() ->
    {ok, undefined}.

run(get, KeyGen, ValueGen, State) ->
    Key = KeyGen(),
    {ok, Key};
run(put, KeyGen, ValueGen, State) ->
    Key = KeyGen(),
    Value = ValueGen(),
    {ok, Key};
run(delete, KeyGen, ValueGen, State) ->
    Key = KeyGen(),
    {ok, Key}.
    
