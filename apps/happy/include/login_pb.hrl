%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 4.1.3

-ifndef(login_pb).
-define(login_pb, true).

-define(login_pb_gpb_version, "4.1.3").

-ifndef('CREGIST_PB_H').
-define('CREGIST_PB_H', true).
-record('CRegist',
        {nickname = <<>>        :: iodata() | undefined, % = 1
         phone = <<>>           :: iodata() | undefined, % = 2
         password = <<>>        :: iodata() | undefined % = 3
        }).
-endif.

-ifndef('SWXLOGIN_PB_H').
-define('SWXLOGIN_PB_H', true).
-record('SWxLogin',
        {userid = <<>>          :: iodata() | undefined, % = 1
         token = <<>>           :: iodata() | undefined, % = 2
         error = 0              :: non_neg_integer() | undefined % = 3, 32 bits
        }).
-endif.

-ifndef('SLOGIN_PB_H').
-define('SLOGIN_PB_H', true).
-record('SLogin',
        {userid = <<>>          :: iodata() | undefined, % = 1
         error = 0              :: non_neg_integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('CLOGIN_PB_H').
-define('CLOGIN_PB_H', true).
-record('CLogin',
        {phone = <<>>           :: iodata() | undefined, % = 1
         password = <<>>        :: iodata() | undefined % = 2
        }).
-endif.

-ifndef('SREGIST_PB_H').
-define('SREGIST_PB_H', true).
-record('SRegist',
        {userid = <<>>          :: iodata() | undefined, % = 1
         error = 0              :: non_neg_integer() | undefined % = 2, 32 bits
        }).
-endif.

-ifndef('CWXLOGIN_PB_H').
-define('CWXLOGIN_PB_H', true).
-record('CWxLogin',
        {wxcode = <<>>          :: iodata() | undefined, % = 1
         token = <<>>           :: iodata() | undefined % = 2
        }).
-endif.

-ifndef('SLOGINOUT_PB_H').
-define('SLOGINOUT_PB_H', true).
-record('SLoginOut',
        {rtype = 0              :: non_neg_integer() | undefined % = 1, 32 bits
        }).
-endif.

-endif.
