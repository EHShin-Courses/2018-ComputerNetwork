make[1]: Entering directory '/home/eunhyouk/Documents/KENS2018/src'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/home/eunhyouk/Documents/KENS2018/src'
make[1]: Entering directory '/home/eunhyouk/Documents/KENS2018/app/TestTCP'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/home/eunhyouk/Documents/KENS2018/app/TestTCP'
Running test cases for project1...
Running main() from gtest_main.cc
Note: Google Test filter = TestEnv_Reliable.TestOpen:TestEnv_Reliable.TestBind_*
[==========] Running 8 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 8 tests from TestEnv_Reliable
[ RUN      ] TestEnv_Reliable.TestOpen
[       OK ] TestEnv_Reliable.TestOpen (5026 ms)
[ RUN      ] TestEnv_Reliable.TestBind_Simple
[       OK ] TestEnv_Reliable.TestBind_Simple (1 ms)
[ RUN      ] TestEnv_Reliable.TestBind_DoubleBind
[       OK ] TestEnv_Reliable.TestBind_DoubleBind (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_GetSockName
[       OK ] TestEnv_Reliable.TestBind_GetSockName (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_OverlapPort
[       OK ] TestEnv_Reliable.TestBind_OverlapPort (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_OverlapClosed
[       OK ] TestEnv_Reliable.TestBind_OverlapClosed (1 ms)
[ RUN      ] TestEnv_Reliable.TestBind_DifferentIP_SamePort
[       OK ] TestEnv_Reliable.TestBind_DifferentIP_SamePort (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_SameIP_DifferentPort
[       OK ] TestEnv_Reliable.TestBind_SameIP_DifferentPort (0 ms)
[----------] 8 tests from TestEnv_Reliable (5028 ms total)

[----------] Global test environment tear-down
[==========] 8 tests from 1 test case ran. (5028 ms total)
[  PASSED  ] 8 tests.
Running test cases for project2...
Running main() from gtest_main.cc
Note: Google Test filter = TestEnv_Reliable.TestAccept_*:TestEnv_Any.TestAccept_*:TestEnv_Any.TestConnect_*:TestEnv_Any.TestClose_*
[==========] Running 15 tests from 2 test cases.
[----------] Global test environment set-up.
[----------] 2 tests from TestEnv_Reliable
[ RUN      ] TestEnv_Reliable.TestAccept_Backlog1
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 3
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Reliable.TestAccept_Backlog1 (103 ms)
[ RUN      ] TestEnv_Reliable.TestAccept_Backlog2
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 6
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Reliable.TestAccept_Backlog2 (100 ms)
[----------] 2 tests from TestEnv_Reliable (203 ms total)

[----------] 13 tests from TestEnv_Any
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseFirst
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 67174410
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640476144 vs 0
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3515548 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseFirst (2 ms)
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseLater
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 67174410
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640466144 vs 0
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3525548 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseLater (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseSimultaneous
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 67174410
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640476144 vs 0
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3525548 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseSimultaneous (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseLater
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3515548 vs 0
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 117483712
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640476144 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseLater (305 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseFirst
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3525548 vs 0
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 117483712
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640466144 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseFirst (306 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseSimultaneous
testclose.cpp:64: Failure
Expected: (client_fd) >= (0), actual: -1 vs 0
testclose.cpp:67: Failure
Value of: 2
Expected: client_addr.sin_family
Which is: 0
testclose.cpp:72: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:75: Failure
Value of: temp_addr.sin_family
  Actual: 15888
Expected: addr.sin_family
Which is: 2
testclose.cpp:76: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 3879
testclose.cpp:83: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:86: Failure
Expected: (sleep_time) >= (0), actual: -3525548 vs 0
testclose.cpp:122: Failure
Expected: (ret) >= (0), actual: -1 vs 0
testclose.cpp:127: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:128: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 117483712
testclose.cpp:129: Failure
Value of: temp_addr.sin_family
  Actual: 19984
Expected: addr.sin_family
Which is: 2
testclose.cpp:130: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 3879
testclose.cpp:136: Failure
Value of: 0
Expected: ret
Which is: -1
testclose.cpp:139: Failure
Expected: (sleep_time) >= (0), actual: -140721640476144 vs 0
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseSimultaneous (302 ms)
[ RUN      ] TestEnv_Any.TestAccept_BeforeAccept
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestAccept_BeforeAccept (300 ms)
[ RUN      ] TestEnv_Any.TestAccept_AfterAccept
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestAccept_AfterAccept (305 ms)
[ RUN      ] TestEnv_Any.TestAccept_MultipleInterface1
testhandshake.cpp:48: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 5
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 3
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 5
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 3
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestAccept_MultipleInterface1 (621 ms)
[ RUN      ] TestEnv_Any.TestAccept_MultipleInterface2
testhandshake.cpp:48: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 2
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 4
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 2
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 4
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestAccept_MultipleInterface2 (624 ms)
[ RUN      ] TestEnv_Any.TestConnect_BeforeAccept
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestConnect_BeforeAccept (1 ms)
[ RUN      ] TestEnv_Any.TestConnect_AfterAccept
testhandshake.cpp:168: Failure
Value of: expected_connect
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
testhandshake.cpp:90: Failure
Value of: expected_accept
  Actual: 1
Expected: (int)client_sockets.size()
Which is: 0
[  FAILED  ] TestEnv_Any.TestConnect_AfterAccept (1 ms)
[ RUN      ] TestEnv_Any.TestConnect_SimultaneousConnect
connect(): getIPAddr fail
testhandshake.cpp:629: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:634: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:635: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 67174410
testhandshake.cpp:636: Failure
Value of: temp_addr.sin_family
  Actual: 19936
Expected: addr.sin_family
Which is: 2
testhandshake.cpp:637: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: addr.sin_port
Which is: 14640
testhandshake.cpp:640: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:642: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: bind_addr.sin_addr.s_addr
Which is: 117483712
testhandshake.cpp:643: Failure
Value of: temp_addr.sin_family
  Actual: 19936
Expected: bind_addr.sin_family
Which is: 2
testhandshake.cpp:644: Failure
Value of: temp_addr.sin_port
  Actual: 32646
Expected: bind_addr.sin_port
Which is: 52822
testhandshake.cpp:629: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:634: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:635: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: addr.sin_addr.s_addr
Which is: 117483712
testhandshake.cpp:636: Failure
Value of: temp_addr.sin_family
  Actual: 15840
Expected: addr.sin_family
Which is: 2
testhandshake.cpp:637: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: addr.sin_port
Which is: 52822
testhandshake.cpp:640: Failure
Value of: 0
Expected: ret
Which is: -1
testhandshake.cpp:642: Failure
Value of: temp_addr.sin_addr.s_addr
  Actual: 32569
Expected: bind_addr.sin_addr.s_addr
Which is: 67174410
testhandshake.cpp:643: Failure
Value of: temp_addr.sin_family
  Actual: 15840
Expected: bind_addr.sin_family
Which is: 2
testhandshake.cpp:644: Failure
Value of: temp_addr.sin_port
  Actual: 32518
Expected: bind_addr.sin_port
Which is: 14640
[  FAILED  ] TestEnv_Any.TestConnect_SimultaneousConnect (300 ms)
[----------] 13 tests from TestEnv_Any (3070 ms total)

[----------] Global test environment tear-down
[==========] 15 tests from 2 test cases ran. (3273 ms total)
[  PASSED  ] 0 tests.
[  FAILED  ] 15 tests, listed below:
[  FAILED  ] TestEnv_Reliable.TestAccept_Backlog1
[  FAILED  ] TestEnv_Reliable.TestAccept_Backlog2
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseFirst
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseLater
[  FAILED  ] TestEnv_Any.TestClose_Connect_CloseSimultaneous
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseLater
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseFirst
[  FAILED  ] TestEnv_Any.TestClose_Accept_CloseSimultaneous
[  FAILED  ] TestEnv_Any.TestAccept_BeforeAccept
[  FAILED  ] TestEnv_Any.TestAccept_AfterAccept
[  FAILED  ] TestEnv_Any.TestAccept_MultipleInterface1
[  FAILED  ] TestEnv_Any.TestAccept_MultipleInterface2
[  FAILED  ] TestEnv_Any.TestConnect_BeforeAccept
[  FAILED  ] TestEnv_Any.TestConnect_AfterAccept
[  FAILED  ] TestEnv_Any.TestConnect_SimultaneousConnect

15 FAILED TESTS
Makefile:42: recipe for target 'test_part2' failed
