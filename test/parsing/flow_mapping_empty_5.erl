-module('flow_mapping_empty_5').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        9,
        true,
        [],
        0,
        10,
        4,
        1,
        false,
        3,
        2,
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
        11,
        10,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,3,2},
          {yamerl_doc_end,3,2},
          {yamerl_collection_end,3,1,flow,mapping},
          {yamerl_scalar,2,4,
            {yamerl_tag,2,4,{non_specific,"?"}},
            flow,plain,[]},
          {yamerl_mapping_value,2,4},
          {yamerl_scalar,2,1,
            {yamerl_tag,2,1,{non_specific,"?"}},
            flow,plain,"key"},
          {yamerl_mapping_key,2,1},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            flow,mapping},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
