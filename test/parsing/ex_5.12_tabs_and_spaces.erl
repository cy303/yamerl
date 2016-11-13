-module('ex_5.12_tabs_and_spaces').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        96,
        true,
        [],
        0,
        97,
        7,
        1,
        false,
        7,
        1,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        15,
        14,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,7,1},
          {yamerl_doc_end,7,1},
          {yamerl_collection_end,7,1,block,mapping},
          {yamerl_scalar,3,8,
            {yamerl_tag,3,8,{non_specific,"!"}},
            block,literal,"void main() {\n\tprintf(\"Hello, world!\\n\");\n}\n"},
          {yamerl_mapping_value,3,6},
          {yamerl_scalar,3,1,
            {yamerl_tag,3,1,{non_specific,"?"}},
            flow,plain,"block"},
          {yamerl_mapping_key,3,1},
          {yamerl_scalar,2,9,
            {yamerl_tag,2,9,{non_specific,"!"}},
            flow,double_quoted,"Quoted \t"},
          {yamerl_mapping_value,2,7},
          {yamerl_scalar,2,1,
            {yamerl_tag,2,1,{non_specific,"?"}},
            flow,plain,"quoted"},
          {yamerl_mapping_key,2,1},
          {yamerl_collection_start,2,1,
            {yamerl_tag,2,1,{non_specific,"?"}},
            block,mapping},
          {yamerl_doc_start,2,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
