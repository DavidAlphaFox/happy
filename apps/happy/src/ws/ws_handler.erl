%%%-------------------------------------------------------------------
%% @doc happy ws handler API
%% @author piaohua<814004090@qq.com>
%% @end 2018-03-30 22:21:26
%%%-------------------------------------------------------------------

-module(ws_handler).
-author("piaohua").

-export([init/2]).
-export([websocket_init/1]).
-export([websocket_handle/2]).
-export([websocket_info/2]).
-export([websocket_terminate/2]).

-include("../../include/define.hrl").

%% ------------------------------------------------------------------
%% API Function Definitions
%% ------------------------------------------------------------------

init(Req, Opts) ->
    ?DEBUG("init Request: ~p", [Req]),
    {cowboy_websocket, Req, Opts, #{
        compress => true, %% frame compression extension
        idle_timeout => 30000, %% It defaults to 60000
        max_frame_size => 1024}}.

websocket_init(State) ->
    %erlang:start_timer(1000, self(), <<"Hello!">>),
    {ok, State}.

websocket_handle(ping, State) ->
    ?INFO("websocket_handle ping"),
    {reply, pong, State};

websocket_handle({binary, BinData}, State) ->
    ?INFO("happy websocket_handle Request: ~p", [BinData]),
    {reply, {binary, BinData}, State};

websocket_handle({text, Msg}, State) ->
    ?INFO("happy websocket_handle Request: ~p", [Msg]),
    %% self() ! stop,
    %% self() ! close,
    {reply, {text, << "That's what she said! happy ", Msg/binary >>}, State};

websocket_handle(_Data, State) ->
    ?INFO("websocket_handle unknown Request: ~p", [_Data]),
    {ok, State}.

websocket_info({timeout, _Ref, Msg}, State) ->
    ?INFO("websocket_info Request: ~p", [Msg]),
    %erlang:start_timer(1000, self(), <<"How' you doin'?">>),
    {reply, {text, Msg}, State};

websocket_info(stop, State) ->
    ?INFO("websocket_info stop"),
    {stop, State};

websocket_info(close, State) ->
    ?INFO("websocket_info close"),
    {reply, {close, 1000, <<"some-reason">>}, State};

websocket_info(_Info, State) ->
    ?INFO("websocket_info unknown Request: ~p", [_Info]),
    {ok, State}.

websocket_terminate(Reason, _State) ->
    ?INFO("websocket_handle terminate: ~p", [Reason]),
    ok.
