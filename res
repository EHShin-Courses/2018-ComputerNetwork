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
[       OK ] TestEnv_Reliable.TestOpen (5117 ms)
[ RUN      ] TestEnv_Reliable.TestBind_Simple
[       OK ] TestEnv_Reliable.TestBind_Simple (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_DoubleBind
[       OK ] TestEnv_Reliable.TestBind_DoubleBind (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_GetSockName
[       OK ] TestEnv_Reliable.TestBind_GetSockName (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_OverlapPort
[       OK ] TestEnv_Reliable.TestBind_OverlapPort (1 ms)
[ RUN      ] TestEnv_Reliable.TestBind_OverlapClosed
[       OK ] TestEnv_Reliable.TestBind_OverlapClosed (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_DifferentIP_SamePort
[       OK ] TestEnv_Reliable.TestBind_DifferentIP_SamePort (0 ms)
[ RUN      ] TestEnv_Reliable.TestBind_SameIP_DifferentPort
[       OK ] TestEnv_Reliable.TestBind_SameIP_DifferentPort (0 ms)
[----------] 8 tests from TestEnv_Reliable (5118 ms total)

[----------] Global test environment tear-down
[==========] 8 tests from 1 test case ran. (5118 ms total)
[  PASSED  ] 8 tests.
Running test cases for project2...
Running main() from gtest_main.cc
Note: Google Test filter = TestEnv_Reliable.TestAccept_*:TestEnv_Any.TestAccept_*:TestEnv_Any.TestConnect_*:TestEnv_Any.TestClose_*
[==========] Running 15 tests from 2 test cases.
[----------] Global test environment set-up.
[----------] 2 tests from TestEnv_Reliable
[ RUN      ] TestEnv_Reliable.TestAccept_Backlog1
get ack:1 seq:846930887
get ack:1 seq:1714636916
get ack:1 seq:424238336
[       OK ] TestEnv_Reliable.TestAccept_Backlog1 (50 ms)
[ RUN      ] TestEnv_Reliable.TestAccept_Backlog2
get ack:1 seq:1102520060
get ack:1 seq:1967513927
get ack:1 seq:1540383427
get ack:1 seq:1303455737
get ack:1 seq:521595369
get ack:1 seq:1726956430
[       OK ] TestEnv_Reliable.TestAccept_Backlog2 (3 ms)
[----------] 2 tests from TestEnv_Reliable (53 ms total)

[----------] 13 tests from TestEnv_Any
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseFirst
get ack:4294964227 seq:4294966513
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294966514
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestClose_Connect_CloseFirst (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseLater
get ack:4294964227 seq:4294965765
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294965767
[       OK ] TestEnv_Any.TestClose_Connect_CloseLater (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Connect_CloseSimultaneous
get ack:4294964227 seq:4294964433
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294964435
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestClose_Connect_CloseSimultaneous (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseLater
get ack:1 seq:4294963229
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294963230
[       OK ] TestEnv_Any.TestClose_Accept_CloseLater (1 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseFirst
get ack:1 seq:4294963367
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294963367
is new ack
updatesb:2
[       OK ] TestEnv_Any.TestClose_Accept_CloseFirst (0 ms)
[ RUN      ] TestEnv_Any.TestClose_Accept_CloseSimultaneous
get ack:1 seq:4294963274
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294963275
is new ack
updatesb:2
[       OK ] TestEnv_Any.TestClose_Accept_CloseSimultaneous (1 ms)
[ RUN      ] TestEnv_Any.TestAccept_BeforeAccept
get ack:1 seq:4294964227
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294964228
[       OK ] TestEnv_Any.TestAccept_BeforeAccept (1 ms)
[ RUN      ] TestEnv_Any.TestAccept_AfterAccept
get ack:1 seq:4294965903
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294965904
is new ack
updatesb:2
[       OK ] TestEnv_Any.TestAccept_AfterAccept (1 ms)
[ RUN      ] TestEnv_Any.TestAccept_MultipleInterface1
get ack:1 seq:4294967285
get ack:1 seq:4294966067
get ack:1 seq:4294962875
get ack:1 seq:4294963512
get ack:1 seq:4294967098
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
get ack:1 seq:4294963981
get ack:2 seq:4294967286
is new ack
updatesb:2
get ack:2 seq:4294962876
is new ack
updatesb:2
get ack:2 seq:4294967099
is new ack
updatesb:2
get ack:1 seq:4294965883
get ack:1 seq:4294966205
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294966068
is new ack
updatesb:2
get ack:2 seq:4294963513
is new ack
updatesb:2
get ack:2 seq:4294963982
is new ack
updatesb:2
get ack:2 seq:4294965884
is new ack
updatesb:2
get ack:2 seq:4294966206
is new ack
updatesb:2
[       OK ] TestEnv_Any.TestAccept_MultipleInterface1 (5 ms)
[ RUN      ] TestEnv_Any.TestAccept_MultipleInterface2
get ack:1 seq:4294962340
get ack:1 seq:4294965434
get ack:1 seq:4294965300
get ack:1 seq:4294964991
get ack:1 seq:4294965212
get ack:1 seq:4294966960
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
send_maximum: send fin
send FIN#:1
get ack:2 seq:4294964992
get ack:2 seq:4294965435
get ack:2 seq:4294966961
get ack:2 seq:4294965213
get ack:2 seq:4294965301
get ack:2 seq:4294962341
[       OK ] TestEnv_Any.TestAccept_MultipleInterface2 (3 ms)
[ RUN      ] TestEnv_Any.TestConnect_BeforeAccept
get ack:4294964227 seq:4294965790
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294965791
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestConnect_BeforeAccept (1 ms)
[ RUN      ] TestEnv_Any.TestConnect_AfterAccept
get ack:4294964227 seq:4294966449
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294966451
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestConnect_AfterAccept (1 ms)
[ RUN      ] TestEnv_Any.TestConnect_SimultaneousConnect
get ack:4294964227 seq:4294965566
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:4294965568
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestConnect_SimultaneousConnect (1 ms)
[----------] 13 tests from TestEnv_Any (18 ms total)

[----------] Global test environment tear-down
[==========] 15 tests from 2 test cases ran. (71 ms total)
[  PASSED  ] 15 tests.
Running test cases for project3...
Running main() from gtest_main.cc
Note: Google Test filter = TestEnv_Any.TestTransfer_*
[==========] Running 12 tests from 1 test case.
[----------] Global test environment set-up.
[----------] 12 tests from TestEnv_Any
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Send_Symmetric
get ack:4294964227 seq:4294962912
addTimer!send data packet: 4294964227 ~ 4294964738
send_maximum:insert seg:{4294964227~4294964738}
get ack:4294964739 seq:4294962913
is new ack
updatesb:4294964739
stop timer
addTimer!send data packet: 4294964739 ~ 4294965250
send_maximum:insert seg:{4294964739~4294965250}
send data packet: 4294965251 ~ 4294965762
send_maximum:insert seg:{4294965251~4294965762}
get ack:4294965251 seq:4294962913
is new ack
updatesb:4294965251
update timer
send data packet: 4294965763 ~ 4294966274
send_maximum:insert seg:{4294965763~4294966274}
send data packet: 4294966275 ~ 4294966786
send_maximum:insert seg:{4294966275~4294966786}
get ack:4294965763 seq:4294962913
is new ack
updatesb:4294965763
update timer
send data packet: 4294966787 ~ 2
send_maximum:insert seg:{4294966787~2}
send data packet: 3 ~ 514
send_maximum:insert seg:{3~514}
get ack:4294966275 seq:4294962913
is new ack
updatesb:4294966275
update timer
send data packet: 515 ~ 1026
send_maximum:insert seg:{515~1026}
send data packet: 1027 ~ 1538
send_maximum:insert seg:{1027~1538}
get ack:4294966787 seq:4294962913
is new ack
updatesb:4294966787
update timer
send data packet: 1539 ~ 2050
send_maximum:insert seg:{1539~2050}
send data packet: 2051 ~ 2562
send_maximum:insert seg:{2051~2562}
get ack:3 seq:4294962913
is new ack
updatesb:3
update timer
send data packet: 2563 ~ 3074
send_maximum:insert seg:{2563~3074}
send data packet: 3075 ~ 3586
send_maximum:insert seg:{3075~3586}
get ack:515 seq:4294962913
is new ack
updatesb:515
update timer
send data packet: 3587 ~ 4098
send_maximum:insert seg:{3587~4098}
send data packet: 4099 ~ 4610
send_maximum:insert seg:{4099~4610}
get ack:1027 seq:4294962913
is new ack
updatesb:1027
update timer
send data packet: 4611 ~ 5122
send_maximum:insert seg:{4611~5122}
send data packet: 5123 ~ 5634
send_maximum:insert seg:{5123~5634}
get ack:1539 seq:4294962913
is new ack
updatesb:1539
update timer
send data packet: 5635 ~ 6146
send_maximum:insert seg:{5635~6146}
send data packet: 6147 ~ 6658
send_maximum:insert seg:{6147~6658}
get ack:2051 seq:4294962913
is new ack
updatesb:2051
update timer
send data packet: 6659 ~ 7170
send_maximum:insert seg:{6659~7170}
send data packet: 7171 ~ 7682
send_maximum:insert seg:{7171~7682}
get ack:2563 seq:4294962913
is new ack
updatesb:2563
update timer
send data packet: 7683 ~ 8194
send_maximum:insert seg:{7683~8194}
send data packet: 8195 ~ 8706
send_maximum:insert seg:{8195~8706}
get ack:3075 seq:4294962913
is new ack
updatesb:3075
update timer
send data packet: 8707 ~ 9218
send_maximum:insert seg:{8707~9218}
send data packet: 9219 ~ 9730
send_maximum:insert seg:{9219~9730}
get ack:3587 seq:4294962913
is new ack
updatesb:3587
update timer
send data packet: 9731 ~ 10242
send_maximum:insert seg:{9731~10242}
send data packet: 10243 ~ 10754
send_maximum:insert seg:{10243~10754}
get ack:4099 seq:4294962913
is new ack
updatesb:4099
update timer
send data packet: 10755 ~ 11266
send_maximum:insert seg:{10755~11266}
send data packet: 11267 ~ 11778
send_maximum:insert seg:{11267~11778}
get ack:4611 seq:4294962913
is new ack
updatesb:4611
update timer
send data packet: 11779 ~ 12290
send_maximum:insert seg:{11779~12290}
send data packet: 12291 ~ 12802
send_maximum:insert seg:{12291~12802}
get ack:5123 seq:4294962913
is new ack
updatesb:5123
update timer
send data packet: 12803 ~ 13314
send_maximum:insert seg:{12803~13314}
send data packet: 13315 ~ 13826
send_maximum:insert seg:{13315~13826}
get ack:5635 seq:4294962913
is new ack
updatesb:5635
update timer
send data packet: 13827 ~ 14338
send_maximum:insert seg:{13827~14338}
send data packet: 14339 ~ 14850
send_maximum:insert seg:{14339~14850}
get ack:6147 seq:4294962913
is new ack
updatesb:6147
update timer
send data packet: 14851 ~ 15362
send_maximum:insert seg:{14851~15362}
send data packet: 15363 ~ 15874
send_maximum:insert seg:{15363~15874}
get ack:6659 seq:4294962913
is new ack
updatesb:6659
update timer
send data packet: 15875 ~ 16386
send_maximum:insert seg:{15875~16386}
send data packet: 16387 ~ 16898
send_maximum:insert seg:{16387~16898}
get ack:7171 seq:4294962913
is new ack
updatesb:7171
update timer
send data packet: 16899 ~ 17410
send_maximum:insert seg:{16899~17410}
send data packet: 17411 ~ 17922
send_maximum:insert seg:{17411~17922}
get ack:7683 seq:4294962913
is new ack
updatesb:7683
update timer
send data packet: 17923 ~ 18434
send_maximum:insert seg:{17923~18434}
send data packet: 18435 ~ 18946
send_maximum:insert seg:{18435~18946}
get ack:8195 seq:4294962913
is new ack
updatesb:8195
update timer
send data packet: 18947 ~ 19458
send_maximum:insert seg:{18947~19458}
send data packet: 19459 ~ 19970
send_maximum:insert seg:{19459~19970}
get ack:8707 seq:4294962913
is new ack
updatesb:8707
update timer
send data packet: 19971 ~ 20482
send_maximum:insert seg:{19971~20482}
send data packet: 20483 ~ 20994
send_maximum:insert seg:{20483~20994}
get ack:9219 seq:4294962913
is new ack
updatesb:9219
update timer
send data packet: 20995 ~ 21506
send_maximum:insert seg:{20995~21506}
send data packet: 21507 ~ 22018
send_maximum:insert seg:{21507~22018}
get ack:9731 seq:4294962913
is new ack
updatesb:9731
update timer
send data packet: 22019 ~ 22530
send_maximum:insert seg:{22019~22530}
send data packet: 22531 ~ 23042
send_maximum:insert seg:{22531~23042}
get ack:10243 seq:4294962913
is new ack
updatesb:10243
update timer
send data packet: 23043 ~ 23554
send_maximum:insert seg:{23043~23554}
send data packet: 23555 ~ 24066
send_maximum:insert seg:{23555~24066}
get ack:10755 seq:4294962913
is new ack
updatesb:10755
update timer
send data packet: 24067 ~ 24578
send_maximum:insert seg:{24067~24578}
send data packet: 24579 ~ 25090
send_maximum:insert seg:{24579~25090}
get ack:11267 seq:4294962913
is new ack
updatesb:11267
update timer
send data packet: 25091 ~ 25602
send_maximum:insert seg:{25091~25602}
send data packet: 25603 ~ 26114
send_maximum:insert seg:{25603~26114}
get ack:11779 seq:4294962913
is new ack
updatesb:11779
update timer
send data packet: 26115 ~ 26626
send_maximum:insert seg:{26115~26626}
send data packet: 26627 ~ 27138
send_maximum:insert seg:{26627~27138}
get ack:12291 seq:4294962913
is new ack
updatesb:12291
update timer
send data packet: 27139 ~ 27650
send_maximum:insert seg:{27139~27650}
send data packet: 27651 ~ 28162
send_maximum:insert seg:{27651~28162}
get ack:12803 seq:4294962913
is new ack
updatesb:12803
update timer
send data packet: 28163 ~ 28674
send_maximum:insert seg:{28163~28674}
send data packet: 28675 ~ 29186
send_maximum:insert seg:{28675~29186}
get ack:13315 seq:4294962913
is new ack
updatesb:13315
update timer
send data packet: 29187 ~ 29698
send_maximum:insert seg:{29187~29698}
send data packet: 29699 ~ 30210
send_maximum:insert seg:{29699~30210}
get ack:13827 seq:4294962913
is new ack
updatesb:13827
update timer
send data packet: 30211 ~ 30722
send_maximum:insert seg:{30211~30722}
send data packet: 30723 ~ 31234
send_maximum:insert seg:{30723~31234}
get ack:14339 seq:4294962913
is new ack
updatesb:14339
update timer
send data packet: 31235 ~ 31746
send_maximum:insert seg:{31235~31746}
send data packet: 31747 ~ 32258
send_maximum:insert seg:{31747~32258}
get ack:14851 seq:4294962913
is new ack
updatesb:14851
update timer
send data packet: 32259 ~ 32770
send_maximum:insert seg:{32259~32770}
send data packet: 32771 ~ 33282
send_maximum:insert seg:{32771~33282}
get ack:15363 seq:4294962913
is new ack
updatesb:15363
update timer
send data packet: 33283 ~ 33794
send_maximum:insert seg:{33283~33794}
send data packet: 33795 ~ 34306
send_maximum:insert seg:{33795~34306}
get ack:15875 seq:4294962913
is new ack
updatesb:15875
update timer
send data packet: 34307 ~ 34818
send_maximum:insert seg:{34307~34818}
send data packet: 34819 ~ 35330
send_maximum:insert seg:{34819~35330}
get ack:16387 seq:4294962913
is new ack
updatesb:16387
update timer
send data packet: 35331 ~ 35842
send_maximum:insert seg:{35331~35842}
send data packet: 35843 ~ 36354
send_maximum:insert seg:{35843~36354}
get ack:16899 seq:4294962913
is new ack
updatesb:16899
update timer
send data packet: 36355 ~ 36866
send_maximum:insert seg:{36355~36866}
send data packet: 36867 ~ 37378
send_maximum:insert seg:{36867~37378}
get ack:17411 seq:4294962913
is new ack
updatesb:17411
update timer
send data packet: 37379 ~ 37890
send_maximum:insert seg:{37379~37890}
send data packet: 37891 ~ 38402
send_maximum:insert seg:{37891~38402}
get ack:17923 seq:4294962913
is new ack
updatesb:17923
update timer
send data packet: 38403 ~ 38914
send_maximum:insert seg:{38403~38914}
send data packet: 38915 ~ 39426
send_maximum:insert seg:{38915~39426}
get ack:18435 seq:4294962913
is new ack
updatesb:18435
update timer
send data packet: 39427 ~ 39938
send_maximum:insert seg:{39427~39938}
send data packet: 39939 ~ 40450
send_maximum:insert seg:{39939~40450}
get ack:18947 seq:4294962913
is new ack
updatesb:18947
update timer
send data packet: 40451 ~ 40962
send_maximum:insert seg:{40451~40962}
send data packet: 40963 ~ 41474
send_maximum:insert seg:{40963~41474}
get ack:19459 seq:4294962913
is new ack
updatesb:19459
update timer
send data packet: 41475 ~ 41986
send_maximum:insert seg:{41475~41986}
send data packet: 41987 ~ 42498
send_maximum:insert seg:{41987~42498}
get ack:19971 seq:4294962913
is new ack
updatesb:19971
update timer
send data packet: 42499 ~ 43010
send_maximum:insert seg:{42499~43010}
send data packet: 43011 ~ 43522
send_maximum:insert seg:{43011~43522}
get ack:20483 seq:4294962913
is new ack
updatesb:20483
update timer
send data packet: 43523 ~ 44034
send_maximum:insert seg:{43523~44034}
send data packet: 44035 ~ 44546
send_maximum:insert seg:{44035~44546}
get ack:20995 seq:4294962913
is new ack
updatesb:20995
update timer
send data packet: 44547 ~ 45058
send_maximum:insert seg:{44547~45058}
send data packet: 45059 ~ 45570
send_maximum:insert seg:{45059~45570}
get ack:21507 seq:4294962913
is new ack
updatesb:21507
update timer
send data packet: 45571 ~ 46082
send_maximum:insert seg:{45571~46082}
send data packet: 46083 ~ 46594
send_maximum:insert seg:{46083~46594}
get ack:22019 seq:4294962913
is new ack
updatesb:22019
update timer
send data packet: 46595 ~ 47106
send_maximum:insert seg:{46595~47106}
send data packet: 47107 ~ 47618
send_maximum:insert seg:{47107~47618}
get ack:22531 seq:4294962913
is new ack
updatesb:22531
update timer
send data packet: 47619 ~ 48130
send_maximum:insert seg:{47619~48130}
send data packet: 48131 ~ 48642
send_maximum:insert seg:{48131~48642}
get ack:23043 seq:4294962913
is new ack
updatesb:23043
update timer
send data packet: 48643 ~ 49154
send_maximum:insert seg:{48643~49154}
send data packet: 49155 ~ 49666
send_maximum:insert seg:{49155~49666}
get ack:23555 seq:4294962913
is new ack
updatesb:23555
update timer
send data packet: 49667 ~ 50178
send_maximum:insert seg:{49667~50178}
send data packet: 50179 ~ 50690
send_maximum:insert seg:{50179~50690}
get ack:24067 seq:4294962913
is new ack
updatesb:24067
update timer
send data packet: 50691 ~ 51202
send_maximum:insert seg:{50691~51202}
send data packet: 51203 ~ 51714
send_maximum:insert seg:{51203~51714}
get ack:24579 seq:4294962913
is new ack
updatesb:24579
update timer
send data packet: 51715 ~ 52226
send_maximum:insert seg:{51715~52226}
send data packet: 52227 ~ 52738
send_maximum:insert seg:{52227~52738}
get ack:25091 seq:4294962913
is new ack
updatesb:25091
update timer
send data packet: 52739 ~ 53250
send_maximum:insert seg:{52739~53250}
send data packet: 53251 ~ 53762
send_maximum:insert seg:{53251~53762}
get ack:25603 seq:4294962913
is new ack
updatesb:25603
update timer
send data packet: 53763 ~ 54274
send_maximum:insert seg:{53763~54274}
send data packet: 54275 ~ 54786
send_maximum:insert seg:{54275~54786}
get ack:26115 seq:4294962913
is new ack
updatesb:26115
update timer
send data packet: 54787 ~ 55298
send_maximum:insert seg:{54787~55298}
send data packet: 55299 ~ 55810
send_maximum:insert seg:{55299~55810}
get ack:26627 seq:4294962913
is new ack
updatesb:26627
update timer
send data packet: 55811 ~ 56322
send_maximum:insert seg:{55811~56322}
send data packet: 56323 ~ 56834
send_maximum:insert seg:{56323~56834}
get ack:27139 seq:4294962913
is new ack
updatesb:27139
update timer
send data packet: 56835 ~ 57346
send_maximum:insert seg:{56835~57346}
send data packet: 57347 ~ 57858
send_maximum:insert seg:{57347~57858}
get ack:27651 seq:4294962913
is new ack
updatesb:27651
update timer
send data packet: 57859 ~ 58370
send_maximum:insert seg:{57859~58370}
send data packet: 58371 ~ 58882
send_maximum:insert seg:{58371~58882}
get ack:28163 seq:4294962913
is new ack
updatesb:28163
update timer
send data packet: 58883 ~ 59394
send_maximum:insert seg:{58883~59394}
send data packet: 59395 ~ 59906
send_maximum:insert seg:{59395~59906}
get ack:28675 seq:4294962913
is new ack
updatesb:28675
update timer
send data packet: 59907 ~ 60418
send_maximum:insert seg:{59907~60418}
send data packet: 60419 ~ 60930
send_maximum:insert seg:{60419~60930}
get ack:29187 seq:4294962913
is new ack
updatesb:29187
update timer
send data packet: 60931 ~ 61442
send_maximum:insert seg:{60931~61442}
send data packet: 61443 ~ 61954
send_maximum:insert seg:{61443~61954}
get ack:29699 seq:4294962913
is new ack
updatesb:29699
update timer
send data packet: 61955 ~ 62466
send_maximum:insert seg:{61955~62466}
send data packet: 62467 ~ 62978
send_maximum:insert seg:{62467~62978}
get ack:30211 seq:4294962913
is new ack
updatesb:30211
update timer
send data packet: 62979 ~ 63490
send_maximum:insert seg:{62979~63490}
send data packet: 63491 ~ 64002
send_maximum:insert seg:{63491~64002}
get ack:30723 seq:4294962913
is new ack
updatesb:30723
update timer
send data packet: 64003 ~ 64514
send_maximum:insert seg:{64003~64514}
send data packet: 64515 ~ 65026
send_maximum:insert seg:{64515~65026}
get ack:31235 seq:4294962913
is new ack
updatesb:31235
update timer
send data packet: 65027 ~ 65538
send_maximum:insert seg:{65027~65538}
send data packet: 65539 ~ 66050
send_maximum:insert seg:{65539~66050}
get ack:31747 seq:4294962913
is new ack
updatesb:31747
update timer
send data packet: 66051 ~ 66562
send_maximum:insert seg:{66051~66562}
send data packet: 66563 ~ 67074
send_maximum:insert seg:{66563~67074}
get ack:32259 seq:4294962913
is new ack
updatesb:32259
update timer
send data packet: 67075 ~ 67586
send_maximum:insert seg:{67075~67586}
send data packet: 67587 ~ 68098
send_maximum:insert seg:{67587~68098}
get ack:32771 seq:4294962913
is new ack
updatesb:32771
update timer
send data packet: 68099 ~ 68610
send_maximum:insert seg:{68099~68610}
send data packet: 68611 ~ 69122
send_maximum:insert seg:{68611~69122}
get ack:33283 seq:4294962913
is new ack
updatesb:33283
update timer
send data packet: 69123 ~ 69634
send_maximum:insert seg:{69123~69634}
send data packet: 69635 ~ 70146
send_maximum:insert seg:{69635~70146}
get ack:33795 seq:4294962913
is new ack
updatesb:33795
update timer
send data packet: 70147 ~ 70658
send_maximum:insert seg:{70147~70658}
send data packet: 70659 ~ 71170
send_maximum:insert seg:{70659~71170}
get ack:34307 seq:4294962913
is new ack
updatesb:34307
update timer
send data packet: 71171 ~ 71682
send_maximum:insert seg:{71171~71682}
send data packet: 71683 ~ 72194
send_maximum:insert seg:{71683~72194}
get ack:34819 seq:4294962913
is new ack
updatesb:34819
update timer
send data packet: 72195 ~ 72706
send_maximum:insert seg:{72195~72706}
send data packet: 72707 ~ 73218
send_maximum:insert seg:{72707~73218}
get ack:35331 seq:4294962913
is new ack
updatesb:35331
update timer
send data packet: 73219 ~ 73730
send_maximum:insert seg:{73219~73730}
send data packet: 73731 ~ 74242
send_maximum:insert seg:{73731~74242}
get ack:35843 seq:4294962913
is new ack
updatesb:35843
update timer
send data packet: 74243 ~ 74754
send_maximum:insert seg:{74243~74754}
send data packet: 74755 ~ 75266
send_maximum:insert seg:{74755~75266}
get ack:36355 seq:4294962913
is new ack
updatesb:36355
update timer
send data packet: 75267 ~ 75778
send_maximum:insert seg:{75267~75778}
send data packet: 75779 ~ 76290
send_maximum:insert seg:{75779~76290}
get ack:36867 seq:4294962913
is new ack
updatesb:36867
update timer
send data packet: 76291 ~ 76802
send_maximum:insert seg:{76291~76802}
send data packet: 76803 ~ 77314
send_maximum:insert seg:{76803~77314}
get ack:37379 seq:4294962913
is new ack
updatesb:37379
update timer
send data packet: 77315 ~ 77826
send_maximum:insert seg:{77315~77826}
send data packet: 77827 ~ 78338
send_maximum:insert seg:{77827~78338}
get ack:37891 seq:4294962913
is new ack
updatesb:37891
update timer
send data packet: 78339 ~ 78850
send_maximum:insert seg:{78339~78850}
send data packet: 78851 ~ 79362
send_maximum:insert seg:{78851~79362}
get ack:38403 seq:4294962913
is new ack
updatesb:38403
update timer
send data packet: 79363 ~ 79874
send_maximum:insert seg:{79363~79874}
send data packet: 79875 ~ 80386
send_maximum:insert seg:{79875~80386}
get ack:38915 seq:4294962913
is new ack
updatesb:38915
update timer
send data packet: 80387 ~ 80898
send_maximum:insert seg:{80387~80898}
send data packet: 80899 ~ 81410
send_maximum:insert seg:{80899~81410}
get ack:39427 seq:4294962913
is new ack
updatesb:39427
update timer
send data packet: 81411 ~ 81922
send_maximum:insert seg:{81411~81922}
send data packet: 81923 ~ 82434
send_maximum:insert seg:{81923~82434}
get ack:39939 seq:4294962913
is new ack
updatesb:39939
update timer
send data packet: 82435 ~ 82946
send_maximum:insert seg:{82435~82946}
send data packet: 82947 ~ 83458
send_maximum:insert seg:{82947~83458}
get ack:40451 seq:4294962913
is new ack
updatesb:40451
update timer
send data packet: 83459 ~ 83970
send_maximum:insert seg:{83459~83970}
send data packet: 83971 ~ 84482
send_maximum:insert seg:{83971~84482}
get ack:40963 seq:4294962913
is new ack
updatesb:40963
update timer
send data packet: 84483 ~ 84994
send_maximum:insert seg:{84483~84994}
send data packet: 84995 ~ 85506
send_maximum:insert seg:{84995~85506}
get ack:41475 seq:4294962913
is new ack
updatesb:41475
update timer
send data packet: 85507 ~ 86018
send_maximum:insert seg:{85507~86018}
send data packet: 86019 ~ 86530
send_maximum:insert seg:{86019~86530}
get ack:41987 seq:4294962913
is new ack
updatesb:41987
update timer
send data packet: 86531 ~ 87042
send_maximum:insert seg:{86531~87042}
send data packet: 87043 ~ 87554
send_maximum:insert seg:{87043~87554}
get ack:42499 seq:4294962913
is new ack
updatesb:42499
update timer
send data packet: 87555 ~ 88066
send_maximum:insert seg:{87555~88066}
send data packet: 88067 ~ 88578
send_maximum:insert seg:{88067~88578}
get ack:43011 seq:4294962913
is new ack
updatesb:43011
update timer
send data packet: 88579 ~ 89090
send_maximum:insert seg:{88579~89090}
send data packet: 89091 ~ 89602
send_maximum:insert seg:{89091~89602}
get ack:43523 seq:4294962913
is new ack
updatesb:43523
update timer
send data packet: 89603 ~ 90114
send_maximum:insert seg:{89603~90114}
send data packet: 90115 ~ 90626
send_maximum:insert seg:{90115~90626}
get ack:44035 seq:4294962913
is new ack
updatesb:44035
update timer
send data packet: 90627 ~ 91138
send_maximum:insert seg:{90627~91138}
send data packet: 91139 ~ 91650
send_maximum:insert seg:{91139~91650}
get ack:44547 seq:4294962913
is new ack
updatesb:44547
update timer
send data packet: 91651 ~ 92162
send_maximum:insert seg:{91651~92162}
send data packet: 92163 ~ 92674
send_maximum:insert seg:{92163~92674}
get ack:45059 seq:4294962913
is new ack
updatesb:45059
update timer
send data packet: 92675 ~ 93186
send_maximum:insert seg:{92675~93186}
send data packet: 93187 ~ 93698
send_maximum:insert seg:{93187~93698}
get ack:45571 seq:4294962913
is new ack
updatesb:45571
update timer
send data packet: 93699 ~ 94210
send_maximum:insert seg:{93699~94210}
send data packet: 94211 ~ 94722
send_maximum:insert seg:{94211~94722}
get ack:46083 seq:4294962913
is new ack
updatesb:46083
update timer
send data packet: 94723 ~ 95234
send_maximum:insert seg:{94723~95234}
send data packet: 95235 ~ 95746
send_maximum:insert seg:{95235~95746}
get ack:46595 seq:4294962913
is new ack
updatesb:46595
update timer
send data packet: 95747 ~ 96258
send_maximum:insert seg:{95747~96258}
send data packet: 96259 ~ 96770
send_maximum:insert seg:{96259~96770}
get ack:47107 seq:4294962913
is new ack
updatesb:47107
update timer
send data packet: 96771 ~ 97282
send_maximum:insert seg:{96771~97282}
send data packet: 97283 ~ 97794
send_maximum:insert seg:{97283~97794}
get ack:47619 seq:4294962913
is new ack
updatesb:47619
update timer
send data packet: 97795 ~ 98306
send_maximum:insert seg:{97795~98306}
send data packet: 98307 ~ 98818
send_maximum:insert seg:{98307~98818}
get ack:48131 seq:4294962913
is new ack
updatesb:48131
update timer
send data packet: 98819 ~ 99330
send_maximum:insert seg:{98819~99330}
get ack:48643 seq:4294962913
is new ack
updatesb:48643
update timer
send data packet: 99331 ~ 99842
send_maximum:insert seg:{99331~99842}
get ack:49155 seq:4294962913
is new ack
updatesb:49155
update timer
send data packet: 99843 ~ 100354
send_maximum:insert seg:{99843~100354}
get ack:49667 seq:4294962913
is new ack
updatesb:49667
update timer
send data packet: 100355 ~ 100866
send_maximum:insert seg:{100355~100866}
get ack:50179 seq:4294962913
is new ack
updatesb:50179
update timer
send data packet: 100867 ~ 101378
send_maximum:insert seg:{100867~101378}
get ack:50691 seq:4294962913
is new ack
updatesb:50691
update timer
send data packet: 101379 ~ 101890
send_maximum:insert seg:{101379~101890}
get ack:51203 seq:4294962913
is new ack
updatesb:51203
update timer
send data packet: 101891 ~ 102402
send_maximum:insert seg:{101891~102402}
get ack:51715 seq:4294962913
is new ack
updatesb:51715
update timer
send data packet: 102403 ~ 102914
send_maximum:insert seg:{102403~102914}
get ack:52227 seq:4294962913
is new ack
updatesb:52227
update timer
send data packet: 102915 ~ 103426
send_maximum:insert seg:{102915~103426}
get ack:52739 seq:4294962913
is new ack
updatesb:52739
update timer
send data packet: 103427 ~ 103938
send_maximum:insert seg:{103427~103938}
get ack:53251 seq:4294962913
is new ack
updatesb:53251
update timer
send data packet: 103939 ~ 104450
send_maximum:insert seg:{103939~104450}
get ack:53763 seq:4294962913
is new ack
updatesb:53763
update timer
send data packet: 104451 ~ 104962
send_maximum:insert seg:{104451~104962}
get ack:54275 seq:4294962913
is new ack
updatesb:54275
update timer
send data packet: 104963 ~ 105474
send_maximum:insert seg:{104963~105474}
get ack:54787 seq:4294962913
is new ack
updatesb:54787
update timer
send data packet: 105475 ~ 105986
send_maximum:insert seg:{105475~105986}
get ack:55299 seq:4294962913
is new ack
updatesb:55299
update timer
send data packet: 105987 ~ 106498
send_maximum:insert seg:{105987~106498}
get ack:55811 seq:4294962913
is new ack
updatesb:55811
update timer
send data packet: 106499 ~ 107010
send_maximum:insert seg:{106499~107010}
get ack:56323 seq:4294962913
is new ack
updatesb:56323
update timer
send data packet: 107011 ~ 107522
send_maximum:insert seg:{107011~107522}
get ack:56835 seq:4294962913
is new ack
updatesb:56835
update timer
send data packet: 107523 ~ 108034
send_maximum:insert seg:{107523~108034}
get ack:57347 seq:4294962913
is new ack
updatesb:57347
update timer
send data packet: 108035 ~ 108546
send_maximum:insert seg:{108035~108546}
get ack:57859 seq:4294962913
is new ack
updatesb:57859
update timer
send data packet: 108547 ~ 109058
send_maximum:insert seg:{108547~109058}
get ack:58371 seq:4294962913
is new ack
updatesb:58371
update timer
send data packet: 109059 ~ 109570
send_maximum:insert seg:{109059~109570}
get ack:58883 seq:4294962913
is new ack
updatesb:58883
update timer
send data packet: 109571 ~ 110082
send_maximum:insert seg:{109571~110082}
get ack:59395 seq:4294962913
is new ack
updatesb:59395
update timer
send data packet: 110083 ~ 110594
send_maximum:insert seg:{110083~110594}
get ack:59907 seq:4294962913
is new ack
updatesb:59907
update timer
send data packet: 110595 ~ 111106
send_maximum:insert seg:{110595~111106}
get ack:60419 seq:4294962913
is new ack
updatesb:60419
update timer
send data packet: 111107 ~ 111618
send_maximum:insert seg:{111107~111618}
get ack:60931 seq:4294962913
is new ack
updatesb:60931
update timer
send data packet: 111619 ~ 112130
send_maximum:insert seg:{111619~112130}
get ack:61443 seq:4294962913
is new ack
updatesb:61443
update timer
send data packet: 112131 ~ 112642
send_maximum:insert seg:{112131~112642}
get ack:61955 seq:4294962913
is new ack
updatesb:61955
update timer
send data packet: 112643 ~ 113154
send_maximum:insert seg:{112643~113154}
get ack:62467 seq:4294962913
is new ack
updatesb:62467
update timer
send data packet: 113155 ~ 113666
send_maximum:insert seg:{113155~113666}
get ack:62979 seq:4294962913
is new ack
updatesb:62979
update timer
send data packet: 113667 ~ 114178
send_maximum:insert seg:{113667~114178}
get ack:63491 seq:4294962913
is new ack
updatesb:63491
update timer
send data packet: 114179 ~ 114690
send_maximum:insert seg:{114179~114690}
get ack:64003 seq:4294962913
is new ack
updatesb:64003
update timer
send data packet: 114691 ~ 115202
send_maximum:insert seg:{114691~115202}
get ack:64515 seq:4294962913
is new ack
updatesb:64515
update timer
send data packet: 115203 ~ 115714
send_maximum:insert seg:{115203~115714}
get ack:65027 seq:4294962913
is new ack
updatesb:65027
update timer
send data packet: 115715 ~ 116226
send_maximum:insert seg:{115715~116226}
get ack:65539 seq:4294962913
is new ack
updatesb:65539
update timer
send data packet: 116227 ~ 116738
send_maximum:insert seg:{116227~116738}
get ack:66051 seq:4294962913
is new ack
updatesb:66051
update timer
send data packet: 116739 ~ 117250
send_maximum:insert seg:{116739~117250}
get ack:66563 seq:4294962913
is new ack
updatesb:66563
update timer
send data packet: 117251 ~ 117762
send_maximum:insert seg:{117251~117762}
get ack:67075 seq:4294962913
is new ack
updatesb:67075
update timer
send data packet: 117763 ~ 118274
send_maximum:insert seg:{117763~118274}
get ack:67587 seq:4294962913
is new ack
updatesb:67587
update timer
send data packet: 118275 ~ 118786
send_maximum:insert seg:{118275~118786}
get ack:68099 seq:4294962913
is new ack
updatesb:68099
update timer
send data packet: 118787 ~ 119298
send_maximum:insert seg:{118787~119298}
get ack:68611 seq:4294962913
is new ack
updatesb:68611
update timer
send data packet: 119299 ~ 119810
send_maximum:insert seg:{119299~119810}
get ack:69123 seq:4294962913
is new ack
updatesb:69123
update timer
send data packet: 119811 ~ 120322
send_maximum:insert seg:{119811~120322}
get ack:69635 seq:4294962913
is new ack
updatesb:69635
update timer
send data packet: 120323 ~ 120834
send_maximum:insert seg:{120323~120834}
get ack:70147 seq:4294962913
is new ack
updatesb:70147
update timer
send data packet: 120835 ~ 121346
send_maximum:insert seg:{120835~121346}
get ack:70659 seq:4294962913
is new ack
updatesb:70659
update timer
send data packet: 121347 ~ 121858
send_maximum:insert seg:{121347~121858}
get ack:71171 seq:4294962913
is new ack
updatesb:71171
update timer
send data packet: 121859 ~ 122370
send_maximum:insert seg:{121859~122370}
get ack:71683 seq:4294962913
is new ack
updatesb:71683
update timer
send data packet: 122371 ~ 122882
send_maximum:insert seg:{122371~122882}
get ack:72195 seq:4294962913
is new ack
updatesb:72195
update timer
send data packet: 122883 ~ 123394
send_maximum:insert seg:{122883~123394}
get ack:72707 seq:4294962913
is new ack
updatesb:72707
update timer
send data packet: 123395 ~ 123906
send_maximum:insert seg:{123395~123906}
get ack:73219 seq:4294962913
is new ack
updatesb:73219
update timer
send data packet: 123907 ~ 124418
send_maximum:insert seg:{123907~124418}
get ack:73731 seq:4294962913
is new ack
updatesb:73731
update timer
send data packet: 124419 ~ 124930
send_maximum:insert seg:{124419~124930}
get ack:74243 seq:4294962913
is new ack
updatesb:74243
update timer
send data packet: 124931 ~ 125442
send_maximum:insert seg:{124931~125442}
get ack:74755 seq:4294962913
is new ack
updatesb:74755
update timer
send data packet: 125443 ~ 125954
send_maximum:insert seg:{125443~125954}
get ack:75267 seq:4294962913
is new ack
updatesb:75267
update timer
send data packet: 125955 ~ 126466
send_maximum:insert seg:{125955~126466}
get ack:75779 seq:4294962913
is new ack
updatesb:75779
update timer
send data packet: 126467 ~ 126978
send_maximum:insert seg:{126467~126978}
get ack:76291 seq:4294962913
is new ack
updatesb:76291
update timer
send data packet: 126979 ~ 127490
send_maximum:insert seg:{126979~127490}
get ack:76803 seq:4294962913
is new ack
updatesb:76803
update timer
send data packet: 127491 ~ 128002
send_maximum:insert seg:{127491~128002}
get ack:77315 seq:4294962913
is new ack
updatesb:77315
update timer
send_maximum: send fin
send FIN#:128003
get ack:77827 seq:4294962913
is new ack
updatesb:77827
update timer
get ack:78339 seq:4294962913
is new ack
updatesb:78339
update timer
get ack:78851 seq:4294962913
is new ack
updatesb:78851
update timer
get ack:79363 seq:4294962913
is new ack
updatesb:79363
update timer
get ack:79875 seq:4294962913
is new ack
updatesb:79875
update timer
get ack:80387 seq:4294962913
is new ack
updatesb:80387
update timer
get ack:80899 seq:4294962913
is new ack
updatesb:80899
update timer
get ack:81411 seq:4294962913
is new ack
updatesb:81411
update timer
get ack:81923 seq:4294962913
is new ack
updatesb:81923
update timer
get ack:82435 seq:4294962913
is new ack
updatesb:82435
update timer
get ack:82947 seq:4294962913
is new ack
updatesb:82947
update timer
get ack:83459 seq:4294962913
is new ack
updatesb:83459
update timer
get ack:83971 seq:4294962913
is new ack
updatesb:83971
update timer
get ack:84483 seq:4294962913
is new ack
updatesb:84483
update timer
get ack:84995 seq:4294962913
is new ack
updatesb:84995
update timer
get ack:85507 seq:4294962913
is new ack
updatesb:85507
update timer
get ack:86019 seq:4294962913
is new ack
updatesb:86019
update timer
get ack:86531 seq:4294962913
is new ack
updatesb:86531
update timer
get ack:87043 seq:4294962913
is new ack
updatesb:87043
update timer
get ack:87555 seq:4294962913
is new ack
updatesb:87555
update timer
get ack:88067 seq:4294962913
is new ack
updatesb:88067
update timer
get ack:88579 seq:4294962913
is new ack
updatesb:88579
update timer
get ack:89091 seq:4294962913
is new ack
updatesb:89091
update timer
get ack:89603 seq:4294962913
is new ack
updatesb:89603
update timer
get ack:90115 seq:4294962913
is new ack
updatesb:90115
update timer
get ack:90627 seq:4294962913
is new ack
updatesb:90627
update timer
get ack:91139 seq:4294962913
is new ack
updatesb:91139
update timer
get ack:91651 seq:4294962913
is new ack
updatesb:91651
update timer
get ack:92163 seq:4294962913
is new ack
updatesb:92163
update timer
get ack:92675 seq:4294962913
is new ack
updatesb:92675
update timer
get ack:93187 seq:4294962913
is new ack
updatesb:93187
update timer
get ack:93699 seq:4294962913
is new ack
updatesb:93699
update timer
get ack:94211 seq:4294962913
is new ack
updatesb:94211
update timer
get ack:94723 seq:4294962913
is new ack
updatesb:94723
update timer
get ack:95235 seq:4294962913
is new ack
updatesb:95235
update timer
get ack:95747 seq:4294962913
is new ack
updatesb:95747
update timer
get ack:96259 seq:4294962913
is new ack
updatesb:96259
update timer
get ack:96771 seq:4294962913
is new ack
updatesb:96771
update timer
get ack:97283 seq:4294962913
is new ack
updatesb:97283
update timer
get ack:97795 seq:4294962913
is new ack
updatesb:97795
update timer
get ack:98307 seq:4294962913
is new ack
updatesb:98307
update timer
get ack:98819 seq:4294962913
is new ack
updatesb:98819
update timer
get ack:99331 seq:4294962913
is new ack
updatesb:99331
update timer
get ack:99843 seq:4294962913
is new ack
updatesb:99843
update timer
get ack:100355 seq:4294962913
is new ack
updatesb:100355
update timer
get ack:100867 seq:4294962913
is new ack
updatesb:100867
update timer
get ack:101379 seq:4294962913
is new ack
updatesb:101379
update timer
get ack:101891 seq:4294962913
is new ack
updatesb:101891
update timer
get ack:102403 seq:4294962913
is new ack
updatesb:102403
update timer
get ack:102915 seq:4294962913
is new ack
updatesb:102915
update timer
get ack:103427 seq:4294962913
is new ack
updatesb:103427
update timer
get ack:103939 seq:4294962913
is new ack
updatesb:103939
update timer
get ack:104451 seq:4294962913
is new ack
updatesb:104451
update timer
get ack:104963 seq:4294962913
is new ack
updatesb:104963
update timer
get ack:105475 seq:4294962913
is new ack
updatesb:105475
update timer
get ack:105987 seq:4294962913
is new ack
updatesb:105987
update timer
get ack:106499 seq:4294962913
is new ack
updatesb:106499
update timer
get ack:107011 seq:4294962913
is new ack
updatesb:107011
update timer
get ack:107523 seq:4294962913
is new ack
updatesb:107523
update timer
get ack:108035 seq:4294962913
is new ack
updatesb:108035
update timer
get ack:108547 seq:4294962913
is new ack
updatesb:108547
update timer
get ack:109059 seq:4294962913
is new ack
updatesb:109059
update timer
get ack:109571 seq:4294962913
is new ack
updatesb:109571
update timer
get ack:110083 seq:4294962913
is new ack
updatesb:110083
update timer
get ack:110595 seq:4294962913
is new ack
updatesb:110595
update timer
get ack:111107 seq:4294962913
is new ack
updatesb:111107
update timer
get ack:111619 seq:4294962913
is new ack
updatesb:111619
update timer
get ack:112131 seq:4294962913
is new ack
updatesb:112131
update timer
get ack:112643 seq:4294962913
is new ack
updatesb:112643
update timer
get ack:113155 seq:4294962913
is new ack
updatesb:113155
update timer
get ack:113667 seq:4294962913
is new ack
updatesb:113667
update timer
get ack:114179 seq:4294962913
is new ack
updatesb:114179
update timer
get ack:114691 seq:4294962913
is new ack
updatesb:114691
update timer
get ack:115203 seq:4294962913
is new ack
updatesb:115203
update timer
get ack:115715 seq:4294962913
is new ack
updatesb:115715
update timer
get ack:116227 seq:4294962913
is new ack
updatesb:116227
update timer
get ack:116739 seq:4294962913
is new ack
updatesb:116739
update timer
get ack:117251 seq:4294962913
is new ack
updatesb:117251
update timer
get ack:117763 seq:4294962913
is new ack
updatesb:117763
update timer
get ack:118275 seq:4294962913
is new ack
updatesb:118275
update timer
get ack:118787 seq:4294962913
is new ack
updatesb:118787
update timer
get ack:119299 seq:4294962913
is new ack
updatesb:119299
update timer
get ack:119811 seq:4294962913
is new ack
updatesb:119811
update timer
get ack:120323 seq:4294962913
is new ack
updatesb:120323
update timer
get ack:120835 seq:4294962913
is new ack
updatesb:120835
update timer
get ack:121347 seq:4294962913
is new ack
updatesb:121347
update timer
get ack:121859 seq:4294962913
is new ack
updatesb:121859
update timer
get ack:122371 seq:4294962913
is new ack
updatesb:122371
update timer
get ack:122883 seq:4294962913
is new ack
updatesb:122883
update timer
get ack:123395 seq:4294962913
is new ack
updatesb:123395
update timer
get ack:123907 seq:4294962913
is new ack
updatesb:123907
update timer
get ack:124419 seq:4294962913
is new ack
updatesb:124419
update timer
get ack:124931 seq:4294962913
is new ack
updatesb:124931
update timer
get ack:125443 seq:4294962913
is new ack
updatesb:125443
update timer
get ack:125955 seq:4294962913
is new ack
updatesb:125955
update timer
get ack:126467 seq:4294962913
is new ack
updatesb:126467
update timer
get ack:126979 seq:4294962913
is new ack
updatesb:126979
update timer
get ack:127491 seq:4294962913
is new ack
updatesb:127491
update timer
get ack:128003 seq:4294962913
is new ack
updatesb:128003
update timer
get ack:128004 seq:4294962914
is new ack
updatesb:128004
stop timer
[       OK ] TestEnv_Any.TestTransfer_Connect_Send_Symmetric (48 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Send_EOF
get ack:4294964227 seq:4294966409
addTimer!send data packet: 4294964227 ~ 4294964738
send_maximum:insert seg:{4294964227~4294964738}
get ack:4294964739 seq:4294966410
is new ack
updatesb:4294964739
stop timer
addTimer!send data packet: 4294964739 ~ 4294965250
send_maximum:insert seg:{4294964739~4294965250}
send data packet: 4294965251 ~ 4294965762
send_maximum:insert seg:{4294965251~4294965762}
get ack:4294965251 seq:4294966410
is new ack
updatesb:4294965251
update timer
send data packet: 4294965763 ~ 4294966274
send_maximum:insert seg:{4294965763~4294966274}
send data packet: 4294966275 ~ 4294966786
send_maximum:insert seg:{4294966275~4294966786}
get ack:4294965763 seq:4294966410
is new ack
updatesb:4294965763
update timer
send data packet: 4294966787 ~ 2
send_maximum:insert seg:{4294966787~2}
send data packet: 3 ~ 514
send_maximum:insert seg:{3~514}
get ack:4294966275 seq:4294966410
is new ack
updatesb:4294966275
update timer
send data packet: 515 ~ 1026
send_maximum:insert seg:{515~1026}
send data packet: 1027 ~ 1538
send_maximum:insert seg:{1027~1538}
get ack:4294966787 seq:4294966410
is new ack
updatesb:4294966787
update timer
send data packet: 1539 ~ 2050
send_maximum:insert seg:{1539~2050}
send data packet: 2051 ~ 2562
send_maximum:insert seg:{2051~2562}
get ack:3 seq:4294966410
is new ack
updatesb:3
update timer
send data packet: 2563 ~ 3074
send_maximum:insert seg:{2563~3074}
send data packet: 3075 ~ 3586
send_maximum:insert seg:{3075~3586}
get ack:515 seq:4294966410
is new ack
updatesb:515
update timer
send data packet: 3587 ~ 4098
send_maximum:insert seg:{3587~4098}
send data packet: 4099 ~ 4610
send_maximum:insert seg:{4099~4610}
get ack:1027 seq:4294966410
is new ack
updatesb:1027
update timer
send data packet: 4611 ~ 5122
send_maximum:insert seg:{4611~5122}
send data packet: 5123 ~ 5634
send_maximum:insert seg:{5123~5634}
get ack:1539 seq:4294966410
is new ack
updatesb:1539
update timer
send data packet: 5635 ~ 6146
send_maximum:insert seg:{5635~6146}
send data packet: 6147 ~ 6658
send_maximum:insert seg:{6147~6658}
get ack:2051 seq:4294966410
is new ack
updatesb:2051
update timer
send data packet: 6659 ~ 7170
send_maximum:insert seg:{6659~7170}
send data packet: 7171 ~ 7682
send_maximum:insert seg:{7171~7682}
get ack:2563 seq:4294966410
is new ack
updatesb:2563
update timer
send data packet: 7683 ~ 8194
send_maximum:insert seg:{7683~8194}
send data packet: 8195 ~ 8706
send_maximum:insert seg:{8195~8706}
get ack:3075 seq:4294966410
is new ack
updatesb:3075
update timer
send data packet: 8707 ~ 9218
send_maximum:insert seg:{8707~9218}
send data packet: 9219 ~ 9730
send_maximum:insert seg:{9219~9730}
get ack:3587 seq:4294966410
is new ack
updatesb:3587
update timer
send data packet: 9731 ~ 10242
send_maximum:insert seg:{9731~10242}
send data packet: 10243 ~ 10754
send_maximum:insert seg:{10243~10754}
get ack:4099 seq:4294966410
is new ack
updatesb:4099
update timer
send data packet: 10755 ~ 11266
send_maximum:insert seg:{10755~11266}
send data packet: 11267 ~ 11778
send_maximum:insert seg:{11267~11778}
get ack:4611 seq:4294966410
is new ack
updatesb:4611
update timer
send data packet: 11779 ~ 12290
send_maximum:insert seg:{11779~12290}
send data packet: 12291 ~ 12802
send_maximum:insert seg:{12291~12802}
get ack:5123 seq:4294966410
is new ack
updatesb:5123
update timer
send data packet: 12803 ~ 13314
send_maximum:insert seg:{12803~13314}
send data packet: 13315 ~ 13826
send_maximum:insert seg:{13315~13826}
get ack:5635 seq:4294966410
is new ack
updatesb:5635
update timer
send data packet: 13827 ~ 14338
send_maximum:insert seg:{13827~14338}
send data packet: 14339 ~ 14850
send_maximum:insert seg:{14339~14850}
get ack:6147 seq:4294966410
is new ack
updatesb:6147
update timer
send data packet: 14851 ~ 15362
send_maximum:insert seg:{14851~15362}
send data packet: 15363 ~ 15874
send_maximum:insert seg:{15363~15874}
get ack:6659 seq:4294966410
is new ack
updatesb:6659
update timer
send data packet: 15875 ~ 16386
send_maximum:insert seg:{15875~16386}
send data packet: 16387 ~ 16898
send_maximum:insert seg:{16387~16898}
get ack:7171 seq:4294966410
is new ack
updatesb:7171
update timer
send data packet: 16899 ~ 17410
send_maximum:insert seg:{16899~17410}
send data packet: 17411 ~ 17922
send_maximum:insert seg:{17411~17922}
get ack:7683 seq:4294966410
is new ack
updatesb:7683
update timer
send data packet: 17923 ~ 18434
send_maximum:insert seg:{17923~18434}
send data packet: 18435 ~ 18946
send_maximum:insert seg:{18435~18946}
get ack:8195 seq:4294966410
is new ack
updatesb:8195
update timer
send data packet: 18947 ~ 19458
send_maximum:insert seg:{18947~19458}
send data packet: 19459 ~ 19970
send_maximum:insert seg:{19459~19970}
get ack:8707 seq:4294966410
is new ack
updatesb:8707
update timer
send data packet: 19971 ~ 20482
send_maximum:insert seg:{19971~20482}
send data packet: 20483 ~ 20994
send_maximum:insert seg:{20483~20994}
get ack:9219 seq:4294966410
is new ack
updatesb:9219
update timer
send data packet: 20995 ~ 21506
send_maximum:insert seg:{20995~21506}
send data packet: 21507 ~ 22018
send_maximum:insert seg:{21507~22018}
get ack:9731 seq:4294966410
is new ack
updatesb:9731
update timer
send data packet: 22019 ~ 22530
send_maximum:insert seg:{22019~22530}
send data packet: 22531 ~ 23042
send_maximum:insert seg:{22531~23042}
get ack:10243 seq:4294966410
is new ack
updatesb:10243
update timer
send data packet: 23043 ~ 23554
send_maximum:insert seg:{23043~23554}
send data packet: 23555 ~ 24066
send_maximum:insert seg:{23555~24066}
get ack:10755 seq:4294966410
is new ack
updatesb:10755
update timer
send data packet: 24067 ~ 24578
send_maximum:insert seg:{24067~24578}
send data packet: 24579 ~ 25090
send_maximum:insert seg:{24579~25090}
get ack:11267 seq:4294966410
is new ack
updatesb:11267
update timer
send data packet: 25091 ~ 25602
send_maximum:insert seg:{25091~25602}
send data packet: 25603 ~ 26114
send_maximum:insert seg:{25603~26114}
get ack:11779 seq:4294966410
is new ack
updatesb:11779
update timer
send data packet: 26115 ~ 26626
send_maximum:insert seg:{26115~26626}
send data packet: 26627 ~ 27138
send_maximum:insert seg:{26627~27138}
get ack:12291 seq:4294966410
is new ack
updatesb:12291
update timer
send data packet: 27139 ~ 27650
send_maximum:insert seg:{27139~27650}
send data packet: 27651 ~ 28162
send_maximum:insert seg:{27651~28162}
get ack:12803 seq:4294966410
is new ack
updatesb:12803
update timer
send data packet: 28163 ~ 28674
send_maximum:insert seg:{28163~28674}
send data packet: 28675 ~ 29186
send_maximum:insert seg:{28675~29186}
get ack:13315 seq:4294966410
is new ack
updatesb:13315
update timer
send data packet: 29187 ~ 29698
send_maximum:insert seg:{29187~29698}
send data packet: 29699 ~ 30210
send_maximum:insert seg:{29699~30210}
get ack:13827 seq:4294966410
is new ack
updatesb:13827
update timer
send data packet: 30211 ~ 30722
send_maximum:insert seg:{30211~30722}
send data packet: 30723 ~ 31234
send_maximum:insert seg:{30723~31234}
get ack:14339 seq:4294966410
is new ack
updatesb:14339
update timer
send data packet: 31235 ~ 31746
send_maximum:insert seg:{31235~31746}
send data packet: 31747 ~ 32258
send_maximum:insert seg:{31747~32258}
get ack:14851 seq:4294966410
is new ack
updatesb:14851
update timer
send data packet: 32259 ~ 32770
send_maximum:insert seg:{32259~32770}
send data packet: 32771 ~ 33282
send_maximum:insert seg:{32771~33282}
get ack:15363 seq:4294966410
is new ack
updatesb:15363
update timer
send data packet: 33283 ~ 33794
send_maximum:insert seg:{33283~33794}
send data packet: 33795 ~ 34306
send_maximum:insert seg:{33795~34306}
get ack:15875 seq:4294966410
is new ack
updatesb:15875
update timer
send data packet: 34307 ~ 34818
send_maximum:insert seg:{34307~34818}
send data packet: 34819 ~ 35330
send_maximum:insert seg:{34819~35330}
get ack:16387 seq:4294966410
is new ack
updatesb:16387
update timer
send data packet: 35331 ~ 35842
send_maximum:insert seg:{35331~35842}
send data packet: 35843 ~ 36354
send_maximum:insert seg:{35843~36354}
get ack:16899 seq:4294966410
is new ack
updatesb:16899
update timer
send data packet: 36355 ~ 36866
send_maximum:insert seg:{36355~36866}
send data packet: 36867 ~ 37378
send_maximum:insert seg:{36867~37378}
get ack:17411 seq:4294966410
is new ack
updatesb:17411
update timer
send data packet: 37379 ~ 37890
send_maximum:insert seg:{37379~37890}
send data packet: 37891 ~ 38402
send_maximum:insert seg:{37891~38402}
get ack:17923 seq:4294966410
is new ack
updatesb:17923
update timer
send data packet: 38403 ~ 38914
send_maximum:insert seg:{38403~38914}
send data packet: 38915 ~ 39426
send_maximum:insert seg:{38915~39426}
get ack:18435 seq:4294966410
is new ack
updatesb:18435
update timer
send data packet: 39427 ~ 39938
send_maximum:insert seg:{39427~39938}
send data packet: 39939 ~ 40450
send_maximum:insert seg:{39939~40450}
get ack:18947 seq:4294966410
is new ack
updatesb:18947
update timer
send data packet: 40451 ~ 40962
send_maximum:insert seg:{40451~40962}
send data packet: 40963 ~ 41474
send_maximum:insert seg:{40963~41474}
get ack:19459 seq:4294966410
is new ack
updatesb:19459
update timer
send data packet: 41475 ~ 41986
send_maximum:insert seg:{41475~41986}
send data packet: 41987 ~ 42498
send_maximum:insert seg:{41987~42498}
get ack:19971 seq:4294966410
is new ack
updatesb:19971
update timer
send data packet: 42499 ~ 43010
send_maximum:insert seg:{42499~43010}
send data packet: 43011 ~ 43522
send_maximum:insert seg:{43011~43522}
get ack:20483 seq:4294966410
is new ack
updatesb:20483
update timer
send data packet: 43523 ~ 44034
send_maximum:insert seg:{43523~44034}
send data packet: 44035 ~ 44546
send_maximum:insert seg:{44035~44546}
get ack:20995 seq:4294966410
is new ack
updatesb:20995
update timer
send data packet: 44547 ~ 45058
send_maximum:insert seg:{44547~45058}
send data packet: 45059 ~ 45570
send_maximum:insert seg:{45059~45570}
get ack:21507 seq:4294966410
is new ack
updatesb:21507
update timer
send data packet: 45571 ~ 46082
send_maximum:insert seg:{45571~46082}
send data packet: 46083 ~ 46594
send_maximum:insert seg:{46083~46594}
get ack:22019 seq:4294966410
is new ack
updatesb:22019
update timer
send data packet: 46595 ~ 47106
send_maximum:insert seg:{46595~47106}
send data packet: 47107 ~ 47618
send_maximum:insert seg:{47107~47618}
get ack:22531 seq:4294966410
is new ack
updatesb:22531
update timer
send data packet: 47619 ~ 48130
send_maximum:insert seg:{47619~48130}
send data packet: 48131 ~ 48642
send_maximum:insert seg:{48131~48642}
get ack:23043 seq:4294966410
is new ack
updatesb:23043
update timer
send data packet: 48643 ~ 49154
send_maximum:insert seg:{48643~49154}
send data packet: 49155 ~ 49666
send_maximum:insert seg:{49155~49666}
get ack:23555 seq:4294966410
is new ack
updatesb:23555
update timer
send data packet: 49667 ~ 50178
send_maximum:insert seg:{49667~50178}
send data packet: 50179 ~ 50690
send_maximum:insert seg:{50179~50690}
get ack:24067 seq:4294966410
is new ack
updatesb:24067
update timer
send data packet: 50691 ~ 51202
send_maximum:insert seg:{50691~51202}
send data packet: 51203 ~ 51714
send_maximum:insert seg:{51203~51714}
get ack:24579 seq:4294966410
is new ack
updatesb:24579
update timer
send data packet: 51715 ~ 52226
send_maximum:insert seg:{51715~52226}
send data packet: 52227 ~ 52738
send_maximum:insert seg:{52227~52738}
get ack:25091 seq:4294966410
is new ack
updatesb:25091
update timer
send data packet: 52739 ~ 53250
send_maximum:insert seg:{52739~53250}
send data packet: 53251 ~ 53762
send_maximum:insert seg:{53251~53762}
get ack:25603 seq:4294966410
is new ack
updatesb:25603
update timer
send data packet: 53763 ~ 54274
send_maximum:insert seg:{53763~54274}
send data packet: 54275 ~ 54786
send_maximum:insert seg:{54275~54786}
get ack:26115 seq:4294966410
is new ack
updatesb:26115
update timer
send data packet: 54787 ~ 55298
send_maximum:insert seg:{54787~55298}
send data packet: 55299 ~ 55810
send_maximum:insert seg:{55299~55810}
get ack:26627 seq:4294966410
is new ack
updatesb:26627
update timer
send data packet: 55811 ~ 56322
send_maximum:insert seg:{55811~56322}
send data packet: 56323 ~ 56834
send_maximum:insert seg:{56323~56834}
get ack:27139 seq:4294966410
is new ack
updatesb:27139
update timer
send data packet: 56835 ~ 57346
send_maximum:insert seg:{56835~57346}
send data packet: 57347 ~ 57858
send_maximum:insert seg:{57347~57858}
get ack:27651 seq:4294966410
is new ack
updatesb:27651
update timer
send data packet: 57859 ~ 58370
send_maximum:insert seg:{57859~58370}
send data packet: 58371 ~ 58882
send_maximum:insert seg:{58371~58882}
get ack:28163 seq:4294966410
is new ack
updatesb:28163
update timer
send data packet: 58883 ~ 59394
send_maximum:insert seg:{58883~59394}
send data packet: 59395 ~ 59906
send_maximum:insert seg:{59395~59906}
get ack:28675 seq:4294966410
is new ack
updatesb:28675
update timer
send data packet: 59907 ~ 60418
send_maximum:insert seg:{59907~60418}
send data packet: 60419 ~ 60930
send_maximum:insert seg:{60419~60930}
get ack:29187 seq:4294966410
is new ack
updatesb:29187
update timer
send data packet: 60931 ~ 61442
send_maximum:insert seg:{60931~61442}
send data packet: 61443 ~ 61954
send_maximum:insert seg:{61443~61954}
get ack:29699 seq:4294966410
is new ack
updatesb:29699
update timer
send data packet: 61955 ~ 62466
send_maximum:insert seg:{61955~62466}
send data packet: 62467 ~ 62978
send_maximum:insert seg:{62467~62978}
get ack:30211 seq:4294966410
is new ack
updatesb:30211
update timer
send data packet: 62979 ~ 63490
send_maximum:insert seg:{62979~63490}
send data packet: 63491 ~ 64002
send_maximum:insert seg:{63491~64002}
get ack:30723 seq:4294966410
is new ack
updatesb:30723
update timer
send data packet: 64003 ~ 64514
send_maximum:insert seg:{64003~64514}
send data packet: 64515 ~ 65026
send_maximum:insert seg:{64515~65026}
get ack:31235 seq:4294966410
is new ack
updatesb:31235
update timer
send data packet: 65027 ~ 65538
send_maximum:insert seg:{65027~65538}
send data packet: 65539 ~ 66050
send_maximum:insert seg:{65539~66050}
get ack:31747 seq:4294966410
is new ack
updatesb:31747
update timer
send data packet: 66051 ~ 66562
send_maximum:insert seg:{66051~66562}
send data packet: 66563 ~ 67074
send_maximum:insert seg:{66563~67074}
get ack:32259 seq:4294966410
is new ack
updatesb:32259
update timer
send data packet: 67075 ~ 67586
send_maximum:insert seg:{67075~67586}
send data packet: 67587 ~ 68098
send_maximum:insert seg:{67587~68098}
get ack:32771 seq:4294966410
is new ack
updatesb:32771
update timer
send data packet: 68099 ~ 68610
send_maximum:insert seg:{68099~68610}
send data packet: 68611 ~ 69122
send_maximum:insert seg:{68611~69122}
get ack:33283 seq:4294966410
is new ack
updatesb:33283
update timer
send data packet: 69123 ~ 69634
send_maximum:insert seg:{69123~69634}
send data packet: 69635 ~ 70146
send_maximum:insert seg:{69635~70146}
get ack:33795 seq:4294966410
is new ack
updatesb:33795
update timer
send data packet: 70147 ~ 70658
send_maximum:insert seg:{70147~70658}
send data packet: 70659 ~ 71170
send_maximum:insert seg:{70659~71170}
get ack:34307 seq:4294966410
is new ack
updatesb:34307
update timer
send data packet: 71171 ~ 71682
send_maximum:insert seg:{71171~71682}
send data packet: 71683 ~ 72194
send_maximum:insert seg:{71683~72194}
get ack:34819 seq:4294966410
is new ack
updatesb:34819
update timer
send data packet: 72195 ~ 72706
send_maximum:insert seg:{72195~72706}
send data packet: 72707 ~ 73218
send_maximum:insert seg:{72707~73218}
get ack:35331 seq:4294966410
is new ack
updatesb:35331
update timer
send data packet: 73219 ~ 73730
send_maximum:insert seg:{73219~73730}
send data packet: 73731 ~ 74242
send_maximum:insert seg:{73731~74242}
get ack:35843 seq:4294966410
is new ack
updatesb:35843
update timer
send data packet: 74243 ~ 74754
send_maximum:insert seg:{74243~74754}
send data packet: 74755 ~ 75266
send_maximum:insert seg:{74755~75266}
get ack:36355 seq:4294966410
is new ack
updatesb:36355
update timer
send data packet: 75267 ~ 75778
send_maximum:insert seg:{75267~75778}
send data packet: 75779 ~ 76290
send_maximum:insert seg:{75779~76290}
get ack:36867 seq:4294966410
is new ack
updatesb:36867
update timer
send data packet: 76291 ~ 76802
send_maximum:insert seg:{76291~76802}
send data packet: 76803 ~ 77314
send_maximum:insert seg:{76803~77314}
get ack:37379 seq:4294966410
is new ack
updatesb:37379
update timer
send data packet: 77315 ~ 77826
send_maximum:insert seg:{77315~77826}
send data packet: 77827 ~ 78338
send_maximum:insert seg:{77827~78338}
get ack:37891 seq:4294966410
is new ack
updatesb:37891
update timer
send data packet: 78339 ~ 78850
send_maximum:insert seg:{78339~78850}
send data packet: 78851 ~ 79362
send_maximum:insert seg:{78851~79362}
get ack:38403 seq:4294966410
is new ack
updatesb:38403
update timer
send data packet: 79363 ~ 79874
send_maximum:insert seg:{79363~79874}
send data packet: 79875 ~ 80386
send_maximum:insert seg:{79875~80386}
get ack:38915 seq:4294966410
is new ack
updatesb:38915
update timer
send data packet: 80387 ~ 80898
send_maximum:insert seg:{80387~80898}
send data packet: 80899 ~ 81410
send_maximum:insert seg:{80899~81410}
get ack:39427 seq:4294966410
is new ack
updatesb:39427
update timer
send data packet: 81411 ~ 81922
send_maximum:insert seg:{81411~81922}
send data packet: 81923 ~ 82434
send_maximum:insert seg:{81923~82434}
get ack:39939 seq:4294966410
is new ack
updatesb:39939
update timer
send data packet: 82435 ~ 82946
send_maximum:insert seg:{82435~82946}
send data packet: 82947 ~ 83458
send_maximum:insert seg:{82947~83458}
get ack:40451 seq:4294966410
is new ack
updatesb:40451
update timer
send data packet: 83459 ~ 83970
send_maximum:insert seg:{83459~83970}
send data packet: 83971 ~ 84482
send_maximum:insert seg:{83971~84482}
get ack:40963 seq:4294966410
is new ack
updatesb:40963
update timer
send data packet: 84483 ~ 84994
send_maximum:insert seg:{84483~84994}
send data packet: 84995 ~ 85506
send_maximum:insert seg:{84995~85506}
get ack:41475 seq:4294966410
is new ack
updatesb:41475
update timer
send data packet: 85507 ~ 86018
send_maximum:insert seg:{85507~86018}
send data packet: 86019 ~ 86530
send_maximum:insert seg:{86019~86530}
get ack:41987 seq:4294966410
is new ack
updatesb:41987
update timer
send data packet: 86531 ~ 87042
send_maximum:insert seg:{86531~87042}
send data packet: 87043 ~ 87554
send_maximum:insert seg:{87043~87554}
get ack:42499 seq:4294966410
is new ack
updatesb:42499
update timer
send data packet: 87555 ~ 88066
send_maximum:insert seg:{87555~88066}
send data packet: 88067 ~ 88578
send_maximum:insert seg:{88067~88578}
get ack:43011 seq:4294966410
is new ack
updatesb:43011
update timer
send data packet: 88579 ~ 89090
send_maximum:insert seg:{88579~89090}
send data packet: 89091 ~ 89602
send_maximum:insert seg:{89091~89602}
get ack:43523 seq:4294966410
is new ack
updatesb:43523
update timer
send data packet: 89603 ~ 90114
send_maximum:insert seg:{89603~90114}
send data packet: 90115 ~ 90626
send_maximum:insert seg:{90115~90626}
get ack:44035 seq:4294966410
is new ack
updatesb:44035
update timer
send data packet: 90627 ~ 91138
send_maximum:insert seg:{90627~91138}
send data packet: 91139 ~ 91650
send_maximum:insert seg:{91139~91650}
get ack:44547 seq:4294966410
is new ack
updatesb:44547
update timer
send data packet: 91651 ~ 92162
send_maximum:insert seg:{91651~92162}
send data packet: 92163 ~ 92674
send_maximum:insert seg:{92163~92674}
get ack:45059 seq:4294966410
is new ack
updatesb:45059
update timer
send data packet: 92675 ~ 93186
send_maximum:insert seg:{92675~93186}
send data packet: 93187 ~ 93698
send_maximum:insert seg:{93187~93698}
get ack:45571 seq:4294966410
is new ack
updatesb:45571
update timer
send data packet: 93699 ~ 94210
send_maximum:insert seg:{93699~94210}
send data packet: 94211 ~ 94722
send_maximum:insert seg:{94211~94722}
get ack:46083 seq:4294966410
is new ack
updatesb:46083
update timer
send data packet: 94723 ~ 95234
send_maximum:insert seg:{94723~95234}
send data packet: 95235 ~ 95746
send_maximum:insert seg:{95235~95746}
get ack:46595 seq:4294966410
is new ack
updatesb:46595
update timer
send data packet: 95747 ~ 96258
send_maximum:insert seg:{95747~96258}
send data packet: 96259 ~ 96770
send_maximum:insert seg:{96259~96770}
get ack:47107 seq:4294966410
is new ack
updatesb:47107
update timer
send data packet: 96771 ~ 97282
send_maximum:insert seg:{96771~97282}
send data packet: 97283 ~ 97794
send_maximum:insert seg:{97283~97794}
get ack:47619 seq:4294966410
is new ack
updatesb:47619
update timer
send data packet: 97795 ~ 98306
send_maximum:insert seg:{97795~98306}
send data packet: 98307 ~ 98818
send_maximum:insert seg:{98307~98818}
get ack:48131 seq:4294966410
is new ack
updatesb:48131
update timer
send data packet: 98819 ~ 99330
send_maximum:insert seg:{98819~99330}
get ack:48643 seq:4294966410
is new ack
updatesb:48643
update timer
send data packet: 99331 ~ 99842
send_maximum:insert seg:{99331~99842}
get ack:49155 seq:4294966410
is new ack
updatesb:49155
update timer
send data packet: 99843 ~ 100354
send_maximum:insert seg:{99843~100354}
get ack:49667 seq:4294966410
is new ack
updatesb:49667
update timer
send data packet: 100355 ~ 100866
send_maximum:insert seg:{100355~100866}
get ack:50179 seq:4294966410
is new ack
updatesb:50179
update timer
send data packet: 100867 ~ 101378
send_maximum:insert seg:{100867~101378}
get ack:50691 seq:4294966410
is new ack
updatesb:50691
update timer
send data packet: 101379 ~ 101890
send_maximum:insert seg:{101379~101890}
get ack:51203 seq:4294966410
is new ack
updatesb:51203
update timer
send data packet: 101891 ~ 102402
send_maximum:insert seg:{101891~102402}
get ack:51715 seq:4294966410
is new ack
updatesb:51715
update timer
send data packet: 102403 ~ 102914
send_maximum:insert seg:{102403~102914}
get ack:52227 seq:4294966410
is new ack
updatesb:52227
update timer
send data packet: 102915 ~ 103426
send_maximum:insert seg:{102915~103426}
get ack:52739 seq:4294966410
is new ack
updatesb:52739
update timer
send data packet: 103427 ~ 103938
send_maximum:insert seg:{103427~103938}
get ack:53251 seq:4294966410
is new ack
updatesb:53251
update timer
send data packet: 103939 ~ 104450
send_maximum:insert seg:{103939~104450}
get ack:53763 seq:4294966410
is new ack
updatesb:53763
update timer
send data packet: 104451 ~ 104962
send_maximum:insert seg:{104451~104962}
get ack:54275 seq:4294966410
is new ack
updatesb:54275
update timer
send data packet: 104963 ~ 105474
send_maximum:insert seg:{104963~105474}
get ack:54787 seq:4294966410
is new ack
updatesb:54787
update timer
send data packet: 105475 ~ 105986
send_maximum:insert seg:{105475~105986}
get ack:55299 seq:4294966410
is new ack
updatesb:55299
update timer
send data packet: 105987 ~ 106498
send_maximum:insert seg:{105987~106498}
get ack:55811 seq:4294966410
is new ack
updatesb:55811
update timer
send data packet: 106499 ~ 107010
send_maximum:insert seg:{106499~107010}
get ack:56323 seq:4294966410
is new ack
updatesb:56323
update timer
send data packet: 107011 ~ 107522
send_maximum:insert seg:{107011~107522}
get ack:56835 seq:4294966410
is new ack
updatesb:56835
update timer
send data packet: 107523 ~ 108034
send_maximum:insert seg:{107523~108034}
get ack:57347 seq:4294966410
is new ack
updatesb:57347
update timer
send data packet: 108035 ~ 108546
send_maximum:insert seg:{108035~108546}
get ack:57859 seq:4294966410
is new ack
updatesb:57859
update timer
send data packet: 108547 ~ 109058
send_maximum:insert seg:{108547~109058}
get ack:58371 seq:4294966410
is new ack
updatesb:58371
update timer
send data packet: 109059 ~ 109570
send_maximum:insert seg:{109059~109570}
get ack:58883 seq:4294966410
is new ack
updatesb:58883
update timer
send data packet: 109571 ~ 110082
send_maximum:insert seg:{109571~110082}
get ack:59395 seq:4294966410
is new ack
updatesb:59395
update timer
send data packet: 110083 ~ 110594
send_maximum:insert seg:{110083~110594}
get ack:59907 seq:4294966410
is new ack
updatesb:59907
update timer
send data packet: 110595 ~ 111106
send_maximum:insert seg:{110595~111106}
get ack:60419 seq:4294966410
is new ack
updatesb:60419
update timer
send data packet: 111107 ~ 111618
send_maximum:insert seg:{111107~111618}
get ack:60931 seq:4294966410
is new ack
updatesb:60931
update timer
send data packet: 111619 ~ 112130
send_maximum:insert seg:{111619~112130}
get ack:61443 seq:4294966410
is new ack
updatesb:61443
update timer
send data packet: 112131 ~ 112642
send_maximum:insert seg:{112131~112642}
get ack:61955 seq:4294966410
is new ack
updatesb:61955
update timer
send data packet: 112643 ~ 113154
send_maximum:insert seg:{112643~113154}
get ack:62467 seq:4294966410
is new ack
updatesb:62467
update timer
send data packet: 113155 ~ 113666
send_maximum:insert seg:{113155~113666}
get ack:62979 seq:4294966410
is new ack
updatesb:62979
update timer
send data packet: 113667 ~ 114178
send_maximum:insert seg:{113667~114178}
get ack:63491 seq:4294966410
is new ack
updatesb:63491
update timer
send data packet: 114179 ~ 114690
send_maximum:insert seg:{114179~114690}
get ack:64003 seq:4294966410
is new ack
updatesb:64003
update timer
send data packet: 114691 ~ 115202
send_maximum:insert seg:{114691~115202}
get ack:64515 seq:4294966410
is new ack
updatesb:64515
update timer
send data packet: 115203 ~ 115714
send_maximum:insert seg:{115203~115714}
get ack:65027 seq:4294966410
is new ack
updatesb:65027
update timer
send data packet: 115715 ~ 116226
send_maximum:insert seg:{115715~116226}
get ack:65539 seq:4294966410
is new ack
updatesb:65539
update timer
send data packet: 116227 ~ 116738
send_maximum:insert seg:{116227~116738}
get ack:66051 seq:4294966410
is new ack
updatesb:66051
update timer
send data packet: 116739 ~ 117250
send_maximum:insert seg:{116739~117250}
get ack:66563 seq:4294966410
is new ack
updatesb:66563
update timer
send data packet: 117251 ~ 117762
send_maximum:insert seg:{117251~117762}
get ack:67075 seq:4294966410
is new ack
updatesb:67075
update timer
send data packet: 117763 ~ 118274
send_maximum:insert seg:{117763~118274}
get ack:67587 seq:4294966410
is new ack
updatesb:67587
update timer
send data packet: 118275 ~ 118786
send_maximum:insert seg:{118275~118786}
get ack:68099 seq:4294966410
is new ack
updatesb:68099
update timer
send data packet: 118787 ~ 119298
send_maximum:insert seg:{118787~119298}
get ack:68611 seq:4294966410
is new ack
updatesb:68611
update timer
send data packet: 119299 ~ 119810
send_maximum:insert seg:{119299~119810}
get ack:69123 seq:4294966410
is new ack
updatesb:69123
update timer
send data packet: 119811 ~ 120322
send_maximum:insert seg:{119811~120322}
get ack:69635 seq:4294966410
is new ack
updatesb:69635
update timer
send data packet: 120323 ~ 120834
send_maximum:insert seg:{120323~120834}
get ack:70147 seq:4294966410
is new ack
updatesb:70147
update timer
send data packet: 120835 ~ 121346
send_maximum:insert seg:{120835~121346}
get ack:70659 seq:4294966410
is new ack
updatesb:70659
update timer
send data packet: 121347 ~ 121858
send_maximum:insert seg:{121347~121858}
get ack:71171 seq:4294966410
is new ack
updatesb:71171
update timer
send data packet: 121859 ~ 122370
send_maximum:insert seg:{121859~122370}
get ack:71683 seq:4294966410
is new ack
updatesb:71683
update timer
send data packet: 122371 ~ 122882
send_maximum:insert seg:{122371~122882}
get ack:72195 seq:4294966410
is new ack
updatesb:72195
update timer
send data packet: 122883 ~ 123394
send_maximum:insert seg:{122883~123394}
get ack:72707 seq:4294966410
is new ack
updatesb:72707
update timer
send data packet: 123395 ~ 123906
send_maximum:insert seg:{123395~123906}
get ack:73219 seq:4294966410
is new ack
updatesb:73219
update timer
send data packet: 123907 ~ 124418
send_maximum:insert seg:{123907~124418}
get ack:73731 seq:4294966410
is new ack
updatesb:73731
update timer
send data packet: 124419 ~ 124930
send_maximum:insert seg:{124419~124930}
get ack:74243 seq:4294966410
is new ack
updatesb:74243
update timer
send data packet: 124931 ~ 125442
send_maximum:insert seg:{124931~125442}
get ack:74755 seq:4294966410
is new ack
updatesb:74755
update timer
send data packet: 125443 ~ 125954
send_maximum:insert seg:{125443~125954}
get ack:75267 seq:4294966410
is new ack
updatesb:75267
update timer
send data packet: 125955 ~ 126466
send_maximum:insert seg:{125955~126466}
get ack:75779 seq:4294966410
is new ack
updatesb:75779
update timer
send data packet: 126467 ~ 126978
send_maximum:insert seg:{126467~126978}
get ack:76291 seq:4294966410
is new ack
updatesb:76291
update timer
send data packet: 126979 ~ 127490
send_maximum:insert seg:{126979~127490}
get ack:76803 seq:4294966410
is new ack
updatesb:76803
update timer
send data packet: 127491 ~ 128002
send_maximum:insert seg:{127491~128002}
get ack:77315 seq:4294966410
is new ack
updatesb:77315
update timer
send_maximum: send fin
send FIN#:128003
get ack:77827 seq:4294966410
is new ack
updatesb:77827
update timer
get ack:78339 seq:4294966410
is new ack
updatesb:78339
update timer
get ack:78851 seq:4294966410
is new ack
updatesb:78851
update timer
get ack:79363 seq:4294966410
is new ack
updatesb:79363
update timer
get ack:79875 seq:4294966410
is new ack
updatesb:79875
update timer
get ack:80387 seq:4294966410
is new ack
updatesb:80387
update timer
get ack:80899 seq:4294966410
is new ack
updatesb:80899
update timer
get ack:81411 seq:4294966410
is new ack
updatesb:81411
update timer
get ack:81923 seq:4294966410
is new ack
updatesb:81923
update timer
get ack:82435 seq:4294966410
is new ack
updatesb:82435
update timer
get ack:82947 seq:4294966410
is new ack
updatesb:82947
update timer
get ack:83459 seq:4294966410
is new ack
updatesb:83459
update timer
get ack:83971 seq:4294966410
is new ack
updatesb:83971
update timer
get ack:84483 seq:4294966410
is new ack
updatesb:84483
update timer
get ack:84995 seq:4294966410
is new ack
updatesb:84995
update timer
get ack:85507 seq:4294966410
is new ack
updatesb:85507
update timer
get ack:86019 seq:4294966410
is new ack
updatesb:86019
update timer
get ack:86531 seq:4294966410
is new ack
updatesb:86531
update timer
get ack:87043 seq:4294966410
is new ack
updatesb:87043
update timer
get ack:87555 seq:4294966410
is new ack
updatesb:87555
update timer
get ack:88067 seq:4294966410
is new ack
updatesb:88067
update timer
get ack:88579 seq:4294966410
is new ack
updatesb:88579
update timer
get ack:89091 seq:4294966410
is new ack
updatesb:89091
update timer
get ack:89603 seq:4294966410
is new ack
updatesb:89603
update timer
get ack:90115 seq:4294966410
is new ack
updatesb:90115
update timer
get ack:90627 seq:4294966410
is new ack
updatesb:90627
update timer
get ack:91139 seq:4294966410
is new ack
updatesb:91139
update timer
get ack:91651 seq:4294966410
is new ack
updatesb:91651
update timer
get ack:92163 seq:4294966410
is new ack
updatesb:92163
update timer
get ack:92675 seq:4294966410
is new ack
updatesb:92675
update timer
get ack:93187 seq:4294966410
is new ack
updatesb:93187
update timer
get ack:93699 seq:4294966410
is new ack
updatesb:93699
update timer
get ack:94211 seq:4294966410
is new ack
updatesb:94211
update timer
get ack:94723 seq:4294966410
is new ack
updatesb:94723
update timer
get ack:95235 seq:4294966410
is new ack
updatesb:95235
update timer
get ack:95747 seq:4294966410
is new ack
updatesb:95747
update timer
get ack:96259 seq:4294966410
is new ack
updatesb:96259
update timer
get ack:96771 seq:4294966410
is new ack
updatesb:96771
update timer
get ack:97283 seq:4294966410
is new ack
updatesb:97283
update timer
get ack:97795 seq:4294966410
is new ack
updatesb:97795
update timer
get ack:98307 seq:4294966410
is new ack
updatesb:98307
update timer
get ack:98819 seq:4294966410
is new ack
updatesb:98819
update timer
get ack:99331 seq:4294966410
is new ack
updatesb:99331
update timer
get ack:99843 seq:4294966410
is new ack
updatesb:99843
update timer
get ack:100355 seq:4294966410
is new ack
updatesb:100355
update timer
get ack:100867 seq:4294966410
is new ack
updatesb:100867
update timer
get ack:101379 seq:4294966410
is new ack
updatesb:101379
update timer
get ack:101891 seq:4294966410
is new ack
updatesb:101891
update timer
get ack:102403 seq:4294966410
is new ack
updatesb:102403
update timer
get ack:102915 seq:4294966410
is new ack
updatesb:102915
update timer
get ack:103427 seq:4294966410
is new ack
updatesb:103427
update timer
get ack:103939 seq:4294966410
is new ack
updatesb:103939
update timer
get ack:104451 seq:4294966410
is new ack
updatesb:104451
update timer
get ack:104963 seq:4294966410
is new ack
updatesb:104963
update timer
get ack:105475 seq:4294966410
is new ack
updatesb:105475
update timer
get ack:105987 seq:4294966410
is new ack
updatesb:105987
update timer
get ack:106499 seq:4294966410
is new ack
updatesb:106499
update timer
get ack:107011 seq:4294966410
is new ack
updatesb:107011
update timer
get ack:107523 seq:4294966410
is new ack
updatesb:107523
update timer
get ack:108035 seq:4294966410
is new ack
updatesb:108035
update timer
get ack:108547 seq:4294966410
is new ack
updatesb:108547
update timer
get ack:109059 seq:4294966410
is new ack
updatesb:109059
update timer
get ack:109571 seq:4294966410
is new ack
updatesb:109571
update timer
get ack:110083 seq:4294966410
is new ack
updatesb:110083
update timer
get ack:110595 seq:4294966410
is new ack
updatesb:110595
update timer
get ack:111107 seq:4294966410
is new ack
updatesb:111107
update timer
get ack:111619 seq:4294966410
is new ack
updatesb:111619
update timer
get ack:112131 seq:4294966410
is new ack
updatesb:112131
update timer
get ack:112643 seq:4294966410
is new ack
updatesb:112643
update timer
get ack:113155 seq:4294966410
is new ack
updatesb:113155
update timer
get ack:113667 seq:4294966410
is new ack
updatesb:113667
update timer
get ack:114179 seq:4294966410
is new ack
updatesb:114179
update timer
get ack:114691 seq:4294966410
is new ack
updatesb:114691
update timer
get ack:115203 seq:4294966410
is new ack
updatesb:115203
update timer
get ack:115715 seq:4294966410
is new ack
updatesb:115715
update timer
get ack:116227 seq:4294966410
is new ack
updatesb:116227
update timer
get ack:116739 seq:4294966410
is new ack
updatesb:116739
update timer
get ack:117251 seq:4294966410
is new ack
updatesb:117251
update timer
get ack:117763 seq:4294966410
is new ack
updatesb:117763
update timer
get ack:118275 seq:4294966410
is new ack
updatesb:118275
update timer
get ack:118787 seq:4294966410
is new ack
updatesb:118787
update timer
get ack:119299 seq:4294966410
is new ack
updatesb:119299
update timer
get ack:119811 seq:4294966410
is new ack
updatesb:119811
update timer
get ack:120323 seq:4294966410
is new ack
updatesb:120323
update timer
get ack:120835 seq:4294966410
is new ack
updatesb:120835
update timer
get ack:121347 seq:4294966410
is new ack
updatesb:121347
update timer
get ack:121859 seq:4294966410
is new ack
updatesb:121859
update timer
get ack:122371 seq:4294966410
is new ack
updatesb:122371
update timer
get ack:122883 seq:4294966410
is new ack
updatesb:122883
update timer
get ack:123395 seq:4294966410
is new ack
updatesb:123395
update timer
get ack:123907 seq:4294966410
is new ack
updatesb:123907
update timer
get ack:124419 seq:4294966410
is new ack
updatesb:124419
update timer
get ack:124931 seq:4294966410
is new ack
updatesb:124931
update timer
get ack:125443 seq:4294966410
is new ack
updatesb:125443
update timer
get ack:125955 seq:4294966410
is new ack
updatesb:125955
update timer
get ack:126467 seq:4294966410
is new ack
updatesb:126467
update timer
get ack:126979 seq:4294966410
is new ack
updatesb:126979
update timer
get ack:127491 seq:4294966410
is new ack
updatesb:127491
update timer
get ack:128003 seq:4294966410
is new ack
updatesb:128003
update timer
get ack:128004 seq:4294966410
is new ack
updatesb:128004
stop timer
[       OK ] TestEnv_Any.TestTransfer_Connect_Send_EOF (46 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Recv_Symmetric
get ack:4294964227 seq:4294964518
get ack:4294964227 seq:4294964519
get ack:4294964227 seq:4294965031
get ack:4294964227 seq:4294965543
get ack:4294964227 seq:4294966055
get ack:4294964227 seq:4294966567
get ack:4294964227 seq:4294967079
get ack:4294964227 seq:295
get ack:4294964227 seq:807
get ack:4294964227 seq:1319
get ack:4294964227 seq:1831
get ack:4294964227 seq:2343
get ack:4294964227 seq:2855
get ack:4294964227 seq:3367
get ack:4294964227 seq:3879
get ack:4294964227 seq:4391
get ack:4294964227 seq:4903
get ack:4294964227 seq:5415
get ack:4294964227 seq:5927
get ack:4294964227 seq:6439
get ack:4294964227 seq:6951
get ack:4294964227 seq:7463
get ack:4294964227 seq:7975
get ack:4294964227 seq:8487
get ack:4294964227 seq:8999
get ack:4294964227 seq:9511
get ack:4294964227 seq:10023
get ack:4294964227 seq:10535
get ack:4294964227 seq:11047
get ack:4294964227 seq:11559
get ack:4294964227 seq:12071
get ack:4294964227 seq:12583
get ack:4294964227 seq:13095
get ack:4294964227 seq:13607
get ack:4294964227 seq:14119
get ack:4294964227 seq:14631
get ack:4294964227 seq:15143
get ack:4294964227 seq:15655
get ack:4294964227 seq:16167
get ack:4294964227 seq:16679
get ack:4294964227 seq:17191
get ack:4294964227 seq:17703
get ack:4294964227 seq:18215
get ack:4294964227 seq:18727
get ack:4294964227 seq:19239
get ack:4294964227 seq:19751
get ack:4294964227 seq:20263
get ack:4294964227 seq:20775
get ack:4294964227 seq:21287
get ack:4294964227 seq:21799
get ack:4294964227 seq:22311
get ack:4294964227 seq:22823
get ack:4294964227 seq:23335
get ack:4294964227 seq:23847
get ack:4294964227 seq:24359
get ack:4294964227 seq:24871
get ack:4294964227 seq:25383
get ack:4294964227 seq:25895
get ack:4294964227 seq:26407
get ack:4294964227 seq:26919
get ack:4294964227 seq:27431
get ack:4294964227 seq:27943
get ack:4294964227 seq:28455
get ack:4294964227 seq:28967
get ack:4294964227 seq:29479
get ack:4294964227 seq:29991
get ack:4294964227 seq:30503
get ack:4294964227 seq:31015
get ack:4294964227 seq:31527
get ack:4294964227 seq:32039
get ack:4294964227 seq:32551
get ack:4294964227 seq:33063
get ack:4294964227 seq:33575
get ack:4294964227 seq:34087
get ack:4294964227 seq:34599
get ack:4294964227 seq:35111
get ack:4294964227 seq:35623
get ack:4294964227 seq:36135
get ack:4294964227 seq:36647
get ack:4294964227 seq:37159
get ack:4294964227 seq:37671
get ack:4294964227 seq:38183
get ack:4294964227 seq:38695
get ack:4294964227 seq:39207
get ack:4294964227 seq:39719
get ack:4294964227 seq:40231
get ack:4294964227 seq:40743
get ack:4294964227 seq:41255
get ack:4294964227 seq:41767
get ack:4294964227 seq:42279
get ack:4294964227 seq:42791
get ack:4294964227 seq:43303
get ack:4294964227 seq:43815
get ack:4294964227 seq:44327
get ack:4294964227 seq:44839
get ack:4294964227 seq:45351
get ack:4294964227 seq:45863
get ack:4294964227 seq:46375
get ack:4294964227 seq:46887
get ack:4294964227 seq:47399
get ack:4294964227 seq:47911
get ack:4294964227 seq:48423
get ack:4294964227 seq:48935
get ack:4294964227 seq:49447
get ack:4294964227 seq:49959
get ack:4294964227 seq:50471
get ack:4294964227 seq:50983
get ack:4294964227 seq:51495
get ack:4294964227 seq:52007
get ack:4294964227 seq:52519
get ack:4294964227 seq:53031
get ack:4294964227 seq:53543
get ack:4294964227 seq:54055
get ack:4294964227 seq:54567
get ack:4294964227 seq:55079
get ack:4294964227 seq:55591
get ack:4294964227 seq:56103
get ack:4294964227 seq:56615
get ack:4294964227 seq:57127
get ack:4294964227 seq:57639
get ack:4294964227 seq:58151
get ack:4294964227 seq:58663
get ack:4294964227 seq:59175
get ack:4294964227 seq:59687
get ack:4294964227 seq:60199
get ack:4294964227 seq:60711
get ack:4294964227 seq:61223
get ack:4294964227 seq:61735
get ack:4294964227 seq:62247
get ack:4294964227 seq:62759
get ack:4294964227 seq:63271
get ack:4294964227 seq:63783
get ack:4294964227 seq:64295
get ack:4294964227 seq:64807
get ack:4294964227 seq:65319
get ack:4294964227 seq:65831
get ack:4294964227 seq:66343
get ack:4294964227 seq:66855
get ack:4294964227 seq:67367
get ack:4294964227 seq:67879
get ack:4294964227 seq:68391
get ack:4294964227 seq:68903
get ack:4294964227 seq:69415
get ack:4294964227 seq:69927
get ack:4294964227 seq:70439
get ack:4294964227 seq:70951
get ack:4294964227 seq:71463
get ack:4294964227 seq:71975
get ack:4294964227 seq:72487
get ack:4294964227 seq:72999
get ack:4294964227 seq:73511
get ack:4294964227 seq:74023
get ack:4294964227 seq:74535
get ack:4294964227 seq:75047
get ack:4294964227 seq:75559
get ack:4294964227 seq:76071
get ack:4294964227 seq:76583
get ack:4294964227 seq:77095
get ack:4294964227 seq:77607
get ack:4294964227 seq:78119
get ack:4294964227 seq:78631
get ack:4294964227 seq:79143
get ack:4294964227 seq:79655
get ack:4294964227 seq:80167
get ack:4294964227 seq:80679
get ack:4294964227 seq:81191
get ack:4294964227 seq:81703
get ack:4294964227 seq:82215
get ack:4294964227 seq:82727
get ack:4294964227 seq:83239
get ack:4294964227 seq:83751
get ack:4294964227 seq:84263
get ack:4294964227 seq:84775
get ack:4294964227 seq:85287
get ack:4294964227 seq:85799
get ack:4294964227 seq:86311
get ack:4294964227 seq:86823
get ack:4294964227 seq:87335
get ack:4294964227 seq:87847
get ack:4294964227 seq:88359
get ack:4294964227 seq:88871
get ack:4294964227 seq:89383
get ack:4294964227 seq:89895
get ack:4294964227 seq:90407
get ack:4294964227 seq:90919
get ack:4294964227 seq:91431
get ack:4294964227 seq:91943
get ack:4294964227 seq:92455
get ack:4294964227 seq:92967
get ack:4294964227 seq:93479
get ack:4294964227 seq:93991
get ack:4294964227 seq:94503
get ack:4294964227 seq:95015
get ack:4294964227 seq:95527
get ack:4294964227 seq:96039
get ack:4294964227 seq:96551
get ack:4294964227 seq:97063
get ack:4294964227 seq:97575
get ack:4294964227 seq:98087
get ack:4294964227 seq:98599
get ack:4294964227 seq:99111
get ack:4294964227 seq:99623
get ack:4294964227 seq:100135
get ack:4294964227 seq:100647
get ack:4294964227 seq:101159
get ack:4294964227 seq:101671
get ack:4294964227 seq:102183
get ack:4294964227 seq:102695
get ack:4294964227 seq:103207
get ack:4294964227 seq:103719
get ack:4294964227 seq:104231
get ack:4294964227 seq:104743
get ack:4294964227 seq:105255
get ack:4294964227 seq:105767
get ack:4294964227 seq:106279
get ack:4294964227 seq:106791
get ack:4294964227 seq:107303
get ack:4294964227 seq:107815
get ack:4294964227 seq:108327
get ack:4294964227 seq:108839
get ack:4294964227 seq:109351
get ack:4294964227 seq:109863
get ack:4294964227 seq:110375
get ack:4294964227 seq:110887
get ack:4294964227 seq:111399
get ack:4294964227 seq:111911
get ack:4294964227 seq:112423
get ack:4294964227 seq:112935
get ack:4294964227 seq:113447
get ack:4294964227 seq:113959
get ack:4294964227 seq:114471
get ack:4294964227 seq:114983
get ack:4294964227 seq:115495
get ack:4294964227 seq:116007
get ack:4294964227 seq:116519
get ack:4294964227 seq:117031
get ack:4294964227 seq:117543
get ack:4294964227 seq:118055
get ack:4294964227 seq:118567
get ack:4294964227 seq:119079
get ack:4294964227 seq:119591
get ack:4294964227 seq:120103
get ack:4294964227 seq:120615
get ack:4294964227 seq:121127
get ack:4294964227 seq:121639
get ack:4294964227 seq:122151
get ack:4294964227 seq:122663
get ack:4294964227 seq:123175
get ack:4294964227 seq:123687
get ack:4294964227 seq:124199
get ack:4294964227 seq:124711
get ack:4294964227 seq:125223
get ack:4294964227 seq:125735
get ack:4294964227 seq:126247
get ack:4294964227 seq:126759
get ack:4294964227 seq:127271
get ack:4294964227 seq:127783
send_maximum: send fin
send FIN#:4294964227
get ack:4294964228 seq:128296
is new ack
updatesb:4294964228
[       OK ] TestEnv_Any.TestTransfer_Connect_Recv_Symmetric (62 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Recv_EOF
get ack:4294964227 seq:4294965380
get ack:4294964227 seq:4294965381
get ack:4294964227 seq:4294965893
get ack:4294964227 seq:4294966405
get ack:4294964227 seq:4294966917
get ack:4294964227 seq:133
get ack:4294964227 seq:645
get ack:4294964227 seq:1157
get ack:4294964227 seq:1669
get ack:4294964227 seq:2181
get ack:4294964227 seq:2693
get ack:4294964227 seq:3205
get ack:4294964227 seq:3717
get ack:4294964227 seq:4229
get ack:4294964227 seq:4741
get ack:4294964227 seq:5253
get ack:4294964227 seq:5765
get ack:4294964227 seq:6277
get ack:4294964227 seq:6789
get ack:4294964227 seq:7301
get ack:4294964227 seq:7813
get ack:4294964227 seq:8325
get ack:4294964227 seq:8837
get ack:4294964227 seq:9349
get ack:4294964227 seq:9861
get ack:4294964227 seq:10373
get ack:4294964227 seq:10885
get ack:4294964227 seq:11397
get ack:4294964227 seq:11909
get ack:4294964227 seq:12421
get ack:4294964227 seq:12933
get ack:4294964227 seq:13445
get ack:4294964227 seq:13957
get ack:4294964227 seq:14469
get ack:4294964227 seq:14981
get ack:4294964227 seq:15493
get ack:4294964227 seq:16005
get ack:4294964227 seq:16517
get ack:4294964227 seq:17029
get ack:4294964227 seq:17541
get ack:4294964227 seq:18053
get ack:4294964227 seq:18565
get ack:4294964227 seq:19077
get ack:4294964227 seq:19589
get ack:4294964227 seq:20101
get ack:4294964227 seq:20613
get ack:4294964227 seq:21125
get ack:4294964227 seq:21637
get ack:4294964227 seq:22149
get ack:4294964227 seq:22661
get ack:4294964227 seq:23173
get ack:4294964227 seq:23685
get ack:4294964227 seq:24197
get ack:4294964227 seq:24709
get ack:4294964227 seq:25221
get ack:4294964227 seq:25733
get ack:4294964227 seq:26245
get ack:4294964227 seq:26757
get ack:4294964227 seq:27269
get ack:4294964227 seq:27781
get ack:4294964227 seq:28293
get ack:4294964227 seq:28805
get ack:4294964227 seq:29317
get ack:4294964227 seq:29829
get ack:4294964227 seq:30341
get ack:4294964227 seq:30853
get ack:4294964227 seq:31365
get ack:4294964227 seq:31877
get ack:4294964227 seq:32389
get ack:4294964227 seq:32901
get ack:4294964227 seq:33413
get ack:4294964227 seq:33925
get ack:4294964227 seq:34437
get ack:4294964227 seq:34949
get ack:4294964227 seq:35461
get ack:4294964227 seq:35973
get ack:4294964227 seq:36485
get ack:4294964227 seq:36997
get ack:4294964227 seq:37509
get ack:4294964227 seq:38021
get ack:4294964227 seq:38533
get ack:4294964227 seq:39045
get ack:4294964227 seq:39557
get ack:4294964227 seq:40069
get ack:4294964227 seq:40581
get ack:4294964227 seq:41093
get ack:4294964227 seq:41605
get ack:4294964227 seq:42117
get ack:4294964227 seq:42629
get ack:4294964227 seq:43141
get ack:4294964227 seq:43653
get ack:4294964227 seq:44165
get ack:4294964227 seq:44677
get ack:4294964227 seq:45189
get ack:4294964227 seq:45701
get ack:4294964227 seq:46213
get ack:4294964227 seq:46725
get ack:4294964227 seq:47237
get ack:4294964227 seq:47749
get ack:4294964227 seq:48261
get ack:4294964227 seq:48773
get ack:4294964227 seq:49285
get ack:4294964227 seq:49797
get ack:4294964227 seq:50309
get ack:4294964227 seq:50821
get ack:4294964227 seq:51333
get ack:4294964227 seq:51845
get ack:4294964227 seq:52357
get ack:4294964227 seq:52869
get ack:4294964227 seq:53381
get ack:4294964227 seq:53893
get ack:4294964227 seq:54405
get ack:4294964227 seq:54917
get ack:4294964227 seq:55429
get ack:4294964227 seq:55941
get ack:4294964227 seq:56453
get ack:4294964227 seq:56965
get ack:4294964227 seq:57477
get ack:4294964227 seq:57989
get ack:4294964227 seq:58501
get ack:4294964227 seq:59013
get ack:4294964227 seq:59525
get ack:4294964227 seq:60037
get ack:4294964227 seq:60549
get ack:4294964227 seq:61061
get ack:4294964227 seq:61573
get ack:4294964227 seq:62085
get ack:4294964227 seq:62597
get ack:4294964227 seq:63109
get ack:4294964227 seq:63621
get ack:4294964227 seq:64133
get ack:4294964227 seq:64645
get ack:4294964227 seq:65157
get ack:4294964227 seq:65669
get ack:4294964227 seq:66181
get ack:4294964227 seq:66693
get ack:4294964227 seq:67205
get ack:4294964227 seq:67717
get ack:4294964227 seq:68229
get ack:4294964227 seq:68741
get ack:4294964227 seq:69253
get ack:4294964227 seq:69765
get ack:4294964227 seq:70277
get ack:4294964227 seq:70789
get ack:4294964227 seq:71301
get ack:4294964227 seq:71813
get ack:4294964227 seq:72325
get ack:4294964227 seq:72837
get ack:4294964227 seq:73349
get ack:4294964227 seq:73861
get ack:4294964227 seq:74373
get ack:4294964227 seq:74885
get ack:4294964227 seq:75397
get ack:4294964227 seq:75909
get ack:4294964227 seq:76421
get ack:4294964227 seq:76933
get ack:4294964227 seq:77445
get ack:4294964227 seq:77957
get ack:4294964227 seq:78469
get ack:4294964227 seq:78981
get ack:4294964227 seq:79493
get ack:4294964227 seq:80005
get ack:4294964227 seq:80517
get ack:4294964227 seq:81029
get ack:4294964227 seq:81541
get ack:4294964227 seq:82053
get ack:4294964227 seq:82565
get ack:4294964227 seq:83077
get ack:4294964227 seq:83589
get ack:4294964227 seq:84101
get ack:4294964227 seq:84613
get ack:4294964227 seq:85125
get ack:4294964227 seq:85637
get ack:4294964227 seq:86149
get ack:4294964227 seq:86661
get ack:4294964227 seq:87173
get ack:4294964227 seq:87685
get ack:4294964227 seq:88197
get ack:4294964227 seq:88709
get ack:4294964227 seq:89221
get ack:4294964227 seq:89733
get ack:4294964227 seq:90245
get ack:4294964227 seq:90757
get ack:4294964227 seq:91269
get ack:4294964227 seq:91781
get ack:4294964227 seq:92293
get ack:4294964227 seq:92805
get ack:4294964227 seq:93317
get ack:4294964227 seq:93829
get ack:4294964227 seq:94341
get ack:4294964227 seq:94853
get ack:4294964227 seq:95365
get ack:4294964227 seq:95877
get ack:4294964227 seq:96389
get ack:4294964227 seq:96901
get ack:4294964227 seq:97413
get ack:4294964227 seq:97925
get ack:4294964227 seq:98437
get ack:4294964227 seq:98949
get ack:4294964227 seq:99461
get ack:4294964227 seq:99973
get ack:4294964227 seq:100485
get ack:4294964227 seq:100997
get ack:4294964227 seq:101509
get ack:4294964227 seq:102021
get ack:4294964227 seq:102533
get ack:4294964227 seq:103045
get ack:4294964227 seq:103557
get ack:4294964227 seq:104069
get ack:4294964227 seq:104581
get ack:4294964227 seq:105093
get ack:4294964227 seq:105605
get ack:4294964227 seq:106117
get ack:4294964227 seq:106629
get ack:4294964227 seq:107141
get ack:4294964227 seq:107653
get ack:4294964227 seq:108165
get ack:4294964227 seq:108677
get ack:4294964227 seq:109189
get ack:4294964227 seq:109701
get ack:4294964227 seq:110213
get ack:4294964227 seq:110725
get ack:4294964227 seq:111237
get ack:4294964227 seq:111749
get ack:4294964227 seq:112261
get ack:4294964227 seq:112773
get ack:4294964227 seq:113285
get ack:4294964227 seq:113797
get ack:4294964227 seq:114309
get ack:4294964227 seq:114821
get ack:4294964227 seq:115333
get ack:4294964227 seq:115845
get ack:4294964227 seq:116357
get ack:4294964227 seq:116869
get ack:4294964227 seq:117381
get ack:4294964227 seq:117893
get ack:4294964227 seq:118405
get ack:4294964227 seq:118917
get ack:4294964227 seq:119429
get ack:4294964227 seq:119941
get ack:4294964227 seq:120453
get ack:4294964227 seq:120965
get ack:4294964227 seq:121477
get ack:4294964227 seq:121989
get ack:4294964227 seq:122501
get ack:4294964227 seq:123013
get ack:4294964227 seq:123525
get ack:4294964227 seq:124037
get ack:4294964227 seq:124549
get ack:4294964227 seq:125061
get ack:4294964227 seq:125573
get ack:4294964227 seq:126085
get ack:4294964227 seq:126597
get ack:4294964227 seq:127109
get ack:4294964227 seq:127621
get ack:4294964227 seq:128133
get ack:4294964227 seq:128645
[       OK ] TestEnv_Any.TestTransfer_Connect_Recv_EOF (66 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Recv_SmallBuffer1
get ack:4294964227 seq:4294964502
get ack:4294964227 seq:4294964503
get ack:4294964227 seq:4294965015
get ack:4294964227 seq:4294965527
get ack:4294964227 seq:4294966039
get ack:4294964227 seq:4294966551
get ack:4294964227 seq:4294967063
get ack:4294964227 seq:279
get ack:4294964227 seq:791
get ack:4294964227 seq:1303
get ack:4294964227 seq:1815
get ack:4294964227 seq:2327
get ack:4294964227 seq:2839
get ack:4294964227 seq:3351
get ack:4294964227 seq:3863
get ack:4294964227 seq:4375
get ack:4294964227 seq:4887
get ack:4294964227 seq:5399
get ack:4294964227 seq:5911
get ack:4294964227 seq:6423
get ack:4294964227 seq:6935
get ack:4294964227 seq:7447
get ack:4294964227 seq:7959
get ack:4294964227 seq:8471
get ack:4294964227 seq:8983
get ack:4294964227 seq:9495
get ack:4294964227 seq:10007
get ack:4294964227 seq:10519
get ack:4294964227 seq:11031
get ack:4294964227 seq:11543
get ack:4294964227 seq:12055
get ack:4294964227 seq:12567
get ack:4294964227 seq:13079
get ack:4294964227 seq:13591
get ack:4294964227 seq:14103
get ack:4294964227 seq:14615
get ack:4294964227 seq:15127
get ack:4294964227 seq:15639
get ack:4294964227 seq:16151
get ack:4294964227 seq:16663
get ack:4294964227 seq:17175
get ack:4294964227 seq:17687
get ack:4294964227 seq:18199
get ack:4294964227 seq:18711
get ack:4294964227 seq:19223
get ack:4294964227 seq:19735
get ack:4294964227 seq:20247
get ack:4294964227 seq:20759
get ack:4294964227 seq:21271
get ack:4294964227 seq:21783
get ack:4294964227 seq:22295
get ack:4294964227 seq:22807
get ack:4294964227 seq:23319
get ack:4294964227 seq:23831
get ack:4294964227 seq:24343
get ack:4294964227 seq:24855
get ack:4294964227 seq:25367
get ack:4294964227 seq:25879
get ack:4294964227 seq:26391
get ack:4294964227 seq:26903
get ack:4294964227 seq:27415
get ack:4294964227 seq:27927
get ack:4294964227 seq:28439
get ack:4294964227 seq:28951
get ack:4294964227 seq:29463
get ack:4294964227 seq:29975
get ack:4294964227 seq:30487
get ack:4294964227 seq:30999
get ack:4294964227 seq:31511
get ack:4294964227 seq:32023
get ack:4294964227 seq:32535
get ack:4294964227 seq:33047
get ack:4294964227 seq:33559
get ack:4294964227 seq:34071
get ack:4294964227 seq:34583
get ack:4294964227 seq:35095
get ack:4294964227 seq:35607
get ack:4294964227 seq:36119
get ack:4294964227 seq:36631
get ack:4294964227 seq:37143
get ack:4294964227 seq:37655
get ack:4294964227 seq:38167
get ack:4294964227 seq:38679
get ack:4294964227 seq:39191
get ack:4294964227 seq:39703
get ack:4294964227 seq:40215
get ack:4294964227 seq:40727
get ack:4294964227 seq:41239
get ack:4294964227 seq:41751
get ack:4294964227 seq:42263
get ack:4294964227 seq:42775
get ack:4294964227 seq:43287
get ack:4294964227 seq:43799
get ack:4294964227 seq:44311
get ack:4294964227 seq:44823
get ack:4294964227 seq:45335
get ack:4294964227 seq:45847
get ack:4294964227 seq:46359
get ack:4294964227 seq:46871
get ack:4294964227 seq:47383
get ack:4294964227 seq:47895
get ack:4294964227 seq:48407
get ack:4294964227 seq:48919
get ack:4294964227 seq:49431
get ack:4294964227 seq:49943
get ack:4294964227 seq:50455
get ack:4294964227 seq:50967
get ack:4294964227 seq:51479
get ack:4294964227 seq:51991
get ack:4294964227 seq:52503
get ack:4294964227 seq:53015
get ack:4294964227 seq:53527
get ack:4294964227 seq:54039
get ack:4294964227 seq:54551
get ack:4294964227 seq:55063
get ack:4294964227 seq:55575
get ack:4294964227 seq:56087
get ack:4294964227 seq:56599
get ack:4294964227 seq:57111
get ack:4294964227 seq:57623
get ack:4294964227 seq:58135
get ack:4294964227 seq:58647
get ack:4294964227 seq:59159
get ack:4294964227 seq:59671
get ack:4294964227 seq:60183
get ack:4294964227 seq:60695
get ack:4294964227 seq:61207
get ack:4294964227 seq:61719
get ack:4294964227 seq:62231
get ack:4294964227 seq:62743
get ack:4294964227 seq:63255
get ack:4294964227 seq:63767
get ack:4294964227 seq:64279
get ack:4294964227 seq:64791
get ack:4294964227 seq:65303
get ack:4294964227 seq:65815
get ack:4294964227 seq:66327
get ack:4294964227 seq:66839
get ack:4294964227 seq:67351
get ack:4294964227 seq:67863
get ack:4294964227 seq:68375
get ack:4294964227 seq:68887
get ack:4294964227 seq:69399
get ack:4294964227 seq:69911
get ack:4294964227 seq:70423
get ack:4294964227 seq:70935
get ack:4294964227 seq:71447
get ack:4294964227 seq:71959
get ack:4294964227 seq:72471
get ack:4294964227 seq:72983
get ack:4294964227 seq:73495
get ack:4294964227 seq:74007
get ack:4294964227 seq:74519
get ack:4294964227 seq:75031
get ack:4294964227 seq:75543
get ack:4294964227 seq:76055
get ack:4294964227 seq:76567
get ack:4294964227 seq:77079
get ack:4294964227 seq:77591
get ack:4294964227 seq:78103
get ack:4294964227 seq:78615
get ack:4294964227 seq:79127
get ack:4294964227 seq:79639
get ack:4294964227 seq:80151
get ack:4294964227 seq:80663
get ack:4294964227 seq:81175
get ack:4294964227 seq:81687
get ack:4294964227 seq:82199
get ack:4294964227 seq:82711
get ack:4294964227 seq:83223
get ack:4294964227 seq:83735
get ack:4294964227 seq:84247
get ack:4294964227 seq:84759
get ack:4294964227 seq:85271
get ack:4294964227 seq:85783
get ack:4294964227 seq:86295
get ack:4294964227 seq:86807
get ack:4294964227 seq:87319
get ack:4294964227 seq:87831
get ack:4294964227 seq:88343
get ack:4294964227 seq:88855
get ack:4294964227 seq:89367
get ack:4294964227 seq:89879
get ack:4294964227 seq:90391
get ack:4294964227 seq:90903
get ack:4294964227 seq:91415
get ack:4294964227 seq:91927
get ack:4294964227 seq:92439
get ack:4294964227 seq:92951
get ack:4294964227 seq:93463
get ack:4294964227 seq:93975
get ack:4294964227 seq:94487
get ack:4294964227 seq:94999
get ack:4294964227 seq:95511
get ack:4294964227 seq:96023
get ack:4294964227 seq:96535
get ack:4294964227 seq:97047
get ack:4294964227 seq:97559
get ack:4294964227 seq:98071
get ack:4294964227 seq:98583
get ack:4294964227 seq:99095
get ack:4294964227 seq:99607
get ack:4294964227 seq:100119
get ack:4294964227 seq:100631
get ack:4294964227 seq:101143
get ack:4294964227 seq:101655
get ack:4294964227 seq:102167
get ack:4294964227 seq:102679
get ack:4294964227 seq:103191
get ack:4294964227 seq:103703
get ack:4294964227 seq:104215
get ack:4294964227 seq:104727
get ack:4294964227 seq:105239
get ack:4294964227 seq:105751
get ack:4294964227 seq:106263
get ack:4294964227 seq:106775
get ack:4294964227 seq:107287
get ack:4294964227 seq:107799
get ack:4294964227 seq:108311
get ack:4294964227 seq:108823
get ack:4294964227 seq:109335
get ack:4294964227 seq:109847
get ack:4294964227 seq:110359
get ack:4294964227 seq:110871
get ack:4294964227 seq:111383
get ack:4294964227 seq:111895
get ack:4294964227 seq:112407
get ack:4294964227 seq:112919
get ack:4294964227 seq:113431
get ack:4294964227 seq:113943
get ack:4294964227 seq:114455
get ack:4294964227 seq:114967
get ack:4294964227 seq:115479
get ack:4294964227 seq:115991
get ack:4294964227 seq:116503
get ack:4294964227 seq:117015
get ack:4294964227 seq:117527
get ack:4294964227 seq:118039
get ack:4294964227 seq:118551
get ack:4294964227 seq:119063
get ack:4294964227 seq:119575
get ack:4294964227 seq:120087
get ack:4294964227 seq:120599
get ack:4294964227 seq:121111
get ack:4294964227 seq:121623
get ack:4294964227 seq:122135
get ack:4294964227 seq:122647
get ack:4294964227 seq:123159
get ack:4294964227 seq:123671
get ack:4294964227 seq:124183
get ack:4294964227 seq:124695
get ack:4294964227 seq:125207
get ack:4294964227 seq:125719
get ack:4294964227 seq:126231
get ack:4294964227 seq:126743
get ack:4294964227 seq:127255
get ack:4294964227 seq:127767
[       OK ] TestEnv_Any.TestTransfer_Connect_Recv_SmallBuffer1 (68 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Connect_Recv_SmallBuffer2
get ack:4294964227 seq:4294963960
get ack:4294964227 seq:4294963961
get ack:4294964227 seq:4294964014
get ack:4294964227 seq:4294964067
get ack:4294964227 seq:4294964120
get ack:4294964227 seq:4294964173
get ack:4294964227 seq:4294964226
get ack:4294964227 seq:4294964279
get ack:4294964227 seq:4294964332
get ack:4294964227 seq:4294964385
get ack:4294964227 seq:4294964438
get ack:4294964227 seq:4294964491
get ack:4294964227 seq:4294964544
get ack:4294964227 seq:4294964597
get ack:4294964227 seq:4294964650
get ack:4294964227 seq:4294964703
get ack:4294964227 seq:4294964756
get ack:4294964227 seq:4294964809
get ack:4294964227 seq:4294964862
get ack:4294964227 seq:4294964915
get ack:4294964227 seq:4294964968
get ack:4294964227 seq:4294965021
get ack:4294964227 seq:4294965074
get ack:4294964227 seq:4294965127
get ack:4294964227 seq:4294965180
get ack:4294964227 seq:4294965233
get ack:4294964227 seq:4294965286
get ack:4294964227 seq:4294965339
get ack:4294964227 seq:4294965392
get ack:4294964227 seq:4294965445
get ack:4294964227 seq:4294965498
get ack:4294964227 seq:4294965551
get ack:4294964227 seq:4294965604
get ack:4294964227 seq:4294965657
get ack:4294964227 seq:4294965710
get ack:4294964227 seq:4294965763
get ack:4294964227 seq:4294965816
get ack:4294964227 seq:4294965869
get ack:4294964227 seq:4294965922
get ack:4294964227 seq:4294965975
get ack:4294964227 seq:4294966028
get ack:4294964227 seq:4294966081
get ack:4294964227 seq:4294966134
get ack:4294964227 seq:4294966187
get ack:4294964227 seq:4294966240
get ack:4294964227 seq:4294966293
get ack:4294964227 seq:4294966346
get ack:4294964227 seq:4294966399
get ack:4294964227 seq:4294966452
get ack:4294964227 seq:4294966505
get ack:4294964227 seq:4294966558
get ack:4294964227 seq:4294966611
get ack:4294964227 seq:4294966664
get ack:4294964227 seq:4294966717
get ack:4294964227 seq:4294966770
get ack:4294964227 seq:4294966823
get ack:4294964227 seq:4294966876
get ack:4294964227 seq:4294966929
get ack:4294964227 seq:4294966982
get ack:4294964227 seq:4294967035
get ack:4294964227 seq:4294967088
get ack:4294964227 seq:4294967141
get ack:4294964227 seq:4294967194
get ack:4294964227 seq:4294967247
get ack:4294964227 seq:4
get ack:4294964227 seq:57
get ack:4294964227 seq:110
get ack:4294964227 seq:163
get ack:4294964227 seq:216
get ack:4294964227 seq:269
get ack:4294964227 seq:322
get ack:4294964227 seq:375
get ack:4294964227 seq:428
get ack:4294964227 seq:481
get ack:4294964227 seq:534
get ack:4294964227 seq:587
get ack:4294964227 seq:640
get ack:4294964227 seq:693
get ack:4294964227 seq:746
get ack:4294964227 seq:799
get ack:4294964227 seq:852
get ack:4294964227 seq:905
get ack:4294964227 seq:958
get ack:4294964227 seq:1011
get ack:4294964227 seq:1064
get ack:4294964227 seq:1117
get ack:4294964227 seq:1170
get ack:4294964227 seq:1223
get ack:4294964227 seq:1276
get ack:4294964227 seq:1329
get ack:4294964227 seq:1382
get ack:4294964227 seq:1435
get ack:4294964227 seq:1488
get ack:4294964227 seq:1541
get ack:4294964227 seq:1594
get ack:4294964227 seq:1647
get ack:4294964227 seq:1700
get ack:4294964227 seq:1753
get ack:4294964227 seq:1806
get ack:4294964227 seq:1859
get ack:4294964227 seq:1912
get ack:4294964227 seq:1965
get ack:4294964227 seq:2018
get ack:4294964227 seq:2071
get ack:4294964227 seq:2124
get ack:4294964227 seq:2177
get ack:4294964227 seq:2230
get ack:4294964227 seq:2283
get ack:4294964227 seq:2336
get ack:4294964227 seq:2389
get ack:4294964227 seq:2442
get ack:4294964227 seq:2495
get ack:4294964227 seq:2548
get ack:4294964227 seq:2601
get ack:4294964227 seq:2654
get ack:4294964227 seq:2707
get ack:4294964227 seq:2760
get ack:4294964227 seq:2813
get ack:4294964227 seq:2866
get ack:4294964227 seq:2919
get ack:4294964227 seq:2972
get ack:4294964227 seq:3025
get ack:4294964227 seq:3078
get ack:4294964227 seq:3131
get ack:4294964227 seq:3184
get ack:4294964227 seq:3237
get ack:4294964227 seq:3290
get ack:4294964227 seq:3343
get ack:4294964227 seq:3396
get ack:4294964227 seq:3449
get ack:4294964227 seq:3502
get ack:4294964227 seq:3555
get ack:4294964227 seq:3608
get ack:4294964227 seq:3661
get ack:4294964227 seq:3714
get ack:4294964227 seq:3767
get ack:4294964227 seq:3820
get ack:4294964227 seq:3873
get ack:4294964227 seq:3926
get ack:4294964227 seq:3979
get ack:4294964227 seq:4032
get ack:4294964227 seq:4085
get ack:4294964227 seq:4138
get ack:4294964227 seq:4191
get ack:4294964227 seq:4244
get ack:4294964227 seq:4297
get ack:4294964227 seq:4350
get ack:4294964227 seq:4403
get ack:4294964227 seq:4456
get ack:4294964227 seq:4509
get ack:4294964227 seq:4562
get ack:4294964227 seq:4615
get ack:4294964227 seq:4668
get ack:4294964227 seq:4721
get ack:4294964227 seq:4774
get ack:4294964227 seq:4827
get ack:4294964227 seq:4880
get ack:4294964227 seq:4933
get ack:4294964227 seq:4986
get ack:4294964227 seq:5039
get ack:4294964227 seq:5092
get ack:4294964227 seq:5145
get ack:4294964227 seq:5198
get ack:4294964227 seq:5251
get ack:4294964227 seq:5304
get ack:4294964227 seq:5357
get ack:4294964227 seq:5410
get ack:4294964227 seq:5463
get ack:4294964227 seq:5516
get ack:4294964227 seq:5569
get ack:4294964227 seq:5622
get ack:4294964227 seq:5675
get ack:4294964227 seq:5728
get ack:4294964227 seq:5781
get ack:4294964227 seq:5834
get ack:4294964227 seq:5887
get ack:4294964227 seq:5940
get ack:4294964227 seq:5993
get ack:4294964227 seq:6046
get ack:4294964227 seq:6099
get ack:4294964227 seq:6152
get ack:4294964227 seq:6205
get ack:4294964227 seq:6258
get ack:4294964227 seq:6311
get ack:4294964227 seq:6364
get ack:4294964227 seq:6417
get ack:4294964227 seq:6470
get ack:4294964227 seq:6523
get ack:4294964227 seq:6576
get ack:4294964227 seq:6629
get ack:4294964227 seq:6682
get ack:4294964227 seq:6735
get ack:4294964227 seq:6788
get ack:4294964227 seq:6841
get ack:4294964227 seq:6894
get ack:4294964227 seq:6947
get ack:4294964227 seq:7000
get ack:4294964227 seq:7053
get ack:4294964227 seq:7106
get ack:4294964227 seq:7159
get ack:4294964227 seq:7212
get ack:4294964227 seq:7265
get ack:4294964227 seq:7318
get ack:4294964227 seq:7371
get ack:4294964227 seq:7424
get ack:4294964227 seq:7477
get ack:4294964227 seq:7530
get ack:4294964227 seq:7583
get ack:4294964227 seq:7636
get ack:4294964227 seq:7689
get ack:4294964227 seq:7742
get ack:4294964227 seq:7795
get ack:4294964227 seq:7848
get ack:4294964227 seq:7901
get ack:4294964227 seq:7954
get ack:4294964227 seq:8007
get ack:4294964227 seq:8060
get ack:4294964227 seq:8113
get ack:4294964227 seq:8166
get ack:4294964227 seq:8219
get ack:4294964227 seq:8272
get ack:4294964227 seq:8325
get ack:4294964227 seq:8378
get ack:4294964227 seq:8431
get ack:4294964227 seq:8484
get ack:4294964227 seq:8537
get ack:4294964227 seq:8590
get ack:4294964227 seq:8643
get ack:4294964227 seq:8696
get ack:4294964227 seq:8749
get ack:4294964227 seq:8802
get ack:4294964227 seq:8855
get ack:4294964227 seq:8908
get ack:4294964227 seq:8961
get ack:4294964227 seq:9014
get ack:4294964227 seq:9067
get ack:4294964227 seq:9120
get ack:4294964227 seq:9173
get ack:4294964227 seq:9226
get ack:4294964227 seq:9279
get ack:4294964227 seq:9332
get ack:4294964227 seq:9385
get ack:4294964227 seq:9438
get ack:4294964227 seq:9491
get ack:4294964227 seq:9544
get ack:4294964227 seq:9597
get ack:4294964227 seq:9650
get ack:4294964227 seq:9703
get ack:4294964227 seq:9756
get ack:4294964227 seq:9809
get ack:4294964227 seq:9862
get ack:4294964227 seq:9915
get ack:4294964227 seq:9968
get ack:4294964227 seq:10021
get ack:4294964227 seq:10074
get ack:4294964227 seq:10127
get ack:4294964227 seq:10180
get ack:4294964227 seq:10233
get ack:4294964227 seq:10286
get ack:4294964227 seq:10339
get ack:4294964227 seq:10392
get ack:4294964227 seq:10445
get ack:4294964227 seq:10498
get ack:4294964227 seq:10551
get ack:4294964227 seq:10604
get ack:4294964227 seq:10657
get ack:4294964227 seq:10710
get ack:4294964227 seq:10763
get ack:4294964227 seq:10816
get ack:4294964227 seq:10869
get ack:4294964227 seq:10922
get ack:4294964227 seq:10975
get ack:4294964227 seq:11028
get ack:4294964227 seq:11081
get ack:4294964227 seq:11134
get ack:4294964227 seq:11187
get ack:4294964227 seq:11240
get ack:4294964227 seq:11293
get ack:4294964227 seq:11346
get ack:4294964227 seq:11399
get ack:4294964227 seq:11452
get ack:4294964227 seq:11505
get ack:4294964227 seq:11558
get ack:4294964227 seq:11611
get ack:4294964227 seq:11664
get ack:4294964227 seq:11717
get ack:4294964227 seq:11770
get ack:4294964227 seq:11823
get ack:4294964227 seq:11876
get ack:4294964227 seq:11929
get ack:4294964227 seq:11982
get ack:4294964227 seq:12035
get ack:4294964227 seq:12088
get ack:4294964227 seq:12141
get ack:4294964227 seq:12194
get ack:4294964227 seq:12247
get ack:4294964227 seq:12300
get ack:4294964227 seq:12353
get ack:4294964227 seq:12406
get ack:4294964227 seq:12459
get ack:4294964227 seq:12512
get ack:4294964227 seq:12565
get ack:4294964227 seq:12618
get ack:4294964227 seq:12671
get ack:4294964227 seq:12724
get ack:4294964227 seq:12777
get ack:4294964227 seq:12830
get ack:4294964227 seq:12883
get ack:4294964227 seq:12936
get ack:4294964227 seq:12989
get ack:4294964227 seq:13042
get ack:4294964227 seq:13095
get ack:4294964227 seq:13148
get ack:4294964227 seq:13201
get ack:4294964227 seq:13254
get ack:4294964227 seq:13307
get ack:4294964227 seq:13360
get ack:4294964227 seq:13413
get ack:4294964227 seq:13466
get ack:4294964227 seq:13519
get ack:4294964227 seq:13572
get ack:4294964227 seq:13625
get ack:4294964227 seq:13678
get ack:4294964227 seq:13731
get ack:4294964227 seq:13784
get ack:4294964227 seq:13837
get ack:4294964227 seq:13890
get ack:4294964227 seq:13943
get ack:4294964227 seq:13996
get ack:4294964227 seq:14049
get ack:4294964227 seq:14102
get ack:4294964227 seq:14155
get ack:4294964227 seq:14208
get ack:4294964227 seq:14261
get ack:4294964227 seq:14314
get ack:4294964227 seq:14367
get ack:4294964227 seq:14420
get ack:4294964227 seq:14473
get ack:4294964227 seq:14526
get ack:4294964227 seq:14579
get ack:4294964227 seq:14632
get ack:4294964227 seq:14685
get ack:4294964227 seq:14738
get ack:4294964227 seq:14791
get ack:4294964227 seq:14844
get ack:4294964227 seq:14897
get ack:4294964227 seq:14950
get ack:4294964227 seq:15003
get ack:4294964227 seq:15056
get ack:4294964227 seq:15109
get ack:4294964227 seq:15162
get ack:4294964227 seq:15215
get ack:4294964227 seq:15268
get ack:4294964227 seq:15321
get ack:4294964227 seq:15374
get ack:4294964227 seq:15427
get ack:4294964227 seq:15480
get ack:4294964227 seq:15533
get ack:4294964227 seq:15586
get ack:4294964227 seq:15639
get ack:4294964227 seq:15692
get ack:4294964227 seq:15745
get ack:4294964227 seq:15798
get ack:4294964227 seq:15851
get ack:4294964227 seq:15904
get ack:4294964227 seq:15957
get ack:4294964227 seq:16010
get ack:4294964227 seq:16063
get ack:4294964227 seq:16116
get ack:4294964227 seq:16169
get ack:4294964227 seq:16222
get ack:4294964227 seq:16275
get ack:4294964227 seq:16328
get ack:4294964227 seq:16381
get ack:4294964227 seq:16434
get ack:4294964227 seq:16487
get ack:4294964227 seq:16540
get ack:4294964227 seq:16593
get ack:4294964227 seq:16646
get ack:4294964227 seq:16699
get ack:4294964227 seq:16752
get ack:4294964227 seq:16805
get ack:4294964227 seq:16858
get ack:4294964227 seq:16911
get ack:4294964227 seq:16964
get ack:4294964227 seq:17017
get ack:4294964227 seq:17070
get ack:4294964227 seq:17123
get ack:4294964227 seq:17176
get ack:4294964227 seq:17229
get ack:4294964227 seq:17282
get ack:4294964227 seq:17335
get ack:4294964227 seq:17388
get ack:4294964227 seq:17441
get ack:4294964227 seq:17494
get ack:4294964227 seq:17547
get ack:4294964227 seq:17600
get ack:4294964227 seq:17653
get ack:4294964227 seq:17706
get ack:4294964227 seq:17759
get ack:4294964227 seq:17812
get ack:4294964227 seq:17865
get ack:4294964227 seq:17918
get ack:4294964227 seq:17971
get ack:4294964227 seq:18024
get ack:4294964227 seq:18077
get ack:4294964227 seq:18130
get ack:4294964227 seq:18183
get ack:4294964227 seq:18236
get ack:4294964227 seq:18289
get ack:4294964227 seq:18342
get ack:4294964227 seq:18395
get ack:4294964227 seq:18448
get ack:4294964227 seq:18501
get ack:4294964227 seq:18554
get ack:4294964227 seq:18607
get ack:4294964227 seq:18660
get ack:4294964227 seq:18713
get ack:4294964227 seq:18766
get ack:4294964227 seq:18819
get ack:4294964227 seq:18872
get ack:4294964227 seq:18925
get ack:4294964227 seq:18978
get ack:4294964227 seq:19031
get ack:4294964227 seq:19084
get ack:4294964227 seq:19137
get ack:4294964227 seq:19190
get ack:4294964227 seq:19243
get ack:4294964227 seq:19296
get ack:4294964227 seq:19349
get ack:4294964227 seq:19402
get ack:4294964227 seq:19455
get ack:4294964227 seq:19508
get ack:4294964227 seq:19561
get ack:4294964227 seq:19614
get ack:4294964227 seq:19667
get ack:4294964227 seq:19720
get ack:4294964227 seq:19773
get ack:4294964227 seq:19826
get ack:4294964227 seq:19879
get ack:4294964227 seq:19932
get ack:4294964227 seq:19985
get ack:4294964227 seq:20038
get ack:4294964227 seq:20091
get ack:4294964227 seq:20144
get ack:4294964227 seq:20197
get ack:4294964227 seq:20250
get ack:4294964227 seq:20303
get ack:4294964227 seq:20356
get ack:4294964227 seq:20409
get ack:4294964227 seq:20462
get ack:4294964227 seq:20515
get ack:4294964227 seq:20568
get ack:4294964227 seq:20621
get ack:4294964227 seq:20674
get ack:4294964227 seq:20727
get ack:4294964227 seq:20780
get ack:4294964227 seq:20833
get ack:4294964227 seq:20886
get ack:4294964227 seq:20939
get ack:4294964227 seq:20992
get ack:4294964227 seq:21045
get ack:4294964227 seq:21098
get ack:4294964227 seq:21151
get ack:4294964227 seq:21204
get ack:4294964227 seq:21257
get ack:4294964227 seq:21310
get ack:4294964227 seq:21363
get ack:4294964227 seq:21416
get ack:4294964227 seq:21469
get ack:4294964227 seq:21522
get ack:4294964227 seq:21575
get ack:4294964227 seq:21628
get ack:4294964227 seq:21681
get ack:4294964227 seq:21734
get ack:4294964227 seq:21787
get ack:4294964227 seq:21840
get ack:4294964227 seq:21893
get ack:4294964227 seq:21946
get ack:4294964227 seq:21999
get ack:4294964227 seq:22052
get ack:4294964227 seq:22105
get ack:4294964227 seq:22158
get ack:4294964227 seq:22211
get ack:4294964227 seq:22264
get ack:4294964227 seq:22317
get ack:4294964227 seq:22370
get ack:4294964227 seq:22423
get ack:4294964227 seq:22476
get ack:4294964227 seq:22529
get ack:4294964227 seq:22582
get ack:4294964227 seq:22635
get ack:4294964227 seq:22688
get ack:4294964227 seq:22741
get ack:4294964227 seq:22794
get ack:4294964227 seq:22847
get ack:4294964227 seq:22900
get ack:4294964227 seq:22953
get ack:4294964227 seq:23006
get ack:4294964227 seq:23059
get ack:4294964227 seq:23112
get ack:4294964227 seq:23165
get ack:4294964227 seq:23218
get ack:4294964227 seq:23271
get ack:4294964227 seq:23324
get ack:4294964227 seq:23377
get ack:4294964227 seq:23430
get ack:4294964227 seq:23483
get ack:4294964227 seq:23536
get ack:4294964227 seq:23589
get ack:4294964227 seq:23642
get ack:4294964227 seq:23695
get ack:4294964227 seq:23748
get ack:4294964227 seq:23801
get ack:4294964227 seq:23854
get ack:4294964227 seq:23907
get ack:4294964227 seq:23960
get ack:4294964227 seq:24013
get ack:4294964227 seq:24066
get ack:4294964227 seq:24119
get ack:4294964227 seq:24172
get ack:4294964227 seq:24225
get ack:4294964227 seq:24278
get ack:4294964227 seq:24331
get ack:4294964227 seq:24384
get ack:4294964227 seq:24437
get ack:4294964227 seq:24490
get ack:4294964227 seq:24543
get ack:4294964227 seq:24596
get ack:4294964227 seq:24649
get ack:4294964227 seq:24702
get ack:4294964227 seq:24755
get ack:4294964227 seq:24808
get ack:4294964227 seq:24861
get ack:4294964227 seq:24914
get ack:4294964227 seq:24967
get ack:4294964227 seq:25020
get ack:4294964227 seq:25073
get ack:4294964227 seq:25126
get ack:4294964227 seq:25179
get ack:4294964227 seq:25232
get ack:4294964227 seq:25285
get ack:4294964227 seq:25338
get ack:4294964227 seq:25391
get ack:4294964227 seq:25444
get ack:4294964227 seq:25497
get ack:4294964227 seq:25550
get ack:4294964227 seq:25603
get ack:4294964227 seq:25656
get ack:4294964227 seq:25709
get ack:4294964227 seq:25762
get ack:4294964227 seq:25815
get ack:4294964227 seq:25868
get ack:4294964227 seq:25921
get ack:4294964227 seq:25974
get ack:4294964227 seq:26027
get ack:4294964227 seq:26080
get ack:4294964227 seq:26133
get ack:4294964227 seq:26186
get ack:4294964227 seq:26239
get ack:4294964227 seq:26292
get ack:4294964227 seq:26345
get ack:4294964227 seq:26398
get ack:4294964227 seq:26451
get ack:4294964227 seq:26504
get ack:4294964227 seq:26557
get ack:4294964227 seq:26610
get ack:4294964227 seq:26663
get ack:4294964227 seq:26716
get ack:4294964227 seq:26769
get ack:4294964227 seq:26822
get ack:4294964227 seq:26875
get ack:4294964227 seq:26928
get ack:4294964227 seq:26981
get ack:4294964227 seq:27034
get ack:4294964227 seq:27087
get ack:4294964227 seq:27140
get ack:4294964227 seq:27193
get ack:4294964227 seq:27246
get ack:4294964227 seq:27299
get ack:4294964227 seq:27352
get ack:4294964227 seq:27405
get ack:4294964227 seq:27458
get ack:4294964227 seq:27511
get ack:4294964227 seq:27564
get ack:4294964227 seq:27617
get ack:4294964227 seq:27670
get ack:4294964227 seq:27723
get ack:4294964227 seq:27776
get ack:4294964227 seq:27829
get ack:4294964227 seq:27882
get ack:4294964227 seq:27935
get ack:4294964227 seq:27988
get ack:4294964227 seq:28041
get ack:4294964227 seq:28094
get ack:4294964227 seq:28147
get ack:4294964227 seq:28200
get ack:4294964227 seq:28253
get ack:4294964227 seq:28306
get ack:4294964227 seq:28359
get ack:4294964227 seq:28412
get ack:4294964227 seq:28465
get ack:4294964227 seq:28518
get ack:4294964227 seq:28571
get ack:4294964227 seq:28624
get ack:4294964227 seq:28677
get ack:4294964227 seq:28730
get ack:4294964227 seq:28783
get ack:4294964227 seq:28836
get ack:4294964227 seq:28889
get ack:4294964227 seq:28942
get ack:4294964227 seq:28995
get ack:4294964227 seq:29048
get ack:4294964227 seq:29101
get ack:4294964227 seq:29154
get ack:4294964227 seq:29207
get ack:4294964227 seq:29260
get ack:4294964227 seq:29313
get ack:4294964227 seq:29366
get ack:4294964227 seq:29419
get ack:4294964227 seq:29472
get ack:4294964227 seq:29525
get ack:4294964227 seq:29578
get ack:4294964227 seq:29631
get ack:4294964227 seq:29684
get ack:4294964227 seq:29737
get ack:4294964227 seq:29790
get ack:4294964227 seq:29843
get ack:4294964227 seq:29896
get ack:4294964227 seq:29949
get ack:4294964227 seq:30002
get ack:4294964227 seq:30055
get ack:4294964227 seq:30108
get ack:4294964227 seq:30161
get ack:4294964227 seq:30214
get ack:4294964227 seq:30267
get ack:4294964227 seq:30320
get ack:4294964227 seq:30373
get ack:4294964227 seq:30426
get ack:4294964227 seq:30479
get ack:4294964227 seq:30532
get ack:4294964227 seq:30585
get ack:4294964227 seq:30638
get ack:4294964227 seq:30691
get ack:4294964227 seq:30744
get ack:4294964227 seq:30797
get ack:4294964227 seq:30850
get ack:4294964227 seq:30903
get ack:4294964227 seq:30956
get ack:4294964227 seq:31009
get ack:4294964227 seq:31062
get ack:4294964227 seq:31115
get ack:4294964227 seq:31168
get ack:4294964227 seq:31221
get ack:4294964227 seq:31274
get ack:4294964227 seq:31327
get ack:4294964227 seq:31380
get ack:4294964227 seq:31433
get ack:4294964227 seq:31486
get ack:4294964227 seq:31539
get ack:4294964227 seq:31592
get ack:4294964227 seq:31645
get ack:4294964227 seq:31698
get ack:4294964227 seq:31751
get ack:4294964227 seq:31804
get ack:4294964227 seq:31857
get ack:4294964227 seq:31910
get ack:4294964227 seq:31963
get ack:4294964227 seq:32016
get ack:4294964227 seq:32069
get ack:4294964227 seq:32122
get ack:4294964227 seq:32175
get ack:4294964227 seq:32228
get ack:4294964227 seq:32281
get ack:4294964227 seq:32334
get ack:4294964227 seq:32387
get ack:4294964227 seq:32440
get ack:4294964227 seq:32493
get ack:4294964227 seq:32546
get ack:4294964227 seq:32599
get ack:4294964227 seq:32652
get ack:4294964227 seq:32705
get ack:4294964227 seq:32758
get ack:4294964227 seq:32811
get ack:4294964227 seq:32864
get ack:4294964227 seq:32917
get ack:4294964227 seq:32970
get ack:4294964227 seq:33023
get ack:4294964227 seq:33076
get ack:4294964227 seq:33129
get ack:4294964227 seq:33182
get ack:4294964227 seq:33235
get ack:4294964227 seq:33288
get ack:4294964227 seq:33341
get ack:4294964227 seq:33394
get ack:4294964227 seq:33447
get ack:4294964227 seq:33500
get ack:4294964227 seq:33553
get ack:4294964227 seq:33606
get ack:4294964227 seq:33659
get ack:4294964227 seq:33712
get ack:4294964227 seq:33765
get ack:4294964227 seq:33818
get ack:4294964227 seq:33871
get ack:4294964227 seq:33924
get ack:4294964227 seq:33977
get ack:4294964227 seq:34030
get ack:4294964227 seq:34083
get ack:4294964227 seq:34136
get ack:4294964227 seq:34189
get ack:4294964227 seq:34242
get ack:4294964227 seq:34295
get ack:4294964227 seq:34348
get ack:4294964227 seq:34401
get ack:4294964227 seq:34454
get ack:4294964227 seq:34507
get ack:4294964227 seq:34560
get ack:4294964227 seq:34613
get ack:4294964227 seq:34666
get ack:4294964227 seq:34719
get ack:4294964227 seq:34772
get ack:4294964227 seq:34825
get ack:4294964227 seq:34878
get ack:4294964227 seq:34931
get ack:4294964227 seq:34984
get ack:4294964227 seq:35037
get ack:4294964227 seq:35090
get ack:4294964227 seq:35143
get ack:4294964227 seq:35196
get ack:4294964227 seq:35249
get ack:4294964227 seq:35302
get ack:4294964227 seq:35355
get ack:4294964227 seq:35408
get ack:4294964227 seq:35461
get ack:4294964227 seq:35514
get ack:4294964227 seq:35567
get ack:4294964227 seq:35620
get ack:4294964227 seq:35673
get ack:4294964227 seq:35726
get ack:4294964227 seq:35779
get ack:4294964227 seq:35832
get ack:4294964227 seq:35885
get ack:4294964227 seq:35938
get ack:4294964227 seq:35991
get ack:4294964227 seq:36044
get ack:4294964227 seq:36097
get ack:4294964227 seq:36150
get ack:4294964227 seq:36203
get ack:4294964227 seq:36256
get ack:4294964227 seq:36309
get ack:4294964227 seq:36362
get ack:4294964227 seq:36415
get ack:4294964227 seq:36468
get ack:4294964227 seq:36521
get ack:4294964227 seq:36574
get ack:4294964227 seq:36627
get ack:4294964227 seq:36680
get ack:4294964227 seq:36733
get ack:4294964227 seq:36786
get ack:4294964227 seq:36839
get ack:4294964227 seq:36892
get ack:4294964227 seq:36945
get ack:4294964227 seq:36998
get ack:4294964227 seq:37051
get ack:4294964227 seq:37104
get ack:4294964227 seq:37157
get ack:4294964227 seq:37210
get ack:4294964227 seq:37263
get ack:4294964227 seq:37316
get ack:4294964227 seq:37369
get ack:4294964227 seq:37422
get ack:4294964227 seq:37475
get ack:4294964227 seq:37528
get ack:4294964227 seq:37581
get ack:4294964227 seq:37634
get ack:4294964227 seq:37687
get ack:4294964227 seq:37740
get ack:4294964227 seq:37793
get ack:4294964227 seq:37846
get ack:4294964227 seq:37899
get ack:4294964227 seq:37952
get ack:4294964227 seq:38005
get ack:4294964227 seq:38058
get ack:4294964227 seq:38111
get ack:4294964227 seq:38164
get ack:4294964227 seq:38217
get ack:4294964227 seq:38270
get ack:4294964227 seq:38323
get ack:4294964227 seq:38376
get ack:4294964227 seq:38429
get ack:4294964227 seq:38482
get ack:4294964227 seq:38535
get ack:4294964227 seq:38588
get ack:4294964227 seq:38641
get ack:4294964227 seq:38694
get ack:4294964227 seq:38747
get ack:4294964227 seq:38800
get ack:4294964227 seq:38853
get ack:4294964227 seq:38906
get ack:4294964227 seq:38959
get ack:4294964227 seq:39012
get ack:4294964227 seq:39065
get ack:4294964227 seq:39118
get ack:4294964227 seq:39171
get ack:4294964227 seq:39224
get ack:4294964227 seq:39277
get ack:4294964227 seq:39330
get ack:4294964227 seq:39383
get ack:4294964227 seq:39436
get ack:4294964227 seq:39489
get ack:4294964227 seq:39542
get ack:4294964227 seq:39595
get ack:4294964227 seq:39648
get ack:4294964227 seq:39701
get ack:4294964227 seq:39754
get ack:4294964227 seq:39807
get ack:4294964227 seq:39860
get ack:4294964227 seq:39913
get ack:4294964227 seq:39966
get ack:4294964227 seq:40019
get ack:4294964227 seq:40072
get ack:4294964227 seq:40125
get ack:4294964227 seq:40178
get ack:4294964227 seq:40231
get ack:4294964227 seq:40284
get ack:4294964227 seq:40337
get ack:4294964227 seq:40390
get ack:4294964227 seq:40443
get ack:4294964227 seq:40496
get ack:4294964227 seq:40549
get ack:4294964227 seq:40602
get ack:4294964227 seq:40655
get ack:4294964227 seq:40708
get ack:4294964227 seq:40761
get ack:4294964227 seq:40814
get ack:4294964227 seq:40867
get ack:4294964227 seq:40920
get ack:4294964227 seq:40973
get ack:4294964227 seq:41026
get ack:4294964227 seq:41079
get ack:4294964227 seq:41132
get ack:4294964227 seq:41185
get ack:4294964227 seq:41238
get ack:4294964227 seq:41291
get ack:4294964227 seq:41344
get ack:4294964227 seq:41397
get ack:4294964227 seq:41450
get ack:4294964227 seq:41503
get ack:4294964227 seq:41556
get ack:4294964227 seq:41609
get ack:4294964227 seq:41662
get ack:4294964227 seq:41715
get ack:4294964227 seq:41768
get ack:4294964227 seq:41821
get ack:4294964227 seq:41874
get ack:4294964227 seq:41927
get ack:4294964227 seq:41980
get ack:4294964227 seq:42033
get ack:4294964227 seq:42086
get ack:4294964227 seq:42139
get ack:4294964227 seq:42192
get ack:4294964227 seq:42245
get ack:4294964227 seq:42298
get ack:4294964227 seq:42351
get ack:4294964227 seq:42404
get ack:4294964227 seq:42457
get ack:4294964227 seq:42510
get ack:4294964227 seq:42563
get ack:4294964227 seq:42616
get ack:4294964227 seq:42669
get ack:4294964227 seq:42722
get ack:4294964227 seq:42775
get ack:4294964227 seq:42828
get ack:4294964227 seq:42881
get ack:4294964227 seq:42934
get ack:4294964227 seq:42987
get ack:4294964227 seq:43040
get ack:4294964227 seq:43093
get ack:4294964227 seq:43146
get ack:4294964227 seq:43199
get ack:4294964227 seq:43252
get ack:4294964227 seq:43305
get ack:4294964227 seq:43358
get ack:4294964227 seq:43411
get ack:4294964227 seq:43464
get ack:4294964227 seq:43517
get ack:4294964227 seq:43570
get ack:4294964227 seq:43623
get ack:4294964227 seq:43676
get ack:4294964227 seq:43729
get ack:4294964227 seq:43782
get ack:4294964227 seq:43835
get ack:4294964227 seq:43888
get ack:4294964227 seq:43941
get ack:4294964227 seq:43994
get ack:4294964227 seq:44047
get ack:4294964227 seq:44100
get ack:4294964227 seq:44153
get ack:4294964227 seq:44206
get ack:4294964227 seq:44259
get ack:4294964227 seq:44312
get ack:4294964227 seq:44365
get ack:4294964227 seq:44418
get ack:4294964227 seq:44471
get ack:4294964227 seq:44524
get ack:4294964227 seq:44577
get ack:4294964227 seq:44630
get ack:4294964227 seq:44683
get ack:4294964227 seq:44736
get ack:4294964227 seq:44789
get ack:4294964227 seq:44842
get ack:4294964227 seq:44895
get ack:4294964227 seq:44948
get ack:4294964227 seq:45001
get ack:4294964227 seq:45054
get ack:4294964227 seq:45107
get ack:4294964227 seq:45160
get ack:4294964227 seq:45213
get ack:4294964227 seq:45266
get ack:4294964227 seq:45319
get ack:4294964227 seq:45372
get ack:4294964227 seq:45425
get ack:4294964227 seq:45478
get ack:4294964227 seq:45531
get ack:4294964227 seq:45584
get ack:4294964227 seq:45637
get ack:4294964227 seq:45690
get ack:4294964227 seq:45743
get ack:4294964227 seq:45796
get ack:4294964227 seq:45849
get ack:4294964227 seq:45902
get ack:4294964227 seq:45955
get ack:4294964227 seq:46008
get ack:4294964227 seq:46061
get ack:4294964227 seq:46114
get ack:4294964227 seq:46167
get ack:4294964227 seq:46220
get ack:4294964227 seq:46273
get ack:4294964227 seq:46326
get ack:4294964227 seq:46379
get ack:4294964227 seq:46432
get ack:4294964227 seq:46485
get ack:4294964227 seq:46538
get ack:4294964227 seq:46591
get ack:4294964227 seq:46644
get ack:4294964227 seq:46697
get ack:4294964227 seq:46750
get ack:4294964227 seq:46803
get ack:4294964227 seq:46856
get ack:4294964227 seq:46909
get ack:4294964227 seq:46962
get ack:4294964227 seq:47015
get ack:4294964227 seq:47068
get ack:4294964227 seq:47121
get ack:4294964227 seq:47174
get ack:4294964227 seq:47227
get ack:4294964227 seq:47280
get ack:4294964227 seq:47333
get ack:4294964227 seq:47386
get ack:4294964227 seq:47439
get ack:4294964227 seq:47492
get ack:4294964227 seq:47545
get ack:4294964227 seq:47598
get ack:4294964227 seq:47651
get ack:4294964227 seq:47704
get ack:4294964227 seq:47757
get ack:4294964227 seq:47810
get ack:4294964227 seq:47863
get ack:4294964227 seq:47916
get ack:4294964227 seq:47969
get ack:4294964227 seq:48022
get ack:4294964227 seq:48075
get ack:4294964227 seq:48128
get ack:4294964227 seq:48181
get ack:4294964227 seq:48234
get ack:4294964227 seq:48287
get ack:4294964227 seq:48340
get ack:4294964227 seq:48393
get ack:4294964227 seq:48446
get ack:4294964227 seq:48499
get ack:4294964227 seq:48552
get ack:4294964227 seq:48605
get ack:4294964227 seq:48658
get ack:4294964227 seq:48711
get ack:4294964227 seq:48764
get ack:4294964227 seq:48817
get ack:4294964227 seq:48870
get ack:4294964227 seq:48923
get ack:4294964227 seq:48976
get ack:4294964227 seq:49029
get ack:4294964227 seq:49082
get ack:4294964227 seq:49135
get ack:4294964227 seq:49188
get ack:4294964227 seq:49241
get ack:4294964227 seq:49294
get ack:4294964227 seq:49347
get ack:4294964227 seq:49400
get ack:4294964227 seq:49453
get ack:4294964227 seq:49506
get ack:4294964227 seq:49559
get ack:4294964227 seq:49612
get ack:4294964227 seq:49665
get ack:4294964227 seq:49718
get ack:4294964227 seq:49771
get ack:4294964227 seq:49824
get ack:4294964227 seq:49877
get ack:4294964227 seq:49930
get ack:4294964227 seq:49983
get ack:4294964227 seq:50036
get ack:4294964227 seq:50089
get ack:4294964227 seq:50142
get ack:4294964227 seq:50195
get ack:4294964227 seq:50248
get ack:4294964227 seq:50301
get ack:4294964227 seq:50354
get ack:4294964227 seq:50407
get ack:4294964227 seq:50460
get ack:4294964227 seq:50513
get ack:4294964227 seq:50566
get ack:4294964227 seq:50619
get ack:4294964227 seq:50672
get ack:4294964227 seq:50725
get ack:4294964227 seq:50778
get ack:4294964227 seq:50831
get ack:4294964227 seq:50884
get ack:4294964227 seq:50937
get ack:4294964227 seq:50990
get ack:4294964227 seq:51043
get ack:4294964227 seq:51096
get ack:4294964227 seq:51149
get ack:4294964227 seq:51202
get ack:4294964227 seq:51255
get ack:4294964227 seq:51308
get ack:4294964227 seq:51361
get ack:4294964227 seq:51414
get ack:4294964227 seq:51467
get ack:4294964227 seq:51520
get ack:4294964227 seq:51573
get ack:4294964227 seq:51626
get ack:4294964227 seq:51679
get ack:4294964227 seq:51732
get ack:4294964227 seq:51785
get ack:4294964227 seq:51838
get ack:4294964227 seq:51891
get ack:4294964227 seq:51944
get ack:4294964227 seq:51997
get ack:4294964227 seq:52050
get ack:4294964227 seq:52103
get ack:4294964227 seq:52156
get ack:4294964227 seq:52209
get ack:4294964227 seq:52262
get ack:4294964227 seq:52315
get ack:4294964227 seq:52368
get ack:4294964227 seq:52421
get ack:4294964227 seq:52474
get ack:4294964227 seq:52527
get ack:4294964227 seq:52580
get ack:4294964227 seq:52633
get ack:4294964227 seq:52686
get ack:4294964227 seq:52739
get ack:4294964227 seq:52792
get ack:4294964227 seq:52845
get ack:4294964227 seq:52898
get ack:4294964227 seq:52951
get ack:4294964227 seq:53004
get ack:4294964227 seq:53057
get ack:4294964227 seq:53110
get ack:4294964227 seq:53163
get ack:4294964227 seq:53216
get ack:4294964227 seq:53269
get ack:4294964227 seq:53322
get ack:4294964227 seq:53375
get ack:4294964227 seq:53428
get ack:4294964227 seq:53481
get ack:4294964227 seq:53534
get ack:4294964227 seq:53587
get ack:4294964227 seq:53640
get ack:4294964227 seq:53693
get ack:4294964227 seq:53746
get ack:4294964227 seq:53799
get ack:4294964227 seq:53852
get ack:4294964227 seq:53905
get ack:4294964227 seq:53958
get ack:4294964227 seq:54011
get ack:4294964227 seq:54064
get ack:4294964227 seq:54117
get ack:4294964227 seq:54170
get ack:4294964227 seq:54223
get ack:4294964227 seq:54276
get ack:4294964227 seq:54329
get ack:4294964227 seq:54382
get ack:4294964227 seq:54435
get ack:4294964227 seq:54488
get ack:4294964227 seq:54541
get ack:4294964227 seq:54594
get ack:4294964227 seq:54647
get ack:4294964227 seq:54700
get ack:4294964227 seq:54753
get ack:4294964227 seq:54806
get ack:4294964227 seq:54859
get ack:4294964227 seq:54912
get ack:4294964227 seq:54965
get ack:4294964227 seq:55018
get ack:4294964227 seq:55071
get ack:4294964227 seq:55124
get ack:4294964227 seq:55177
get ack:4294964227 seq:55230
get ack:4294964227 seq:55283
get ack:4294964227 seq:55336
get ack:4294964227 seq:55389
get ack:4294964227 seq:55442
get ack:4294964227 seq:55495
get ack:4294964227 seq:55548
get ack:4294964227 seq:55601
get ack:4294964227 seq:55654
get ack:4294964227 seq:55707
get ack:4294964227 seq:55760
get ack:4294964227 seq:55813
get ack:4294964227 seq:55866
get ack:4294964227 seq:55919
get ack:4294964227 seq:55972
get ack:4294964227 seq:56025
get ack:4294964227 seq:56078
get ack:4294964227 seq:56131
get ack:4294964227 seq:56184
get ack:4294964227 seq:56237
get ack:4294964227 seq:56290
get ack:4294964227 seq:56343
get ack:4294964227 seq:56396
get ack:4294964227 seq:56449
get ack:4294964227 seq:56502
get ack:4294964227 seq:56555
get ack:4294964227 seq:56608
get ack:4294964227 seq:56661
get ack:4294964227 seq:56714
get ack:4294964227 seq:56767
get ack:4294964227 seq:56820
get ack:4294964227 seq:56873
get ack:4294964227 seq:56926
get ack:4294964227 seq:56979
get ack:4294964227 seq:57032
get ack:4294964227 seq:57085
get ack:4294964227 seq:57138
get ack:4294964227 seq:57191
get ack:4294964227 seq:57244
get ack:4294964227 seq:57297
get ack:4294964227 seq:57350
get ack:4294964227 seq:57403
get ack:4294964227 seq:57456
get ack:4294964227 seq:57509
get ack:4294964227 seq:57562
get ack:4294964227 seq:57615
get ack:4294964227 seq:57668
get ack:4294964227 seq:57721
get ack:4294964227 seq:57774
get ack:4294964227 seq:57827
get ack:4294964227 seq:57880
get ack:4294964227 seq:57933
get ack:4294964227 seq:57986
get ack:4294964227 seq:58039
get ack:4294964227 seq:58092
get ack:4294964227 seq:58145
get ack:4294964227 seq:58198
get ack:4294964227 seq:58251
get ack:4294964227 seq:58304
get ack:4294964227 seq:58357
get ack:4294964227 seq:58410
get ack:4294964227 seq:58463
get ack:4294964227 seq:58516
get ack:4294964227 seq:58569
get ack:4294964227 seq:58622
get ack:4294964227 seq:58675
get ack:4294964227 seq:58728
get ack:4294964227 seq:58781
get ack:4294964227 seq:58834
get ack:4294964227 seq:58887
get ack:4294964227 seq:58940
get ack:4294964227 seq:58993
get ack:4294964227 seq:59046
get ack:4294964227 seq:59099
get ack:4294964227 seq:59152
get ack:4294964227 seq:59205
get ack:4294964227 seq:59258
get ack:4294964227 seq:59311
get ack:4294964227 seq:59364
get ack:4294964227 seq:59417
get ack:4294964227 seq:59470
get ack:4294964227 seq:59523
get ack:4294964227 seq:59576
get ack:4294964227 seq:59629
get ack:4294964227 seq:59682
get ack:4294964227 seq:59735
get ack:4294964227 seq:59788
get ack:4294964227 seq:59841
get ack:4294964227 seq:59894
get ack:4294964227 seq:59947
get ack:4294964227 seq:60000
get ack:4294964227 seq:60053
get ack:4294964227 seq:60106
get ack:4294964227 seq:60159
get ack:4294964227 seq:60212
get ack:4294964227 seq:60265
get ack:4294964227 seq:60318
get ack:4294964227 seq:60371
get ack:4294964227 seq:60424
get ack:4294964227 seq:60477
get ack:4294964227 seq:60530
get ack:4294964227 seq:60583
get ack:4294964227 seq:60636
get ack:4294964227 seq:60689
get ack:4294964227 seq:60742
get ack:4294964227 seq:60795
get ack:4294964227 seq:60848
get ack:4294964227 seq:60901
get ack:4294964227 seq:60954
get ack:4294964227 seq:61007
get ack:4294964227 seq:61060
get ack:4294964227 seq:61113
get ack:4294964227 seq:61166
get ack:4294964227 seq:61219
get ack:4294964227 seq:61272
get ack:4294964227 seq:61325
get ack:4294964227 seq:61378
get ack:4294964227 seq:61431
[       OK ] TestEnv_Any.TestTransfer_Connect_Recv_SmallBuffer2 (269 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Send_Symmetric
get ack:1 seq:4294966804
addTimer!send data packet: 1 ~ 512
send_maximum:insert seg:{1~512}
get ack:513 seq:4294966804
is new ack
updatesb:513
stop timer
addTimer!send data packet: 513 ~ 1024
send_maximum:insert seg:{513~1024}
send data packet: 1025 ~ 1536
send_maximum:insert seg:{1025~1536}
get ack:1025 seq:4294966804
is new ack
updatesb:1025
update timer
send data packet: 1537 ~ 2048
send_maximum:insert seg:{1537~2048}
send data packet: 2049 ~ 2560
send_maximum:insert seg:{2049~2560}
get ack:1537 seq:4294966804
is new ack
updatesb:1537
update timer
send data packet: 2561 ~ 3072
send_maximum:insert seg:{2561~3072}
send data packet: 3073 ~ 3584
send_maximum:insert seg:{3073~3584}
get ack:2049 seq:4294966804
is new ack
updatesb:2049
update timer
send data packet: 3585 ~ 4096
send_maximum:insert seg:{3585~4096}
send data packet: 4097 ~ 4608
send_maximum:insert seg:{4097~4608}
get ack:2561 seq:4294966804
is new ack
updatesb:2561
update timer
send data packet: 4609 ~ 5120
send_maximum:insert seg:{4609~5120}
send data packet: 5121 ~ 5632
send_maximum:insert seg:{5121~5632}
get ack:3073 seq:4294966804
is new ack
updatesb:3073
update timer
send data packet: 5633 ~ 6144
send_maximum:insert seg:{5633~6144}
send data packet: 6145 ~ 6656
send_maximum:insert seg:{6145~6656}
get ack:3585 seq:4294966804
is new ack
updatesb:3585
update timer
send data packet: 6657 ~ 7168
send_maximum:insert seg:{6657~7168}
send data packet: 7169 ~ 7680
send_maximum:insert seg:{7169~7680}
get ack:4097 seq:4294966804
is new ack
updatesb:4097
update timer
send data packet: 7681 ~ 8192
send_maximum:insert seg:{7681~8192}
send data packet: 8193 ~ 8704
send_maximum:insert seg:{8193~8704}
get ack:4609 seq:4294966804
is new ack
updatesb:4609
update timer
send data packet: 8705 ~ 9216
send_maximum:insert seg:{8705~9216}
send data packet: 9217 ~ 9728
send_maximum:insert seg:{9217~9728}
get ack:5121 seq:4294966804
is new ack
updatesb:5121
update timer
send data packet: 9729 ~ 10240
send_maximum:insert seg:{9729~10240}
send data packet: 10241 ~ 10752
send_maximum:insert seg:{10241~10752}
get ack:5633 seq:4294966804
is new ack
updatesb:5633
update timer
send data packet: 10753 ~ 11264
send_maximum:insert seg:{10753~11264}
send data packet: 11265 ~ 11776
send_maximum:insert seg:{11265~11776}
get ack:6145 seq:4294966804
is new ack
updatesb:6145
update timer
send data packet: 11777 ~ 12288
send_maximum:insert seg:{11777~12288}
send data packet: 12289 ~ 12800
send_maximum:insert seg:{12289~12800}
get ack:6657 seq:4294966804
is new ack
updatesb:6657
update timer
send data packet: 12801 ~ 13312
send_maximum:insert seg:{12801~13312}
send data packet: 13313 ~ 13824
send_maximum:insert seg:{13313~13824}
get ack:7169 seq:4294966804
is new ack
updatesb:7169
update timer
send data packet: 13825 ~ 14336
send_maximum:insert seg:{13825~14336}
send data packet: 14337 ~ 14848
send_maximum:insert seg:{14337~14848}
get ack:7681 seq:4294966804
is new ack
updatesb:7681
update timer
send data packet: 14849 ~ 15360
send_maximum:insert seg:{14849~15360}
send data packet: 15361 ~ 15872
send_maximum:insert seg:{15361~15872}
get ack:8193 seq:4294966804
is new ack
updatesb:8193
update timer
send data packet: 15873 ~ 16384
send_maximum:insert seg:{15873~16384}
send data packet: 16385 ~ 16896
send_maximum:insert seg:{16385~16896}
get ack:8705 seq:4294966804
is new ack
updatesb:8705
update timer
send data packet: 16897 ~ 17408
send_maximum:insert seg:{16897~17408}
send data packet: 17409 ~ 17920
send_maximum:insert seg:{17409~17920}
get ack:9217 seq:4294966804
is new ack
updatesb:9217
update timer
send data packet: 17921 ~ 18432
send_maximum:insert seg:{17921~18432}
send data packet: 18433 ~ 18944
send_maximum:insert seg:{18433~18944}
get ack:9729 seq:4294966804
is new ack
updatesb:9729
update timer
send data packet: 18945 ~ 19456
send_maximum:insert seg:{18945~19456}
send data packet: 19457 ~ 19968
send_maximum:insert seg:{19457~19968}
get ack:10241 seq:4294966804
is new ack
updatesb:10241
update timer
send data packet: 19969 ~ 20480
send_maximum:insert seg:{19969~20480}
send data packet: 20481 ~ 20992
send_maximum:insert seg:{20481~20992}
get ack:10753 seq:4294966804
is new ack
updatesb:10753
update timer
send data packet: 20993 ~ 21504
send_maximum:insert seg:{20993~21504}
send data packet: 21505 ~ 22016
send_maximum:insert seg:{21505~22016}
get ack:11265 seq:4294966804
is new ack
updatesb:11265
update timer
send data packet: 22017 ~ 22528
send_maximum:insert seg:{22017~22528}
send data packet: 22529 ~ 23040
send_maximum:insert seg:{22529~23040}
get ack:11777 seq:4294966804
is new ack
updatesb:11777
update timer
send data packet: 23041 ~ 23552
send_maximum:insert seg:{23041~23552}
send data packet: 23553 ~ 24064
send_maximum:insert seg:{23553~24064}
get ack:12289 seq:4294966804
is new ack
updatesb:12289
update timer
send data packet: 24065 ~ 24576
send_maximum:insert seg:{24065~24576}
send data packet: 24577 ~ 25088
send_maximum:insert seg:{24577~25088}
get ack:12801 seq:4294966804
is new ack
updatesb:12801
update timer
send data packet: 25089 ~ 25600
send_maximum:insert seg:{25089~25600}
send data packet: 25601 ~ 26112
send_maximum:insert seg:{25601~26112}
get ack:13313 seq:4294966804
is new ack
updatesb:13313
update timer
send data packet: 26113 ~ 26624
send_maximum:insert seg:{26113~26624}
send data packet: 26625 ~ 27136
send_maximum:insert seg:{26625~27136}
get ack:13825 seq:4294966804
is new ack
updatesb:13825
update timer
send data packet: 27137 ~ 27648
send_maximum:insert seg:{27137~27648}
send data packet: 27649 ~ 28160
send_maximum:insert seg:{27649~28160}
get ack:14337 seq:4294966804
is new ack
updatesb:14337
update timer
send data packet: 28161 ~ 28672
send_maximum:insert seg:{28161~28672}
send data packet: 28673 ~ 29184
send_maximum:insert seg:{28673~29184}
get ack:14849 seq:4294966804
is new ack
updatesb:14849
update timer
send data packet: 29185 ~ 29696
send_maximum:insert seg:{29185~29696}
send data packet: 29697 ~ 30208
send_maximum:insert seg:{29697~30208}
get ack:15361 seq:4294966804
is new ack
updatesb:15361
update timer
send data packet: 30209 ~ 30720
send_maximum:insert seg:{30209~30720}
send data packet: 30721 ~ 31232
send_maximum:insert seg:{30721~31232}
get ack:15873 seq:4294966804
is new ack
updatesb:15873
update timer
send data packet: 31233 ~ 31744
send_maximum:insert seg:{31233~31744}
send data packet: 31745 ~ 32256
send_maximum:insert seg:{31745~32256}
get ack:16385 seq:4294966804
is new ack
updatesb:16385
update timer
send data packet: 32257 ~ 32768
send_maximum:insert seg:{32257~32768}
send data packet: 32769 ~ 33280
send_maximum:insert seg:{32769~33280}
get ack:16897 seq:4294966804
is new ack
updatesb:16897
update timer
send data packet: 33281 ~ 33792
send_maximum:insert seg:{33281~33792}
send data packet: 33793 ~ 34304
send_maximum:insert seg:{33793~34304}
get ack:17409 seq:4294966804
is new ack
updatesb:17409
update timer
send data packet: 34305 ~ 34816
send_maximum:insert seg:{34305~34816}
send data packet: 34817 ~ 35328
send_maximum:insert seg:{34817~35328}
get ack:17921 seq:4294966804
is new ack
updatesb:17921
update timer
send data packet: 35329 ~ 35840
send_maximum:insert seg:{35329~35840}
send data packet: 35841 ~ 36352
send_maximum:insert seg:{35841~36352}
get ack:18433 seq:4294966804
is new ack
updatesb:18433
update timer
send data packet: 36353 ~ 36864
send_maximum:insert seg:{36353~36864}
send data packet: 36865 ~ 37376
send_maximum:insert seg:{36865~37376}
get ack:18945 seq:4294966804
is new ack
updatesb:18945
update timer
send data packet: 37377 ~ 37888
send_maximum:insert seg:{37377~37888}
send data packet: 37889 ~ 38400
send_maximum:insert seg:{37889~38400}
get ack:19457 seq:4294966804
is new ack
updatesb:19457
update timer
send data packet: 38401 ~ 38912
send_maximum:insert seg:{38401~38912}
send data packet: 38913 ~ 39424
send_maximum:insert seg:{38913~39424}
get ack:19969 seq:4294966804
is new ack
updatesb:19969
update timer
send data packet: 39425 ~ 39936
send_maximum:insert seg:{39425~39936}
send data packet: 39937 ~ 40448
send_maximum:insert seg:{39937~40448}
get ack:20481 seq:4294966804
is new ack
updatesb:20481
update timer
send data packet: 40449 ~ 40960
send_maximum:insert seg:{40449~40960}
send data packet: 40961 ~ 41472
send_maximum:insert seg:{40961~41472}
get ack:20993 seq:4294966804
is new ack
updatesb:20993
update timer
send data packet: 41473 ~ 41984
send_maximum:insert seg:{41473~41984}
send data packet: 41985 ~ 42496
send_maximum:insert seg:{41985~42496}
get ack:21505 seq:4294966804
is new ack
updatesb:21505
update timer
send data packet: 42497 ~ 43008
send_maximum:insert seg:{42497~43008}
send data packet: 43009 ~ 43520
send_maximum:insert seg:{43009~43520}
get ack:22017 seq:4294966804
is new ack
updatesb:22017
update timer
send data packet: 43521 ~ 44032
send_maximum:insert seg:{43521~44032}
send data packet: 44033 ~ 44544
send_maximum:insert seg:{44033~44544}
get ack:22529 seq:4294966804
is new ack
updatesb:22529
update timer
send data packet: 44545 ~ 45056
send_maximum:insert seg:{44545~45056}
send data packet: 45057 ~ 45568
send_maximum:insert seg:{45057~45568}
get ack:23041 seq:4294966804
is new ack
updatesb:23041
update timer
send data packet: 45569 ~ 46080
send_maximum:insert seg:{45569~46080}
send data packet: 46081 ~ 46592
send_maximum:insert seg:{46081~46592}
get ack:23553 seq:4294966804
is new ack
updatesb:23553
update timer
send data packet: 46593 ~ 47104
send_maximum:insert seg:{46593~47104}
send data packet: 47105 ~ 47616
send_maximum:insert seg:{47105~47616}
get ack:24065 seq:4294966804
is new ack
updatesb:24065
update timer
send data packet: 47617 ~ 48128
send_maximum:insert seg:{47617~48128}
send data packet: 48129 ~ 48640
send_maximum:insert seg:{48129~48640}
get ack:24577 seq:4294966804
is new ack
updatesb:24577
update timer
send data packet: 48641 ~ 49152
send_maximum:insert seg:{48641~49152}
send data packet: 49153 ~ 49664
send_maximum:insert seg:{49153~49664}
get ack:25089 seq:4294966804
is new ack
updatesb:25089
update timer
send data packet: 49665 ~ 50176
send_maximum:insert seg:{49665~50176}
send data packet: 50177 ~ 50688
send_maximum:insert seg:{50177~50688}
get ack:25601 seq:4294966804
is new ack
updatesb:25601
update timer
send data packet: 50689 ~ 51200
send_maximum:insert seg:{50689~51200}
send data packet: 51201 ~ 51712
send_maximum:insert seg:{51201~51712}
get ack:26113 seq:4294966804
is new ack
updatesb:26113
update timer
send data packet: 51713 ~ 52224
send_maximum:insert seg:{51713~52224}
send data packet: 52225 ~ 52736
send_maximum:insert seg:{52225~52736}
get ack:26625 seq:4294966804
is new ack
updatesb:26625
update timer
send data packet: 52737 ~ 53248
send_maximum:insert seg:{52737~53248}
send data packet: 53249 ~ 53760
send_maximum:insert seg:{53249~53760}
get ack:27137 seq:4294966804
is new ack
updatesb:27137
update timer
send data packet: 53761 ~ 54272
send_maximum:insert seg:{53761~54272}
send data packet: 54273 ~ 54784
send_maximum:insert seg:{54273~54784}
get ack:27649 seq:4294966804
is new ack
updatesb:27649
update timer
send data packet: 54785 ~ 55296
send_maximum:insert seg:{54785~55296}
send data packet: 55297 ~ 55808
send_maximum:insert seg:{55297~55808}
get ack:28161 seq:4294966804
is new ack
updatesb:28161
update timer
send data packet: 55809 ~ 56320
send_maximum:insert seg:{55809~56320}
send data packet: 56321 ~ 56832
send_maximum:insert seg:{56321~56832}
get ack:28673 seq:4294966804
is new ack
updatesb:28673
update timer
send data packet: 56833 ~ 57344
send_maximum:insert seg:{56833~57344}
send data packet: 57345 ~ 57856
send_maximum:insert seg:{57345~57856}
get ack:29185 seq:4294966804
is new ack
updatesb:29185
update timer
send data packet: 57857 ~ 58368
send_maximum:insert seg:{57857~58368}
send data packet: 58369 ~ 58880
send_maximum:insert seg:{58369~58880}
get ack:29697 seq:4294966804
is new ack
updatesb:29697
update timer
send data packet: 58881 ~ 59392
send_maximum:insert seg:{58881~59392}
send data packet: 59393 ~ 59904
send_maximum:insert seg:{59393~59904}
get ack:30209 seq:4294966804
is new ack
updatesb:30209
update timer
send data packet: 59905 ~ 60416
send_maximum:insert seg:{59905~60416}
send data packet: 60417 ~ 60928
send_maximum:insert seg:{60417~60928}
get ack:30721 seq:4294966804
is new ack
updatesb:30721
update timer
send data packet: 60929 ~ 61440
send_maximum:insert seg:{60929~61440}
send data packet: 61441 ~ 61952
send_maximum:insert seg:{61441~61952}
get ack:31233 seq:4294966804
is new ack
updatesb:31233
update timer
send data packet: 61953 ~ 62464
send_maximum:insert seg:{61953~62464}
send data packet: 62465 ~ 62976
send_maximum:insert seg:{62465~62976}
get ack:31745 seq:4294966804
is new ack
updatesb:31745
update timer
send data packet: 62977 ~ 63488
send_maximum:insert seg:{62977~63488}
send data packet: 63489 ~ 64000
send_maximum:insert seg:{63489~64000}
get ack:32257 seq:4294966804
is new ack
updatesb:32257
update timer
send data packet: 64001 ~ 64512
send_maximum:insert seg:{64001~64512}
send data packet: 64513 ~ 65024
send_maximum:insert seg:{64513~65024}
get ack:32769 seq:4294966804
is new ack
updatesb:32769
update timer
send data packet: 65025 ~ 65536
send_maximum:insert seg:{65025~65536}
send data packet: 65537 ~ 66048
send_maximum:insert seg:{65537~66048}
get ack:33281 seq:4294966804
is new ack
updatesb:33281
update timer
send data packet: 66049 ~ 66560
send_maximum:insert seg:{66049~66560}
send data packet: 66561 ~ 67072
send_maximum:insert seg:{66561~67072}
get ack:33793 seq:4294966804
is new ack
updatesb:33793
update timer
send data packet: 67073 ~ 67584
send_maximum:insert seg:{67073~67584}
send data packet: 67585 ~ 68096
send_maximum:insert seg:{67585~68096}
get ack:34305 seq:4294966804
is new ack
updatesb:34305
update timer
send data packet: 68097 ~ 68608
send_maximum:insert seg:{68097~68608}
send data packet: 68609 ~ 69120
send_maximum:insert seg:{68609~69120}
get ack:34817 seq:4294966804
is new ack
updatesb:34817
update timer
send data packet: 69121 ~ 69632
send_maximum:insert seg:{69121~69632}
send data packet: 69633 ~ 70144
send_maximum:insert seg:{69633~70144}
get ack:35329 seq:4294966804
is new ack
updatesb:35329
update timer
send data packet: 70145 ~ 70656
send_maximum:insert seg:{70145~70656}
send data packet: 70657 ~ 71168
send_maximum:insert seg:{70657~71168}
get ack:35841 seq:4294966804
is new ack
updatesb:35841
update timer
send data packet: 71169 ~ 71680
send_maximum:insert seg:{71169~71680}
send data packet: 71681 ~ 72192
send_maximum:insert seg:{71681~72192}
get ack:36353 seq:4294966804
is new ack
updatesb:36353
update timer
send data packet: 72193 ~ 72704
send_maximum:insert seg:{72193~72704}
send data packet: 72705 ~ 73216
send_maximum:insert seg:{72705~73216}
get ack:36865 seq:4294966804
is new ack
updatesb:36865
update timer
send data packet: 73217 ~ 73728
send_maximum:insert seg:{73217~73728}
send data packet: 73729 ~ 74240
send_maximum:insert seg:{73729~74240}
get ack:37377 seq:4294966804
is new ack
updatesb:37377
update timer
send data packet: 74241 ~ 74752
send_maximum:insert seg:{74241~74752}
send data packet: 74753 ~ 75264
send_maximum:insert seg:{74753~75264}
get ack:37889 seq:4294966804
is new ack
updatesb:37889
update timer
send data packet: 75265 ~ 75776
send_maximum:insert seg:{75265~75776}
send data packet: 75777 ~ 76288
send_maximum:insert seg:{75777~76288}
get ack:38401 seq:4294966804
is new ack
updatesb:38401
update timer
send data packet: 76289 ~ 76800
send_maximum:insert seg:{76289~76800}
send data packet: 76801 ~ 77312
send_maximum:insert seg:{76801~77312}
get ack:38913 seq:4294966804
is new ack
updatesb:38913
update timer
send data packet: 77313 ~ 77824
send_maximum:insert seg:{77313~77824}
send data packet: 77825 ~ 78336
send_maximum:insert seg:{77825~78336}
get ack:39425 seq:4294966804
is new ack
updatesb:39425
update timer
send data packet: 78337 ~ 78848
send_maximum:insert seg:{78337~78848}
send data packet: 78849 ~ 79360
send_maximum:insert seg:{78849~79360}
get ack:39937 seq:4294966804
is new ack
updatesb:39937
update timer
send data packet: 79361 ~ 79872
send_maximum:insert seg:{79361~79872}
send data packet: 79873 ~ 80384
send_maximum:insert seg:{79873~80384}
get ack:40449 seq:4294966804
is new ack
updatesb:40449
update timer
send data packet: 80385 ~ 80896
send_maximum:insert seg:{80385~80896}
send data packet: 80897 ~ 81408
send_maximum:insert seg:{80897~81408}
get ack:40961 seq:4294966804
is new ack
updatesb:40961
update timer
send data packet: 81409 ~ 81920
send_maximum:insert seg:{81409~81920}
send data packet: 81921 ~ 82432
send_maximum:insert seg:{81921~82432}
get ack:41473 seq:4294966804
is new ack
updatesb:41473
update timer
send data packet: 82433 ~ 82944
send_maximum:insert seg:{82433~82944}
send data packet: 82945 ~ 83456
send_maximum:insert seg:{82945~83456}
get ack:41985 seq:4294966804
is new ack
updatesb:41985
update timer
send data packet: 83457 ~ 83968
send_maximum:insert seg:{83457~83968}
send data packet: 83969 ~ 84480
send_maximum:insert seg:{83969~84480}
get ack:42497 seq:4294966804
is new ack
updatesb:42497
update timer
send data packet: 84481 ~ 84992
send_maximum:insert seg:{84481~84992}
send data packet: 84993 ~ 85504
send_maximum:insert seg:{84993~85504}
get ack:43009 seq:4294966804
is new ack
updatesb:43009
update timer
send data packet: 85505 ~ 86016
send_maximum:insert seg:{85505~86016}
send data packet: 86017 ~ 86528
send_maximum:insert seg:{86017~86528}
get ack:43521 seq:4294966804
is new ack
updatesb:43521
update timer
send data packet: 86529 ~ 87040
send_maximum:insert seg:{86529~87040}
send data packet: 87041 ~ 87552
send_maximum:insert seg:{87041~87552}
get ack:44033 seq:4294966804
is new ack
updatesb:44033
update timer
send data packet: 87553 ~ 88064
send_maximum:insert seg:{87553~88064}
send data packet: 88065 ~ 88576
send_maximum:insert seg:{88065~88576}
get ack:44545 seq:4294966804
is new ack
updatesb:44545
update timer
send data packet: 88577 ~ 89088
send_maximum:insert seg:{88577~89088}
send data packet: 89089 ~ 89600
send_maximum:insert seg:{89089~89600}
get ack:45057 seq:4294966804
is new ack
updatesb:45057
update timer
send data packet: 89601 ~ 90112
send_maximum:insert seg:{89601~90112}
send data packet: 90113 ~ 90624
send_maximum:insert seg:{90113~90624}
get ack:45569 seq:4294966804
is new ack
updatesb:45569
update timer
send data packet: 90625 ~ 91136
send_maximum:insert seg:{90625~91136}
send data packet: 91137 ~ 91648
send_maximum:insert seg:{91137~91648}
get ack:46081 seq:4294966804
is new ack
updatesb:46081
update timer
send data packet: 91649 ~ 92160
send_maximum:insert seg:{91649~92160}
send data packet: 92161 ~ 92672
send_maximum:insert seg:{92161~92672}
get ack:46593 seq:4294966804
is new ack
updatesb:46593
update timer
send data packet: 92673 ~ 93184
send_maximum:insert seg:{92673~93184}
send data packet: 93185 ~ 93696
send_maximum:insert seg:{93185~93696}
get ack:47105 seq:4294966804
is new ack
updatesb:47105
update timer
send data packet: 93697 ~ 94208
send_maximum:insert seg:{93697~94208}
send data packet: 94209 ~ 94720
send_maximum:insert seg:{94209~94720}
get ack:47617 seq:4294966804
is new ack
updatesb:47617
update timer
send data packet: 94721 ~ 95232
send_maximum:insert seg:{94721~95232}
send data packet: 95233 ~ 95744
send_maximum:insert seg:{95233~95744}
get ack:48129 seq:4294966804
is new ack
updatesb:48129
update timer
send data packet: 95745 ~ 96256
send_maximum:insert seg:{95745~96256}
send data packet: 96257 ~ 96768
send_maximum:insert seg:{96257~96768}
get ack:48641 seq:4294966804
is new ack
updatesb:48641
update timer
send data packet: 96769 ~ 97280
send_maximum:insert seg:{96769~97280}
send data packet: 97281 ~ 97792
send_maximum:insert seg:{97281~97792}
get ack:49153 seq:4294966804
is new ack
updatesb:49153
update timer
send data packet: 97793 ~ 98304
send_maximum:insert seg:{97793~98304}
send data packet: 98305 ~ 98816
send_maximum:insert seg:{98305~98816}
get ack:49665 seq:4294966804
is new ack
updatesb:49665
update timer
send data packet: 98817 ~ 99328
send_maximum:insert seg:{98817~99328}
send data packet: 99329 ~ 99840
send_maximum:insert seg:{99329~99840}
get ack:50177 seq:4294966804
is new ack
updatesb:50177
update timer
send data packet: 99841 ~ 100352
send_maximum:insert seg:{99841~100352}
send data packet: 100353 ~ 100864
send_maximum:insert seg:{100353~100864}
get ack:50689 seq:4294966804
is new ack
updatesb:50689
update timer
send data packet: 100865 ~ 101376
send_maximum:insert seg:{100865~101376}
send data packet: 101377 ~ 101888
send_maximum:insert seg:{101377~101888}
get ack:51201 seq:4294966804
is new ack
updatesb:51201
update timer
send data packet: 101889 ~ 102400
send_maximum:insert seg:{101889~102400}
get ack:51713 seq:4294966804
is new ack
updatesb:51713
update timer
send data packet: 102401 ~ 102912
send_maximum:insert seg:{102401~102912}
get ack:52225 seq:4294966804
is new ack
updatesb:52225
update timer
send data packet: 102913 ~ 103424
send_maximum:insert seg:{102913~103424}
get ack:52737 seq:4294966804
is new ack
updatesb:52737
update timer
send data packet: 103425 ~ 103936
send_maximum:insert seg:{103425~103936}
get ack:53249 seq:4294966804
is new ack
updatesb:53249
update timer
send data packet: 103937 ~ 104448
send_maximum:insert seg:{103937~104448}
get ack:53761 seq:4294966804
is new ack
updatesb:53761
update timer
send data packet: 104449 ~ 104960
send_maximum:insert seg:{104449~104960}
get ack:54273 seq:4294966804
is new ack
updatesb:54273
update timer
send data packet: 104961 ~ 105472
send_maximum:insert seg:{104961~105472}
get ack:54785 seq:4294966804
is new ack
updatesb:54785
update timer
send data packet: 105473 ~ 105984
send_maximum:insert seg:{105473~105984}
get ack:55297 seq:4294966804
is new ack
updatesb:55297
update timer
send data packet: 105985 ~ 106496
send_maximum:insert seg:{105985~106496}
get ack:55809 seq:4294966804
is new ack
updatesb:55809
update timer
send data packet: 106497 ~ 107008
send_maximum:insert seg:{106497~107008}
get ack:56321 seq:4294966804
is new ack
updatesb:56321
update timer
send data packet: 107009 ~ 107520
send_maximum:insert seg:{107009~107520}
get ack:56833 seq:4294966804
is new ack
updatesb:56833
update timer
send data packet: 107521 ~ 108032
send_maximum:insert seg:{107521~108032}
get ack:57345 seq:4294966804
is new ack
updatesb:57345
update timer
send data packet: 108033 ~ 108544
send_maximum:insert seg:{108033~108544}
get ack:57857 seq:4294966804
is new ack
updatesb:57857
update timer
send data packet: 108545 ~ 109056
send_maximum:insert seg:{108545~109056}
get ack:58369 seq:4294966804
is new ack
updatesb:58369
update timer
send data packet: 109057 ~ 109568
send_maximum:insert seg:{109057~109568}
get ack:58881 seq:4294966804
is new ack
updatesb:58881
update timer
send data packet: 109569 ~ 110080
send_maximum:insert seg:{109569~110080}
get ack:59393 seq:4294966804
is new ack
updatesb:59393
update timer
send data packet: 110081 ~ 110592
send_maximum:insert seg:{110081~110592}
get ack:59905 seq:4294966804
is new ack
updatesb:59905
update timer
send data packet: 110593 ~ 111104
send_maximum:insert seg:{110593~111104}
get ack:60417 seq:4294966804
is new ack
updatesb:60417
update timer
send data packet: 111105 ~ 111616
send_maximum:insert seg:{111105~111616}
get ack:60929 seq:4294966804
is new ack
updatesb:60929
update timer
send data packet: 111617 ~ 112128
send_maximum:insert seg:{111617~112128}
get ack:61441 seq:4294966804
is new ack
updatesb:61441
update timer
send data packet: 112129 ~ 112640
send_maximum:insert seg:{112129~112640}
get ack:61953 seq:4294966804
is new ack
updatesb:61953
update timer
send data packet: 112641 ~ 113152
send_maximum:insert seg:{112641~113152}
get ack:62465 seq:4294966804
is new ack
updatesb:62465
update timer
send data packet: 113153 ~ 113664
send_maximum:insert seg:{113153~113664}
get ack:62977 seq:4294966804
is new ack
updatesb:62977
update timer
send data packet: 113665 ~ 114176
send_maximum:insert seg:{113665~114176}
get ack:63489 seq:4294966804
is new ack
updatesb:63489
update timer
send data packet: 114177 ~ 114688
send_maximum:insert seg:{114177~114688}
get ack:64001 seq:4294966804
is new ack
updatesb:64001
update timer
send data packet: 114689 ~ 115200
send_maximum:insert seg:{114689~115200}
get ack:64513 seq:4294966804
is new ack
updatesb:64513
update timer
send data packet: 115201 ~ 115712
send_maximum:insert seg:{115201~115712}
get ack:65025 seq:4294966804
is new ack
updatesb:65025
update timer
send data packet: 115713 ~ 116224
send_maximum:insert seg:{115713~116224}
get ack:65537 seq:4294966804
is new ack
updatesb:65537
update timer
send data packet: 116225 ~ 116736
send_maximum:insert seg:{116225~116736}
get ack:66049 seq:4294966804
is new ack
updatesb:66049
update timer
send data packet: 116737 ~ 117248
send_maximum:insert seg:{116737~117248}
get ack:66561 seq:4294966804
is new ack
updatesb:66561
update timer
send data packet: 117249 ~ 117760
send_maximum:insert seg:{117249~117760}
get ack:67073 seq:4294966804
is new ack
updatesb:67073
update timer
send data packet: 117761 ~ 118272
send_maximum:insert seg:{117761~118272}
get ack:67585 seq:4294966804
is new ack
updatesb:67585
update timer
send data packet: 118273 ~ 118784
send_maximum:insert seg:{118273~118784}
get ack:68097 seq:4294966804
is new ack
updatesb:68097
update timer
send data packet: 118785 ~ 119296
send_maximum:insert seg:{118785~119296}
get ack:68609 seq:4294966804
is new ack
updatesb:68609
update timer
send data packet: 119297 ~ 119808
send_maximum:insert seg:{119297~119808}
get ack:69121 seq:4294966804
is new ack
updatesb:69121
update timer
send data packet: 119809 ~ 120320
send_maximum:insert seg:{119809~120320}
get ack:69633 seq:4294966804
is new ack
updatesb:69633
update timer
send data packet: 120321 ~ 120832
send_maximum:insert seg:{120321~120832}
get ack:70145 seq:4294966804
is new ack
updatesb:70145
update timer
send data packet: 120833 ~ 121344
send_maximum:insert seg:{120833~121344}
get ack:70657 seq:4294966804
is new ack
updatesb:70657
update timer
send data packet: 121345 ~ 121856
send_maximum:insert seg:{121345~121856}
get ack:71169 seq:4294966804
is new ack
updatesb:71169
update timer
send data packet: 121857 ~ 122368
send_maximum:insert seg:{121857~122368}
get ack:71681 seq:4294966804
is new ack
updatesb:71681
update timer
send data packet: 122369 ~ 122880
send_maximum:insert seg:{122369~122880}
get ack:72193 seq:4294966804
is new ack
updatesb:72193
update timer
send data packet: 122881 ~ 123392
send_maximum:insert seg:{122881~123392}
get ack:72705 seq:4294966804
is new ack
updatesb:72705
update timer
send data packet: 123393 ~ 123904
send_maximum:insert seg:{123393~123904}
get ack:73217 seq:4294966804
is new ack
updatesb:73217
update timer
send data packet: 123905 ~ 124416
send_maximum:insert seg:{123905~124416}
get ack:73729 seq:4294966804
is new ack
updatesb:73729
update timer
send data packet: 124417 ~ 124928
send_maximum:insert seg:{124417~124928}
get ack:74241 seq:4294966804
is new ack
updatesb:74241
update timer
send data packet: 124929 ~ 125440
send_maximum:insert seg:{124929~125440}
get ack:74753 seq:4294966804
is new ack
updatesb:74753
update timer
send data packet: 125441 ~ 125952
send_maximum:insert seg:{125441~125952}
get ack:75265 seq:4294966804
is new ack
updatesb:75265
update timer
send data packet: 125953 ~ 126464
send_maximum:insert seg:{125953~126464}
get ack:75777 seq:4294966804
is new ack
updatesb:75777
update timer
send data packet: 126465 ~ 126976
send_maximum:insert seg:{126465~126976}
get ack:76289 seq:4294966804
is new ack
updatesb:76289
update timer
send data packet: 126977 ~ 127488
send_maximum:insert seg:{126977~127488}
get ack:76801 seq:4294966804
is new ack
updatesb:76801
update timer
send data packet: 127489 ~ 128000
send_maximum:insert seg:{127489~128000}
get ack:77313 seq:4294966804
is new ack
updatesb:77313
update timer
send data packet: 128001 ~ 128512
send_maximum:insert seg:{128001~128512}
get ack:77825 seq:4294966804
is new ack
updatesb:77825
update timer
send data packet: 128513 ~ 129024
send_maximum:insert seg:{128513~129024}
get ack:78337 seq:4294966804
is new ack
updatesb:78337
update timer
send data packet: 129025 ~ 129536
send_maximum:insert seg:{129025~129536}
get ack:78849 seq:4294966804
is new ack
updatesb:78849
update timer
send data packet: 129537 ~ 130048
send_maximum:insert seg:{129537~130048}
get ack:79361 seq:4294966804
is new ack
updatesb:79361
update timer
send data packet: 130049 ~ 130560
send_maximum:insert seg:{130049~130560}
get ack:79873 seq:4294966804
is new ack
updatesb:79873
update timer
send data packet: 130561 ~ 131072
send_maximum:insert seg:{130561~131072}
get ack:80385 seq:4294966804
is new ack
updatesb:80385
update timer
send_maximum: send fin
send FIN#:131073
get ack:80897 seq:4294966804
is new ack
updatesb:80897
update timer
get ack:81409 seq:4294966804
is new ack
updatesb:81409
update timer
get ack:81921 seq:4294966804
is new ack
updatesb:81921
update timer
get ack:82433 seq:4294966804
is new ack
updatesb:82433
update timer
get ack:82945 seq:4294966804
is new ack
updatesb:82945
update timer
get ack:83457 seq:4294966804
is new ack
updatesb:83457
update timer
get ack:83969 seq:4294966804
is new ack
updatesb:83969
update timer
get ack:84481 seq:4294966804
is new ack
updatesb:84481
update timer
get ack:84993 seq:4294966804
is new ack
updatesb:84993
update timer
get ack:85505 seq:4294966804
is new ack
updatesb:85505
update timer
get ack:86017 seq:4294966804
is new ack
updatesb:86017
update timer
get ack:86529 seq:4294966804
is new ack
updatesb:86529
update timer
get ack:87041 seq:4294966804
is new ack
updatesb:87041
update timer
get ack:87553 seq:4294966804
is new ack
updatesb:87553
update timer
get ack:88065 seq:4294966804
is new ack
updatesb:88065
update timer
get ack:88577 seq:4294966804
is new ack
updatesb:88577
update timer
get ack:89089 seq:4294966804
is new ack
updatesb:89089
update timer
get ack:89601 seq:4294966804
is new ack
updatesb:89601
update timer
get ack:90113 seq:4294966804
is new ack
updatesb:90113
update timer
get ack:90625 seq:4294966804
is new ack
updatesb:90625
update timer
get ack:91137 seq:4294966804
is new ack
updatesb:91137
update timer
get ack:91649 seq:4294966804
is new ack
updatesb:91649
update timer
get ack:92161 seq:4294966804
is new ack
updatesb:92161
update timer
get ack:92673 seq:4294966804
is new ack
updatesb:92673
update timer
get ack:93185 seq:4294966804
is new ack
updatesb:93185
update timer
get ack:93697 seq:4294966804
is new ack
updatesb:93697
update timer
get ack:94209 seq:4294966804
is new ack
updatesb:94209
update timer
get ack:94721 seq:4294966804
is new ack
updatesb:94721
update timer
get ack:95233 seq:4294966804
is new ack
updatesb:95233
update timer
get ack:95745 seq:4294966804
is new ack
updatesb:95745
update timer
get ack:96257 seq:4294966804
is new ack
updatesb:96257
update timer
get ack:96769 seq:4294966804
is new ack
updatesb:96769
update timer
get ack:97281 seq:4294966804
is new ack
updatesb:97281
update timer
get ack:97793 seq:4294966804
is new ack
updatesb:97793
update timer
get ack:98305 seq:4294966804
is new ack
updatesb:98305
update timer
get ack:98817 seq:4294966804
is new ack
updatesb:98817
update timer
get ack:99329 seq:4294966804
is new ack
updatesb:99329
update timer
get ack:99841 seq:4294966804
is new ack
updatesb:99841
update timer
get ack:100353 seq:4294966804
is new ack
updatesb:100353
update timer
get ack:100865 seq:4294966804
is new ack
updatesb:100865
update timer
get ack:101377 seq:4294966804
is new ack
updatesb:101377
update timer
get ack:101889 seq:4294966804
is new ack
updatesb:101889
update timer
get ack:102401 seq:4294966804
is new ack
updatesb:102401
update timer
get ack:102913 seq:4294966804
is new ack
updatesb:102913
update timer
get ack:103425 seq:4294966804
is new ack
updatesb:103425
update timer
get ack:103937 seq:4294966804
is new ack
updatesb:103937
update timer
get ack:104449 seq:4294966804
is new ack
updatesb:104449
update timer
get ack:104961 seq:4294966804
is new ack
updatesb:104961
update timer
get ack:105473 seq:4294966804
is new ack
updatesb:105473
update timer
get ack:105985 seq:4294966804
is new ack
updatesb:105985
update timer
get ack:106497 seq:4294966804
is new ack
updatesb:106497
update timer
get ack:107009 seq:4294966804
is new ack
updatesb:107009
update timer
get ack:107521 seq:4294966804
is new ack
updatesb:107521
update timer
get ack:108033 seq:4294966804
is new ack
updatesb:108033
update timer
get ack:108545 seq:4294966804
is new ack
updatesb:108545
update timer
get ack:109057 seq:4294966804
is new ack
updatesb:109057
update timer
get ack:109569 seq:4294966804
is new ack
updatesb:109569
update timer
get ack:110081 seq:4294966804
is new ack
updatesb:110081
update timer
get ack:110593 seq:4294966804
is new ack
updatesb:110593
update timer
get ack:111105 seq:4294966804
is new ack
updatesb:111105
update timer
get ack:111617 seq:4294966804
is new ack
updatesb:111617
update timer
get ack:112129 seq:4294966804
is new ack
updatesb:112129
update timer
get ack:112641 seq:4294966804
is new ack
updatesb:112641
update timer
get ack:113153 seq:4294966804
is new ack
updatesb:113153
update timer
get ack:113665 seq:4294966804
is new ack
updatesb:113665
update timer
get ack:114177 seq:4294966804
is new ack
updatesb:114177
update timer
get ack:114689 seq:4294966804
is new ack
updatesb:114689
update timer
get ack:115201 seq:4294966804
is new ack
updatesb:115201
update timer
get ack:115713 seq:4294966804
is new ack
updatesb:115713
update timer
get ack:116225 seq:4294966804
is new ack
updatesb:116225
update timer
get ack:116737 seq:4294966804
is new ack
updatesb:116737
update timer
get ack:117249 seq:4294966804
is new ack
updatesb:117249
update timer
get ack:117761 seq:4294966804
is new ack
updatesb:117761
update timer
get ack:118273 seq:4294966804
is new ack
updatesb:118273
update timer
get ack:118785 seq:4294966804
is new ack
updatesb:118785
update timer
get ack:119297 seq:4294966804
is new ack
updatesb:119297
update timer
get ack:119809 seq:4294966804
is new ack
updatesb:119809
update timer
get ack:120321 seq:4294966804
is new ack
updatesb:120321
update timer
get ack:120833 seq:4294966804
is new ack
updatesb:120833
update timer
get ack:121345 seq:4294966804
is new ack
updatesb:121345
update timer
get ack:121857 seq:4294966804
is new ack
updatesb:121857
update timer
get ack:122369 seq:4294966804
is new ack
updatesb:122369
update timer
get ack:122881 seq:4294966804
is new ack
updatesb:122881
update timer
get ack:123393 seq:4294966804
is new ack
updatesb:123393
update timer
get ack:123905 seq:4294966804
is new ack
updatesb:123905
update timer
get ack:124417 seq:4294966804
is new ack
updatesb:124417
update timer
get ack:124929 seq:4294966804
is new ack
updatesb:124929
update timer
get ack:125441 seq:4294966804
is new ack
updatesb:125441
update timer
get ack:125953 seq:4294966804
is new ack
updatesb:125953
update timer
get ack:126465 seq:4294966804
is new ack
updatesb:126465
update timer
get ack:126977 seq:4294966804
is new ack
updatesb:126977
update timer
get ack:127489 seq:4294966804
is new ack
updatesb:127489
update timer
get ack:128001 seq:4294966804
is new ack
updatesb:128001
update timer
get ack:128513 seq:4294966804
is new ack
updatesb:128513
update timer
get ack:129025 seq:4294966804
is new ack
updatesb:129025
update timer
get ack:129537 seq:4294966804
is new ack
updatesb:129537
update timer
get ack:130049 seq:4294966804
is new ack
updatesb:130049
update timer
get ack:130561 seq:4294966804
is new ack
updatesb:130561
update timer
get ack:131073 seq:4294966804
is new ack
updatesb:131073
update timer
get ack:131074 seq:4294966805
is new ack
updatesb:131074
stop timer
[       OK ] TestEnv_Any.TestTransfer_Accept_Send_Symmetric (41 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Send_EOF
get ack:1 seq:4294965875
addTimer!send data packet: 1 ~ 512
send_maximum:insert seg:{1~512}
get ack:513 seq:4294965875
is new ack
updatesb:513
stop timer
addTimer!send data packet: 513 ~ 1024
send_maximum:insert seg:{513~1024}
send data packet: 1025 ~ 1536
send_maximum:insert seg:{1025~1536}
get ack:1025 seq:4294965875
is new ack
updatesb:1025
update timer
send data packet: 1537 ~ 2048
send_maximum:insert seg:{1537~2048}
send data packet: 2049 ~ 2560
send_maximum:insert seg:{2049~2560}
get ack:1537 seq:4294965875
is new ack
updatesb:1537
update timer
send data packet: 2561 ~ 3072
send_maximum:insert seg:{2561~3072}
send data packet: 3073 ~ 3584
send_maximum:insert seg:{3073~3584}
get ack:2049 seq:4294965875
is new ack
updatesb:2049
update timer
send data packet: 3585 ~ 4096
send_maximum:insert seg:{3585~4096}
send data packet: 4097 ~ 4608
send_maximum:insert seg:{4097~4608}
get ack:2561 seq:4294965875
is new ack
updatesb:2561
update timer
send data packet: 4609 ~ 5120
send_maximum:insert seg:{4609~5120}
send data packet: 5121 ~ 5632
send_maximum:insert seg:{5121~5632}
get ack:3073 seq:4294965875
is new ack
updatesb:3073
update timer
send data packet: 5633 ~ 6144
send_maximum:insert seg:{5633~6144}
send data packet: 6145 ~ 6656
send_maximum:insert seg:{6145~6656}
get ack:3585 seq:4294965875
is new ack
updatesb:3585
update timer
send data packet: 6657 ~ 7168
send_maximum:insert seg:{6657~7168}
send data packet: 7169 ~ 7680
send_maximum:insert seg:{7169~7680}
get ack:4097 seq:4294965875
is new ack
updatesb:4097
update timer
send data packet: 7681 ~ 8192
send_maximum:insert seg:{7681~8192}
send data packet: 8193 ~ 8704
send_maximum:insert seg:{8193~8704}
get ack:4609 seq:4294965875
is new ack
updatesb:4609
update timer
send data packet: 8705 ~ 9216
send_maximum:insert seg:{8705~9216}
send data packet: 9217 ~ 9728
send_maximum:insert seg:{9217~9728}
get ack:5121 seq:4294965875
is new ack
updatesb:5121
update timer
send data packet: 9729 ~ 10240
send_maximum:insert seg:{9729~10240}
send data packet: 10241 ~ 10752
send_maximum:insert seg:{10241~10752}
get ack:5633 seq:4294965875
is new ack
updatesb:5633
update timer
send data packet: 10753 ~ 11264
send_maximum:insert seg:{10753~11264}
send data packet: 11265 ~ 11776
send_maximum:insert seg:{11265~11776}
get ack:6145 seq:4294965875
is new ack
updatesb:6145
update timer
send data packet: 11777 ~ 12288
send_maximum:insert seg:{11777~12288}
send data packet: 12289 ~ 12800
send_maximum:insert seg:{12289~12800}
get ack:6657 seq:4294965875
is new ack
updatesb:6657
update timer
send data packet: 12801 ~ 13312
send_maximum:insert seg:{12801~13312}
send data packet: 13313 ~ 13824
send_maximum:insert seg:{13313~13824}
get ack:7169 seq:4294965875
is new ack
updatesb:7169
update timer
send data packet: 13825 ~ 14336
send_maximum:insert seg:{13825~14336}
send data packet: 14337 ~ 14848
send_maximum:insert seg:{14337~14848}
get ack:7681 seq:4294965875
is new ack
updatesb:7681
update timer
send data packet: 14849 ~ 15360
send_maximum:insert seg:{14849~15360}
send data packet: 15361 ~ 15872
send_maximum:insert seg:{15361~15872}
get ack:8193 seq:4294965875
is new ack
updatesb:8193
update timer
send data packet: 15873 ~ 16384
send_maximum:insert seg:{15873~16384}
send data packet: 16385 ~ 16896
send_maximum:insert seg:{16385~16896}
get ack:8705 seq:4294965875
is new ack
updatesb:8705
update timer
send data packet: 16897 ~ 17408
send_maximum:insert seg:{16897~17408}
send data packet: 17409 ~ 17920
send_maximum:insert seg:{17409~17920}
get ack:9217 seq:4294965875
is new ack
updatesb:9217
update timer
send data packet: 17921 ~ 18432
send_maximum:insert seg:{17921~18432}
send data packet: 18433 ~ 18944
send_maximum:insert seg:{18433~18944}
get ack:9729 seq:4294965875
is new ack
updatesb:9729
update timer
send data packet: 18945 ~ 19456
send_maximum:insert seg:{18945~19456}
send data packet: 19457 ~ 19968
send_maximum:insert seg:{19457~19968}
get ack:10241 seq:4294965875
is new ack
updatesb:10241
update timer
send data packet: 19969 ~ 20480
send_maximum:insert seg:{19969~20480}
send data packet: 20481 ~ 20992
send_maximum:insert seg:{20481~20992}
get ack:10753 seq:4294965875
is new ack
updatesb:10753
update timer
send data packet: 20993 ~ 21504
send_maximum:insert seg:{20993~21504}
send data packet: 21505 ~ 22016
send_maximum:insert seg:{21505~22016}
get ack:11265 seq:4294965875
is new ack
updatesb:11265
update timer
send data packet: 22017 ~ 22528
send_maximum:insert seg:{22017~22528}
send data packet: 22529 ~ 23040
send_maximum:insert seg:{22529~23040}
get ack:11777 seq:4294965875
is new ack
updatesb:11777
update timer
send data packet: 23041 ~ 23552
send_maximum:insert seg:{23041~23552}
send data packet: 23553 ~ 24064
send_maximum:insert seg:{23553~24064}
get ack:12289 seq:4294965875
is new ack
updatesb:12289
update timer
send data packet: 24065 ~ 24576
send_maximum:insert seg:{24065~24576}
send data packet: 24577 ~ 25088
send_maximum:insert seg:{24577~25088}
get ack:12801 seq:4294965875
is new ack
updatesb:12801
update timer
send data packet: 25089 ~ 25600
send_maximum:insert seg:{25089~25600}
send data packet: 25601 ~ 26112
send_maximum:insert seg:{25601~26112}
get ack:13313 seq:4294965875
is new ack
updatesb:13313
update timer
send data packet: 26113 ~ 26624
send_maximum:insert seg:{26113~26624}
send data packet: 26625 ~ 27136
send_maximum:insert seg:{26625~27136}
get ack:13825 seq:4294965875
is new ack
updatesb:13825
update timer
send data packet: 27137 ~ 27648
send_maximum:insert seg:{27137~27648}
send data packet: 27649 ~ 28160
send_maximum:insert seg:{27649~28160}
get ack:14337 seq:4294965875
is new ack
updatesb:14337
update timer
send data packet: 28161 ~ 28672
send_maximum:insert seg:{28161~28672}
send data packet: 28673 ~ 29184
send_maximum:insert seg:{28673~29184}
get ack:14849 seq:4294965875
is new ack
updatesb:14849
update timer
send data packet: 29185 ~ 29696
send_maximum:insert seg:{29185~29696}
send data packet: 29697 ~ 30208
send_maximum:insert seg:{29697~30208}
get ack:15361 seq:4294965875
is new ack
updatesb:15361
update timer
send data packet: 30209 ~ 30720
send_maximum:insert seg:{30209~30720}
send data packet: 30721 ~ 31232
send_maximum:insert seg:{30721~31232}
get ack:15873 seq:4294965875
is new ack
updatesb:15873
update timer
send data packet: 31233 ~ 31744
send_maximum:insert seg:{31233~31744}
send data packet: 31745 ~ 32256
send_maximum:insert seg:{31745~32256}
get ack:16385 seq:4294965875
is new ack
updatesb:16385
update timer
send data packet: 32257 ~ 32768
send_maximum:insert seg:{32257~32768}
send data packet: 32769 ~ 33280
send_maximum:insert seg:{32769~33280}
get ack:16897 seq:4294965875
is new ack
updatesb:16897
update timer
send data packet: 33281 ~ 33792
send_maximum:insert seg:{33281~33792}
send data packet: 33793 ~ 34304
send_maximum:insert seg:{33793~34304}
get ack:17409 seq:4294965875
is new ack
updatesb:17409
update timer
send data packet: 34305 ~ 34816
send_maximum:insert seg:{34305~34816}
send data packet: 34817 ~ 35328
send_maximum:insert seg:{34817~35328}
get ack:17921 seq:4294965875
is new ack
updatesb:17921
update timer
send data packet: 35329 ~ 35840
send_maximum:insert seg:{35329~35840}
send data packet: 35841 ~ 36352
send_maximum:insert seg:{35841~36352}
get ack:18433 seq:4294965875
is new ack
updatesb:18433
update timer
send data packet: 36353 ~ 36864
send_maximum:insert seg:{36353~36864}
send data packet: 36865 ~ 37376
send_maximum:insert seg:{36865~37376}
get ack:18945 seq:4294965875
is new ack
updatesb:18945
update timer
send data packet: 37377 ~ 37888
send_maximum:insert seg:{37377~37888}
send data packet: 37889 ~ 38400
send_maximum:insert seg:{37889~38400}
get ack:19457 seq:4294965875
is new ack
updatesb:19457
update timer
send data packet: 38401 ~ 38912
send_maximum:insert seg:{38401~38912}
send data packet: 38913 ~ 39424
send_maximum:insert seg:{38913~39424}
get ack:19969 seq:4294965875
is new ack
updatesb:19969
update timer
send data packet: 39425 ~ 39936
send_maximum:insert seg:{39425~39936}
send data packet: 39937 ~ 40448
send_maximum:insert seg:{39937~40448}
get ack:20481 seq:4294965875
is new ack
updatesb:20481
update timer
send data packet: 40449 ~ 40960
send_maximum:insert seg:{40449~40960}
send data packet: 40961 ~ 41472
send_maximum:insert seg:{40961~41472}
get ack:20993 seq:4294965875
is new ack
updatesb:20993
update timer
send data packet: 41473 ~ 41984
send_maximum:insert seg:{41473~41984}
send data packet: 41985 ~ 42496
send_maximum:insert seg:{41985~42496}
get ack:21505 seq:4294965875
is new ack
updatesb:21505
update timer
send data packet: 42497 ~ 43008
send_maximum:insert seg:{42497~43008}
send data packet: 43009 ~ 43520
send_maximum:insert seg:{43009~43520}
get ack:22017 seq:4294965875
is new ack
updatesb:22017
update timer
send data packet: 43521 ~ 44032
send_maximum:insert seg:{43521~44032}
send data packet: 44033 ~ 44544
send_maximum:insert seg:{44033~44544}
get ack:22529 seq:4294965875
is new ack
updatesb:22529
update timer
send data packet: 44545 ~ 45056
send_maximum:insert seg:{44545~45056}
send data packet: 45057 ~ 45568
send_maximum:insert seg:{45057~45568}
get ack:23041 seq:4294965875
is new ack
updatesb:23041
update timer
send data packet: 45569 ~ 46080
send_maximum:insert seg:{45569~46080}
send data packet: 46081 ~ 46592
send_maximum:insert seg:{46081~46592}
get ack:23553 seq:4294965875
is new ack
updatesb:23553
update timer
send data packet: 46593 ~ 47104
send_maximum:insert seg:{46593~47104}
send data packet: 47105 ~ 47616
send_maximum:insert seg:{47105~47616}
get ack:24065 seq:4294965875
is new ack
updatesb:24065
update timer
send data packet: 47617 ~ 48128
send_maximum:insert seg:{47617~48128}
send data packet: 48129 ~ 48640
send_maximum:insert seg:{48129~48640}
get ack:24577 seq:4294965875
is new ack
updatesb:24577
update timer
send data packet: 48641 ~ 49152
send_maximum:insert seg:{48641~49152}
send data packet: 49153 ~ 49664
send_maximum:insert seg:{49153~49664}
get ack:25089 seq:4294965875
is new ack
updatesb:25089
update timer
send data packet: 49665 ~ 50176
send_maximum:insert seg:{49665~50176}
send data packet: 50177 ~ 50688
send_maximum:insert seg:{50177~50688}
get ack:25601 seq:4294965875
is new ack
updatesb:25601
update timer
send data packet: 50689 ~ 51200
send_maximum:insert seg:{50689~51200}
send data packet: 51201 ~ 51712
send_maximum:insert seg:{51201~51712}
get ack:26113 seq:4294965875
is new ack
updatesb:26113
update timer
send data packet: 51713 ~ 52224
send_maximum:insert seg:{51713~52224}
send data packet: 52225 ~ 52736
send_maximum:insert seg:{52225~52736}
get ack:26625 seq:4294965875
is new ack
updatesb:26625
update timer
send data packet: 52737 ~ 53248
send_maximum:insert seg:{52737~53248}
send data packet: 53249 ~ 53760
send_maximum:insert seg:{53249~53760}
get ack:27137 seq:4294965875
is new ack
updatesb:27137
update timer
send data packet: 53761 ~ 54272
send_maximum:insert seg:{53761~54272}
send data packet: 54273 ~ 54784
send_maximum:insert seg:{54273~54784}
get ack:27649 seq:4294965875
is new ack
updatesb:27649
update timer
send data packet: 54785 ~ 55296
send_maximum:insert seg:{54785~55296}
send data packet: 55297 ~ 55808
send_maximum:insert seg:{55297~55808}
get ack:28161 seq:4294965875
is new ack
updatesb:28161
update timer
send data packet: 55809 ~ 56320
send_maximum:insert seg:{55809~56320}
send data packet: 56321 ~ 56832
send_maximum:insert seg:{56321~56832}
get ack:28673 seq:4294965875
is new ack
updatesb:28673
update timer
send data packet: 56833 ~ 57344
send_maximum:insert seg:{56833~57344}
send data packet: 57345 ~ 57856
send_maximum:insert seg:{57345~57856}
get ack:29185 seq:4294965875
is new ack
updatesb:29185
update timer
send data packet: 57857 ~ 58368
send_maximum:insert seg:{57857~58368}
send data packet: 58369 ~ 58880
send_maximum:insert seg:{58369~58880}
get ack:29697 seq:4294965875
is new ack
updatesb:29697
update timer
send data packet: 58881 ~ 59392
send_maximum:insert seg:{58881~59392}
send data packet: 59393 ~ 59904
send_maximum:insert seg:{59393~59904}
get ack:30209 seq:4294965875
is new ack
updatesb:30209
update timer
send data packet: 59905 ~ 60416
send_maximum:insert seg:{59905~60416}
send data packet: 60417 ~ 60928
send_maximum:insert seg:{60417~60928}
get ack:30721 seq:4294965875
is new ack
updatesb:30721
update timer
send data packet: 60929 ~ 61440
send_maximum:insert seg:{60929~61440}
send data packet: 61441 ~ 61952
send_maximum:insert seg:{61441~61952}
get ack:31233 seq:4294965875
is new ack
updatesb:31233
update timer
send data packet: 61953 ~ 62464
send_maximum:insert seg:{61953~62464}
send data packet: 62465 ~ 62976
send_maximum:insert seg:{62465~62976}
get ack:31745 seq:4294965875
is new ack
updatesb:31745
update timer
send data packet: 62977 ~ 63488
send_maximum:insert seg:{62977~63488}
send data packet: 63489 ~ 64000
send_maximum:insert seg:{63489~64000}
get ack:32257 seq:4294965875
is new ack
updatesb:32257
update timer
send data packet: 64001 ~ 64512
send_maximum:insert seg:{64001~64512}
send data packet: 64513 ~ 65024
send_maximum:insert seg:{64513~65024}
get ack:32769 seq:4294965875
is new ack
updatesb:32769
update timer
send data packet: 65025 ~ 65536
send_maximum:insert seg:{65025~65536}
send data packet: 65537 ~ 66048
send_maximum:insert seg:{65537~66048}
get ack:33281 seq:4294965875
is new ack
updatesb:33281
update timer
send data packet: 66049 ~ 66560
send_maximum:insert seg:{66049~66560}
send data packet: 66561 ~ 67072
send_maximum:insert seg:{66561~67072}
get ack:33793 seq:4294965875
is new ack
updatesb:33793
update timer
send data packet: 67073 ~ 67584
send_maximum:insert seg:{67073~67584}
send data packet: 67585 ~ 68096
send_maximum:insert seg:{67585~68096}
get ack:34305 seq:4294965875
is new ack
updatesb:34305
update timer
send data packet: 68097 ~ 68608
send_maximum:insert seg:{68097~68608}
send data packet: 68609 ~ 69120
send_maximum:insert seg:{68609~69120}
get ack:34817 seq:4294965875
is new ack
updatesb:34817
update timer
send data packet: 69121 ~ 69632
send_maximum:insert seg:{69121~69632}
send data packet: 69633 ~ 70144
send_maximum:insert seg:{69633~70144}
get ack:35329 seq:4294965875
is new ack
updatesb:35329
update timer
send data packet: 70145 ~ 70656
send_maximum:insert seg:{70145~70656}
send data packet: 70657 ~ 71168
send_maximum:insert seg:{70657~71168}
get ack:35841 seq:4294965875
is new ack
updatesb:35841
update timer
send data packet: 71169 ~ 71680
send_maximum:insert seg:{71169~71680}
send data packet: 71681 ~ 72192
send_maximum:insert seg:{71681~72192}
get ack:36353 seq:4294965875
is new ack
updatesb:36353
update timer
send data packet: 72193 ~ 72704
send_maximum:insert seg:{72193~72704}
send data packet: 72705 ~ 73216
send_maximum:insert seg:{72705~73216}
get ack:36865 seq:4294965875
is new ack
updatesb:36865
update timer
send data packet: 73217 ~ 73728
send_maximum:insert seg:{73217~73728}
send data packet: 73729 ~ 74240
send_maximum:insert seg:{73729~74240}
get ack:37377 seq:4294965875
is new ack
updatesb:37377
update timer
send data packet: 74241 ~ 74752
send_maximum:insert seg:{74241~74752}
send data packet: 74753 ~ 75264
send_maximum:insert seg:{74753~75264}
get ack:37889 seq:4294965875
is new ack
updatesb:37889
update timer
send data packet: 75265 ~ 75776
send_maximum:insert seg:{75265~75776}
send data packet: 75777 ~ 76288
send_maximum:insert seg:{75777~76288}
get ack:38401 seq:4294965875
is new ack
updatesb:38401
update timer
send data packet: 76289 ~ 76800
send_maximum:insert seg:{76289~76800}
send data packet: 76801 ~ 77312
send_maximum:insert seg:{76801~77312}
get ack:38913 seq:4294965875
is new ack
updatesb:38913
update timer
send data packet: 77313 ~ 77824
send_maximum:insert seg:{77313~77824}
send data packet: 77825 ~ 78336
send_maximum:insert seg:{77825~78336}
get ack:39425 seq:4294965875
is new ack
updatesb:39425
update timer
send data packet: 78337 ~ 78848
send_maximum:insert seg:{78337~78848}
send data packet: 78849 ~ 79360
send_maximum:insert seg:{78849~79360}
get ack:39937 seq:4294965875
is new ack
updatesb:39937
update timer
send data packet: 79361 ~ 79872
send_maximum:insert seg:{79361~79872}
send data packet: 79873 ~ 80384
send_maximum:insert seg:{79873~80384}
get ack:40449 seq:4294965875
is new ack
updatesb:40449
update timer
send data packet: 80385 ~ 80896
send_maximum:insert seg:{80385~80896}
send data packet: 80897 ~ 81408
send_maximum:insert seg:{80897~81408}
get ack:40961 seq:4294965875
is new ack
updatesb:40961
update timer
send data packet: 81409 ~ 81920
send_maximum:insert seg:{81409~81920}
send data packet: 81921 ~ 82432
send_maximum:insert seg:{81921~82432}
get ack:41473 seq:4294965875
is new ack
updatesb:41473
update timer
send data packet: 82433 ~ 82944
send_maximum:insert seg:{82433~82944}
send data packet: 82945 ~ 83456
send_maximum:insert seg:{82945~83456}
get ack:41985 seq:4294965875
is new ack
updatesb:41985
update timer
send data packet: 83457 ~ 83968
send_maximum:insert seg:{83457~83968}
send data packet: 83969 ~ 84480
send_maximum:insert seg:{83969~84480}
get ack:42497 seq:4294965875
is new ack
updatesb:42497
update timer
send data packet: 84481 ~ 84992
send_maximum:insert seg:{84481~84992}
send data packet: 84993 ~ 85504
send_maximum:insert seg:{84993~85504}
get ack:43009 seq:4294965875
is new ack
updatesb:43009
update timer
send data packet: 85505 ~ 86016
send_maximum:insert seg:{85505~86016}
send data packet: 86017 ~ 86528
send_maximum:insert seg:{86017~86528}
get ack:43521 seq:4294965875
is new ack
updatesb:43521
update timer
send data packet: 86529 ~ 87040
send_maximum:insert seg:{86529~87040}
send data packet: 87041 ~ 87552
send_maximum:insert seg:{87041~87552}
get ack:44033 seq:4294965875
is new ack
updatesb:44033
update timer
send data packet: 87553 ~ 88064
send_maximum:insert seg:{87553~88064}
send data packet: 88065 ~ 88576
send_maximum:insert seg:{88065~88576}
get ack:44545 seq:4294965875
is new ack
updatesb:44545
update timer
send data packet: 88577 ~ 89088
send_maximum:insert seg:{88577~89088}
send data packet: 89089 ~ 89600
send_maximum:insert seg:{89089~89600}
get ack:45057 seq:4294965875
is new ack
updatesb:45057
update timer
send data packet: 89601 ~ 90112
send_maximum:insert seg:{89601~90112}
send data packet: 90113 ~ 90624
send_maximum:insert seg:{90113~90624}
get ack:45569 seq:4294965875
is new ack
updatesb:45569
update timer
send data packet: 90625 ~ 91136
send_maximum:insert seg:{90625~91136}
send data packet: 91137 ~ 91648
send_maximum:insert seg:{91137~91648}
get ack:46081 seq:4294965875
is new ack
updatesb:46081
update timer
send data packet: 91649 ~ 92160
send_maximum:insert seg:{91649~92160}
send data packet: 92161 ~ 92672
send_maximum:insert seg:{92161~92672}
get ack:46593 seq:4294965875
is new ack
updatesb:46593
update timer
send data packet: 92673 ~ 93184
send_maximum:insert seg:{92673~93184}
send data packet: 93185 ~ 93696
send_maximum:insert seg:{93185~93696}
get ack:47105 seq:4294965875
is new ack
updatesb:47105
update timer
send data packet: 93697 ~ 94208
send_maximum:insert seg:{93697~94208}
send data packet: 94209 ~ 94720
send_maximum:insert seg:{94209~94720}
get ack:47617 seq:4294965875
is new ack
updatesb:47617
update timer
send data packet: 94721 ~ 95232
send_maximum:insert seg:{94721~95232}
send data packet: 95233 ~ 95744
send_maximum:insert seg:{95233~95744}
get ack:48129 seq:4294965875
is new ack
updatesb:48129
update timer
send data packet: 95745 ~ 96256
send_maximum:insert seg:{95745~96256}
send data packet: 96257 ~ 96768
send_maximum:insert seg:{96257~96768}
get ack:48641 seq:4294965875
is new ack
updatesb:48641
update timer
send data packet: 96769 ~ 97280
send_maximum:insert seg:{96769~97280}
send data packet: 97281 ~ 97792
send_maximum:insert seg:{97281~97792}
get ack:49153 seq:4294965875
is new ack
updatesb:49153
update timer
send data packet: 97793 ~ 98304
send_maximum:insert seg:{97793~98304}
send data packet: 98305 ~ 98816
send_maximum:insert seg:{98305~98816}
get ack:49665 seq:4294965875
is new ack
updatesb:49665
update timer
send data packet: 98817 ~ 99328
send_maximum:insert seg:{98817~99328}
send data packet: 99329 ~ 99840
send_maximum:insert seg:{99329~99840}
get ack:50177 seq:4294965875
is new ack
updatesb:50177
update timer
send data packet: 99841 ~ 100352
send_maximum:insert seg:{99841~100352}
send data packet: 100353 ~ 100864
send_maximum:insert seg:{100353~100864}
get ack:50689 seq:4294965875
is new ack
updatesb:50689
update timer
send data packet: 100865 ~ 101376
send_maximum:insert seg:{100865~101376}
send data packet: 101377 ~ 101888
send_maximum:insert seg:{101377~101888}
get ack:51201 seq:4294965875
is new ack
updatesb:51201
update timer
send data packet: 101889 ~ 102400
send_maximum:insert seg:{101889~102400}
get ack:51713 seq:4294965875
is new ack
updatesb:51713
update timer
send data packet: 102401 ~ 102912
send_maximum:insert seg:{102401~102912}
get ack:52225 seq:4294965875
is new ack
updatesb:52225
update timer
send data packet: 102913 ~ 103424
send_maximum:insert seg:{102913~103424}
get ack:52737 seq:4294965875
is new ack
updatesb:52737
update timer
send data packet: 103425 ~ 103936
send_maximum:insert seg:{103425~103936}
get ack:53249 seq:4294965875
is new ack
updatesb:53249
update timer
send data packet: 103937 ~ 104448
send_maximum:insert seg:{103937~104448}
get ack:53761 seq:4294965875
is new ack
updatesb:53761
update timer
send data packet: 104449 ~ 104960
send_maximum:insert seg:{104449~104960}
get ack:54273 seq:4294965875
is new ack
updatesb:54273
update timer
send data packet: 104961 ~ 105472
send_maximum:insert seg:{104961~105472}
get ack:54785 seq:4294965875
is new ack
updatesb:54785
update timer
send data packet: 105473 ~ 105984
send_maximum:insert seg:{105473~105984}
get ack:55297 seq:4294965875
is new ack
updatesb:55297
update timer
send data packet: 105985 ~ 106496
send_maximum:insert seg:{105985~106496}
get ack:55809 seq:4294965875
is new ack
updatesb:55809
update timer
send data packet: 106497 ~ 107008
send_maximum:insert seg:{106497~107008}
get ack:56321 seq:4294965875
is new ack
updatesb:56321
update timer
send data packet: 107009 ~ 107520
send_maximum:insert seg:{107009~107520}
get ack:56833 seq:4294965875
is new ack
updatesb:56833
update timer
send data packet: 107521 ~ 108032
send_maximum:insert seg:{107521~108032}
get ack:57345 seq:4294965875
is new ack
updatesb:57345
update timer
send data packet: 108033 ~ 108544
send_maximum:insert seg:{108033~108544}
get ack:57857 seq:4294965875
is new ack
updatesb:57857
update timer
send data packet: 108545 ~ 109056
send_maximum:insert seg:{108545~109056}
get ack:58369 seq:4294965875
is new ack
updatesb:58369
update timer
send data packet: 109057 ~ 109568
send_maximum:insert seg:{109057~109568}
get ack:58881 seq:4294965875
is new ack
updatesb:58881
update timer
send data packet: 109569 ~ 110080
send_maximum:insert seg:{109569~110080}
get ack:59393 seq:4294965875
is new ack
updatesb:59393
update timer
send data packet: 110081 ~ 110592
send_maximum:insert seg:{110081~110592}
get ack:59905 seq:4294965875
is new ack
updatesb:59905
update timer
send data packet: 110593 ~ 111104
send_maximum:insert seg:{110593~111104}
get ack:60417 seq:4294965875
is new ack
updatesb:60417
update timer
send data packet: 111105 ~ 111616
send_maximum:insert seg:{111105~111616}
get ack:60929 seq:4294965875
is new ack
updatesb:60929
update timer
send data packet: 111617 ~ 112128
send_maximum:insert seg:{111617~112128}
get ack:61441 seq:4294965875
is new ack
updatesb:61441
update timer
send data packet: 112129 ~ 112640
send_maximum:insert seg:{112129~112640}
get ack:61953 seq:4294965875
is new ack
updatesb:61953
update timer
send data packet: 112641 ~ 113152
send_maximum:insert seg:{112641~113152}
get ack:62465 seq:4294965875
is new ack
updatesb:62465
update timer
send data packet: 113153 ~ 113664
send_maximum:insert seg:{113153~113664}
get ack:62977 seq:4294965875
is new ack
updatesb:62977
update timer
send data packet: 113665 ~ 114176
send_maximum:insert seg:{113665~114176}
get ack:63489 seq:4294965875
is new ack
updatesb:63489
update timer
send data packet: 114177 ~ 114688
send_maximum:insert seg:{114177~114688}
get ack:64001 seq:4294965875
is new ack
updatesb:64001
update timer
send data packet: 114689 ~ 115200
send_maximum:insert seg:{114689~115200}
get ack:64513 seq:4294965875
is new ack
updatesb:64513
update timer
send data packet: 115201 ~ 115712
send_maximum:insert seg:{115201~115712}
get ack:65025 seq:4294965875
is new ack
updatesb:65025
update timer
send data packet: 115713 ~ 116224
send_maximum:insert seg:{115713~116224}
get ack:65537 seq:4294965875
is new ack
updatesb:65537
update timer
send data packet: 116225 ~ 116736
send_maximum:insert seg:{116225~116736}
get ack:66049 seq:4294965875
is new ack
updatesb:66049
update timer
send data packet: 116737 ~ 117248
send_maximum:insert seg:{116737~117248}
get ack:66561 seq:4294965875
is new ack
updatesb:66561
update timer
send data packet: 117249 ~ 117760
send_maximum:insert seg:{117249~117760}
get ack:67073 seq:4294965875
is new ack
updatesb:67073
update timer
send data packet: 117761 ~ 118272
send_maximum:insert seg:{117761~118272}
get ack:67585 seq:4294965875
is new ack
updatesb:67585
update timer
send data packet: 118273 ~ 118784
send_maximum:insert seg:{118273~118784}
get ack:68097 seq:4294965875
is new ack
updatesb:68097
update timer
send data packet: 118785 ~ 119296
send_maximum:insert seg:{118785~119296}
get ack:68609 seq:4294965875
is new ack
updatesb:68609
update timer
send data packet: 119297 ~ 119808
send_maximum:insert seg:{119297~119808}
get ack:69121 seq:4294965875
is new ack
updatesb:69121
update timer
send data packet: 119809 ~ 120320
send_maximum:insert seg:{119809~120320}
get ack:69633 seq:4294965875
is new ack
updatesb:69633
update timer
send data packet: 120321 ~ 120832
send_maximum:insert seg:{120321~120832}
get ack:70145 seq:4294965875
is new ack
updatesb:70145
update timer
send data packet: 120833 ~ 121344
send_maximum:insert seg:{120833~121344}
get ack:70657 seq:4294965875
is new ack
updatesb:70657
update timer
send data packet: 121345 ~ 121856
send_maximum:insert seg:{121345~121856}
get ack:71169 seq:4294965875
is new ack
updatesb:71169
update timer
send data packet: 121857 ~ 122368
send_maximum:insert seg:{121857~122368}
get ack:71681 seq:4294965875
is new ack
updatesb:71681
update timer
send data packet: 122369 ~ 122880
send_maximum:insert seg:{122369~122880}
get ack:72193 seq:4294965875
is new ack
updatesb:72193
update timer
send data packet: 122881 ~ 123392
send_maximum:insert seg:{122881~123392}
get ack:72705 seq:4294965875
is new ack
updatesb:72705
update timer
send data packet: 123393 ~ 123904
send_maximum:insert seg:{123393~123904}
get ack:73217 seq:4294965875
is new ack
updatesb:73217
update timer
send data packet: 123905 ~ 124416
send_maximum:insert seg:{123905~124416}
get ack:73729 seq:4294965875
is new ack
updatesb:73729
update timer
send data packet: 124417 ~ 124928
send_maximum:insert seg:{124417~124928}
get ack:74241 seq:4294965875
is new ack
updatesb:74241
update timer
send data packet: 124929 ~ 125440
send_maximum:insert seg:{124929~125440}
get ack:74753 seq:4294965875
is new ack
updatesb:74753
update timer
send data packet: 125441 ~ 125952
send_maximum:insert seg:{125441~125952}
get ack:75265 seq:4294965875
is new ack
updatesb:75265
update timer
send data packet: 125953 ~ 126464
send_maximum:insert seg:{125953~126464}
get ack:75777 seq:4294965875
is new ack
updatesb:75777
update timer
send data packet: 126465 ~ 126976
send_maximum:insert seg:{126465~126976}
get ack:76289 seq:4294965875
is new ack
updatesb:76289
update timer
send data packet: 126977 ~ 127488
send_maximum:insert seg:{126977~127488}
get ack:76801 seq:4294965875
is new ack
updatesb:76801
update timer
send data packet: 127489 ~ 128000
send_maximum:insert seg:{127489~128000}
get ack:77313 seq:4294965875
is new ack
updatesb:77313
update timer
send data packet: 128001 ~ 128512
send_maximum:insert seg:{128001~128512}
get ack:77825 seq:4294965875
is new ack
updatesb:77825
update timer
send data packet: 128513 ~ 129024
send_maximum:insert seg:{128513~129024}
get ack:78337 seq:4294965875
is new ack
updatesb:78337
update timer
send data packet: 129025 ~ 129536
send_maximum:insert seg:{129025~129536}
get ack:78849 seq:4294965875
is new ack
updatesb:78849
update timer
send data packet: 129537 ~ 130048
send_maximum:insert seg:{129537~130048}
get ack:79361 seq:4294965875
is new ack
updatesb:79361
update timer
send data packet: 130049 ~ 130560
send_maximum:insert seg:{130049~130560}
get ack:79873 seq:4294965875
is new ack
updatesb:79873
update timer
send data packet: 130561 ~ 131072
send_maximum:insert seg:{130561~131072}
get ack:80385 seq:4294965875
is new ack
updatesb:80385
update timer
send_maximum: send fin
send FIN#:131073
get ack:80897 seq:4294965875
is new ack
updatesb:80897
update timer
get ack:81409 seq:4294965875
is new ack
updatesb:81409
update timer
get ack:81921 seq:4294965875
is new ack
updatesb:81921
update timer
get ack:82433 seq:4294965875
is new ack
updatesb:82433
update timer
get ack:82945 seq:4294965875
is new ack
updatesb:82945
update timer
get ack:83457 seq:4294965875
is new ack
updatesb:83457
update timer
get ack:83969 seq:4294965875
is new ack
updatesb:83969
update timer
get ack:84481 seq:4294965875
is new ack
updatesb:84481
update timer
get ack:84993 seq:4294965875
is new ack
updatesb:84993
update timer
get ack:85505 seq:4294965875
is new ack
updatesb:85505
update timer
get ack:86017 seq:4294965875
is new ack
updatesb:86017
update timer
get ack:86529 seq:4294965875
is new ack
updatesb:86529
update timer
get ack:87041 seq:4294965875
is new ack
updatesb:87041
update timer
get ack:87553 seq:4294965875
is new ack
updatesb:87553
update timer
get ack:88065 seq:4294965875
is new ack
updatesb:88065
update timer
get ack:88577 seq:4294965875
is new ack
updatesb:88577
update timer
get ack:89089 seq:4294965875
is new ack
updatesb:89089
update timer
get ack:89601 seq:4294965875
is new ack
updatesb:89601
update timer
get ack:90113 seq:4294965875
is new ack
updatesb:90113
update timer
get ack:90625 seq:4294965875
is new ack
updatesb:90625
update timer
get ack:91137 seq:4294965875
is new ack
updatesb:91137
update timer
get ack:91649 seq:4294965875
is new ack
updatesb:91649
update timer
get ack:92161 seq:4294965875
is new ack
updatesb:92161
update timer
get ack:92673 seq:4294965875
is new ack
updatesb:92673
update timer
get ack:93185 seq:4294965875
is new ack
updatesb:93185
update timer
get ack:93697 seq:4294965875
is new ack
updatesb:93697
update timer
get ack:94209 seq:4294965875
is new ack
updatesb:94209
update timer
get ack:94721 seq:4294965875
is new ack
updatesb:94721
update timer
get ack:95233 seq:4294965875
is new ack
updatesb:95233
update timer
get ack:95745 seq:4294965875
is new ack
updatesb:95745
update timer
get ack:96257 seq:4294965875
is new ack
updatesb:96257
update timer
get ack:96769 seq:4294965875
is new ack
updatesb:96769
update timer
get ack:97281 seq:4294965875
is new ack
updatesb:97281
update timer
get ack:97793 seq:4294965875
is new ack
updatesb:97793
update timer
get ack:98305 seq:4294965875
is new ack
updatesb:98305
update timer
get ack:98817 seq:4294965875
is new ack
updatesb:98817
update timer
get ack:99329 seq:4294965875
is new ack
updatesb:99329
update timer
get ack:99841 seq:4294965875
is new ack
updatesb:99841
update timer
get ack:100353 seq:4294965875
is new ack
updatesb:100353
update timer
get ack:100865 seq:4294965875
is new ack
updatesb:100865
update timer
get ack:101377 seq:4294965875
is new ack
updatesb:101377
update timer
get ack:101889 seq:4294965875
is new ack
updatesb:101889
update timer
get ack:102401 seq:4294965875
is new ack
updatesb:102401
update timer
get ack:102913 seq:4294965875
is new ack
updatesb:102913
update timer
get ack:103425 seq:4294965875
is new ack
updatesb:103425
update timer
get ack:103937 seq:4294965875
is new ack
updatesb:103937
update timer
get ack:104449 seq:4294965875
is new ack
updatesb:104449
update timer
get ack:104961 seq:4294965875
is new ack
updatesb:104961
update timer
get ack:105473 seq:4294965875
is new ack
updatesb:105473
update timer
get ack:105985 seq:4294965875
is new ack
updatesb:105985
update timer
get ack:106497 seq:4294965875
is new ack
updatesb:106497
update timer
get ack:107009 seq:4294965875
is new ack
updatesb:107009
update timer
get ack:107521 seq:4294965875
is new ack
updatesb:107521
update timer
get ack:108033 seq:4294965875
is new ack
updatesb:108033
update timer
get ack:108545 seq:4294965875
is new ack
updatesb:108545
update timer
get ack:109057 seq:4294965875
is new ack
updatesb:109057
update timer
get ack:109569 seq:4294965875
is new ack
updatesb:109569
update timer
get ack:110081 seq:4294965875
is new ack
updatesb:110081
update timer
get ack:110593 seq:4294965875
is new ack
updatesb:110593
update timer
get ack:111105 seq:4294965875
is new ack
updatesb:111105
update timer
get ack:111617 seq:4294965875
is new ack
updatesb:111617
update timer
get ack:112129 seq:4294965875
is new ack
updatesb:112129
update timer
get ack:112641 seq:4294965875
is new ack
updatesb:112641
update timer
get ack:113153 seq:4294965875
is new ack
updatesb:113153
update timer
get ack:113665 seq:4294965875
is new ack
updatesb:113665
update timer
get ack:114177 seq:4294965875
is new ack
updatesb:114177
update timer
get ack:114689 seq:4294965875
is new ack
updatesb:114689
update timer
get ack:115201 seq:4294965875
is new ack
updatesb:115201
update timer
get ack:115713 seq:4294965875
is new ack
updatesb:115713
update timer
get ack:116225 seq:4294965875
is new ack
updatesb:116225
update timer
get ack:116737 seq:4294965875
is new ack
updatesb:116737
update timer
get ack:117249 seq:4294965875
is new ack
updatesb:117249
update timer
get ack:117761 seq:4294965875
is new ack
updatesb:117761
update timer
get ack:118273 seq:4294965875
is new ack
updatesb:118273
update timer
get ack:118785 seq:4294965875
is new ack
updatesb:118785
update timer
get ack:119297 seq:4294965875
is new ack
updatesb:119297
update timer
get ack:119809 seq:4294965875
is new ack
updatesb:119809
update timer
get ack:120321 seq:4294965875
is new ack
updatesb:120321
update timer
get ack:120833 seq:4294965875
is new ack
updatesb:120833
update timer
get ack:121345 seq:4294965875
is new ack
updatesb:121345
update timer
get ack:121857 seq:4294965875
is new ack
updatesb:121857
update timer
get ack:122369 seq:4294965875
is new ack
updatesb:122369
update timer
get ack:122881 seq:4294965875
is new ack
updatesb:122881
update timer
get ack:123393 seq:4294965875
is new ack
updatesb:123393
update timer
get ack:123905 seq:4294965875
is new ack
updatesb:123905
update timer
get ack:124417 seq:4294965875
is new ack
updatesb:124417
update timer
get ack:124929 seq:4294965875
is new ack
updatesb:124929
update timer
get ack:125441 seq:4294965875
is new ack
updatesb:125441
update timer
get ack:125953 seq:4294965875
is new ack
updatesb:125953
update timer
get ack:126465 seq:4294965875
is new ack
updatesb:126465
update timer
get ack:126977 seq:4294965875
is new ack
updatesb:126977
update timer
get ack:127489 seq:4294965875
is new ack
updatesb:127489
update timer
get ack:128001 seq:4294965875
is new ack
updatesb:128001
update timer
get ack:128513 seq:4294965875
is new ack
updatesb:128513
update timer
get ack:129025 seq:4294965875
is new ack
updatesb:129025
update timer
get ack:129537 seq:4294965875
is new ack
updatesb:129537
update timer
get ack:130049 seq:4294965875
is new ack
updatesb:130049
update timer
get ack:130561 seq:4294965875
is new ack
updatesb:130561
update timer
get ack:131073 seq:4294965875
is new ack
updatesb:131073
update timer
get ack:131074 seq:4294965875
is new ack
updatesb:131074
stop timer
[       OK ] TestEnv_Any.TestTransfer_Accept_Send_EOF (41 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Recv_Symmetric
get ack:1 seq:4294967269
get ack:1 seq:4294967269
get ack:1 seq:485
get ack:1 seq:997
get ack:1 seq:1509
get ack:1 seq:2021
get ack:1 seq:2533
get ack:1 seq:3045
get ack:1 seq:3557
get ack:1 seq:4069
get ack:1 seq:4581
get ack:1 seq:5093
get ack:1 seq:5605
get ack:1 seq:6117
get ack:1 seq:6629
get ack:1 seq:7141
get ack:1 seq:7653
get ack:1 seq:8165
get ack:1 seq:8677
get ack:1 seq:9189
get ack:1 seq:9701
get ack:1 seq:10213
get ack:1 seq:10725
get ack:1 seq:11237
get ack:1 seq:11749
get ack:1 seq:12261
get ack:1 seq:12773
get ack:1 seq:13285
get ack:1 seq:13797
get ack:1 seq:14309
get ack:1 seq:14821
get ack:1 seq:15333
get ack:1 seq:15845
get ack:1 seq:16357
get ack:1 seq:16869
get ack:1 seq:17381
get ack:1 seq:17893
get ack:1 seq:18405
get ack:1 seq:18917
get ack:1 seq:19429
get ack:1 seq:19941
get ack:1 seq:20453
get ack:1 seq:20965
get ack:1 seq:21477
get ack:1 seq:21989
get ack:1 seq:22501
get ack:1 seq:23013
get ack:1 seq:23525
get ack:1 seq:24037
get ack:1 seq:24549
get ack:1 seq:25061
get ack:1 seq:25573
get ack:1 seq:26085
get ack:1 seq:26597
get ack:1 seq:27109
get ack:1 seq:27621
get ack:1 seq:28133
get ack:1 seq:28645
get ack:1 seq:29157
get ack:1 seq:29669
get ack:1 seq:30181
get ack:1 seq:30693
get ack:1 seq:31205
get ack:1 seq:31717
get ack:1 seq:32229
get ack:1 seq:32741
get ack:1 seq:33253
get ack:1 seq:33765
get ack:1 seq:34277
get ack:1 seq:34789
get ack:1 seq:35301
get ack:1 seq:35813
get ack:1 seq:36325
get ack:1 seq:36837
get ack:1 seq:37349
get ack:1 seq:37861
get ack:1 seq:38373
get ack:1 seq:38885
get ack:1 seq:39397
get ack:1 seq:39909
get ack:1 seq:40421
get ack:1 seq:40933
get ack:1 seq:41445
get ack:1 seq:41957
get ack:1 seq:42469
get ack:1 seq:42981
get ack:1 seq:43493
get ack:1 seq:44005
get ack:1 seq:44517
get ack:1 seq:45029
get ack:1 seq:45541
get ack:1 seq:46053
get ack:1 seq:46565
get ack:1 seq:47077
get ack:1 seq:47589
get ack:1 seq:48101
get ack:1 seq:48613
get ack:1 seq:49125
get ack:1 seq:49637
get ack:1 seq:50149
get ack:1 seq:50661
get ack:1 seq:51173
get ack:1 seq:51685
get ack:1 seq:52197
get ack:1 seq:52709
get ack:1 seq:53221
get ack:1 seq:53733
get ack:1 seq:54245
get ack:1 seq:54757
get ack:1 seq:55269
get ack:1 seq:55781
get ack:1 seq:56293
get ack:1 seq:56805
get ack:1 seq:57317
get ack:1 seq:57829
get ack:1 seq:58341
get ack:1 seq:58853
get ack:1 seq:59365
get ack:1 seq:59877
get ack:1 seq:60389
get ack:1 seq:60901
get ack:1 seq:61413
get ack:1 seq:61925
get ack:1 seq:62437
get ack:1 seq:62949
get ack:1 seq:63461
get ack:1 seq:63973
get ack:1 seq:64485
get ack:1 seq:64997
get ack:1 seq:65509
get ack:1 seq:66021
get ack:1 seq:66533
get ack:1 seq:67045
get ack:1 seq:67557
get ack:1 seq:68069
get ack:1 seq:68581
get ack:1 seq:69093
get ack:1 seq:69605
get ack:1 seq:70117
get ack:1 seq:70629
get ack:1 seq:71141
get ack:1 seq:71653
get ack:1 seq:72165
get ack:1 seq:72677
get ack:1 seq:73189
get ack:1 seq:73701
get ack:1 seq:74213
get ack:1 seq:74725
get ack:1 seq:75237
get ack:1 seq:75749
get ack:1 seq:76261
get ack:1 seq:76773
get ack:1 seq:77285
get ack:1 seq:77797
get ack:1 seq:78309
get ack:1 seq:78821
get ack:1 seq:79333
get ack:1 seq:79845
get ack:1 seq:80357
get ack:1 seq:80869
get ack:1 seq:81381
get ack:1 seq:81893
get ack:1 seq:82405
get ack:1 seq:82917
get ack:1 seq:83429
get ack:1 seq:83941
get ack:1 seq:84453
get ack:1 seq:84965
get ack:1 seq:85477
get ack:1 seq:85989
get ack:1 seq:86501
get ack:1 seq:87013
get ack:1 seq:87525
get ack:1 seq:88037
get ack:1 seq:88549
get ack:1 seq:89061
get ack:1 seq:89573
get ack:1 seq:90085
get ack:1 seq:90597
get ack:1 seq:91109
get ack:1 seq:91621
get ack:1 seq:92133
get ack:1 seq:92645
get ack:1 seq:93157
get ack:1 seq:93669
get ack:1 seq:94181
get ack:1 seq:94693
get ack:1 seq:95205
get ack:1 seq:95717
get ack:1 seq:96229
get ack:1 seq:96741
get ack:1 seq:97253
get ack:1 seq:97765
get ack:1 seq:98277
get ack:1 seq:98789
get ack:1 seq:99301
get ack:1 seq:99813
get ack:1 seq:100325
get ack:1 seq:100837
get ack:1 seq:101349
get ack:1 seq:101861
get ack:1 seq:102373
get ack:1 seq:102885
get ack:1 seq:103397
get ack:1 seq:103909
get ack:1 seq:104421
get ack:1 seq:104933
get ack:1 seq:105445
get ack:1 seq:105957
get ack:1 seq:106469
get ack:1 seq:106981
get ack:1 seq:107493
get ack:1 seq:108005
get ack:1 seq:108517
get ack:1 seq:109029
get ack:1 seq:109541
get ack:1 seq:110053
get ack:1 seq:110565
get ack:1 seq:111077
get ack:1 seq:111589
get ack:1 seq:112101
get ack:1 seq:112613
get ack:1 seq:113125
get ack:1 seq:113637
get ack:1 seq:114149
get ack:1 seq:114661
get ack:1 seq:115173
get ack:1 seq:115685
get ack:1 seq:116197
get ack:1 seq:116709
get ack:1 seq:117221
get ack:1 seq:117733
get ack:1 seq:118245
get ack:1 seq:118757
get ack:1 seq:119269
get ack:1 seq:119781
get ack:1 seq:120293
get ack:1 seq:120805
get ack:1 seq:121317
get ack:1 seq:121829
get ack:1 seq:122341
get ack:1 seq:122853
get ack:1 seq:123365
get ack:1 seq:123877
get ack:1 seq:124389
get ack:1 seq:124901
get ack:1 seq:125413
get ack:1 seq:125925
get ack:1 seq:126437
get ack:1 seq:126949
get ack:1 seq:127461
get ack:1 seq:127973
get ack:1 seq:128485
get ack:1 seq:128997
get ack:1 seq:129509
get ack:1 seq:130021
get ack:1 seq:130533
send_maximum: send fin
send FIN#:1
get ack:2 seq:131046
is new ack
updatesb:2
[       OK ] TestEnv_Any.TestTransfer_Accept_Recv_Symmetric (49 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Recv_EOF
get ack:1 seq:4294967237
get ack:1 seq:4294967237
get ack:1 seq:453
get ack:1 seq:965
get ack:1 seq:1477
get ack:1 seq:1989
get ack:1 seq:2501
get ack:1 seq:3013
get ack:1 seq:3525
get ack:1 seq:4037
get ack:1 seq:4549
get ack:1 seq:5061
get ack:1 seq:5573
get ack:1 seq:6085
get ack:1 seq:6597
get ack:1 seq:7109
get ack:1 seq:7621
get ack:1 seq:8133
get ack:1 seq:8645
get ack:1 seq:9157
get ack:1 seq:9669
get ack:1 seq:10181
get ack:1 seq:10693
get ack:1 seq:11205
get ack:1 seq:11717
get ack:1 seq:12229
get ack:1 seq:12741
get ack:1 seq:13253
get ack:1 seq:13765
get ack:1 seq:14277
get ack:1 seq:14789
get ack:1 seq:15301
get ack:1 seq:15813
get ack:1 seq:16325
get ack:1 seq:16837
get ack:1 seq:17349
get ack:1 seq:17861
get ack:1 seq:18373
get ack:1 seq:18885
get ack:1 seq:19397
get ack:1 seq:19909
get ack:1 seq:20421
get ack:1 seq:20933
get ack:1 seq:21445
get ack:1 seq:21957
get ack:1 seq:22469
get ack:1 seq:22981
get ack:1 seq:23493
get ack:1 seq:24005
get ack:1 seq:24517
get ack:1 seq:25029
get ack:1 seq:25541
get ack:1 seq:26053
get ack:1 seq:26565
get ack:1 seq:27077
get ack:1 seq:27589
get ack:1 seq:28101
get ack:1 seq:28613
get ack:1 seq:29125
get ack:1 seq:29637
get ack:1 seq:30149
get ack:1 seq:30661
get ack:1 seq:31173
get ack:1 seq:31685
get ack:1 seq:32197
get ack:1 seq:32709
get ack:1 seq:33221
get ack:1 seq:33733
get ack:1 seq:34245
get ack:1 seq:34757
get ack:1 seq:35269
get ack:1 seq:35781
get ack:1 seq:36293
get ack:1 seq:36805
get ack:1 seq:37317
get ack:1 seq:37829
get ack:1 seq:38341
get ack:1 seq:38853
get ack:1 seq:39365
get ack:1 seq:39877
get ack:1 seq:40389
get ack:1 seq:40901
get ack:1 seq:41413
get ack:1 seq:41925
get ack:1 seq:42437
get ack:1 seq:42949
get ack:1 seq:43461
get ack:1 seq:43973
get ack:1 seq:44485
get ack:1 seq:44997
get ack:1 seq:45509
get ack:1 seq:46021
get ack:1 seq:46533
get ack:1 seq:47045
get ack:1 seq:47557
get ack:1 seq:48069
get ack:1 seq:48581
get ack:1 seq:49093
get ack:1 seq:49605
get ack:1 seq:50117
get ack:1 seq:50629
get ack:1 seq:51141
get ack:1 seq:51653
get ack:1 seq:52165
get ack:1 seq:52677
get ack:1 seq:53189
get ack:1 seq:53701
get ack:1 seq:54213
get ack:1 seq:54725
get ack:1 seq:55237
get ack:1 seq:55749
get ack:1 seq:56261
get ack:1 seq:56773
get ack:1 seq:57285
get ack:1 seq:57797
get ack:1 seq:58309
get ack:1 seq:58821
get ack:1 seq:59333
get ack:1 seq:59845
get ack:1 seq:60357
get ack:1 seq:60869
get ack:1 seq:61381
get ack:1 seq:61893
get ack:1 seq:62405
get ack:1 seq:62917
get ack:1 seq:63429
get ack:1 seq:63941
get ack:1 seq:64453
get ack:1 seq:64965
get ack:1 seq:65477
get ack:1 seq:65989
get ack:1 seq:66501
get ack:1 seq:67013
get ack:1 seq:67525
get ack:1 seq:68037
get ack:1 seq:68549
get ack:1 seq:69061
get ack:1 seq:69573
get ack:1 seq:70085
get ack:1 seq:70597
get ack:1 seq:71109
get ack:1 seq:71621
get ack:1 seq:72133
get ack:1 seq:72645
get ack:1 seq:73157
get ack:1 seq:73669
get ack:1 seq:74181
get ack:1 seq:74693
get ack:1 seq:75205
get ack:1 seq:75717
get ack:1 seq:76229
get ack:1 seq:76741
get ack:1 seq:77253
get ack:1 seq:77765
get ack:1 seq:78277
get ack:1 seq:78789
get ack:1 seq:79301
get ack:1 seq:79813
get ack:1 seq:80325
get ack:1 seq:80837
get ack:1 seq:81349
get ack:1 seq:81861
get ack:1 seq:82373
get ack:1 seq:82885
get ack:1 seq:83397
get ack:1 seq:83909
get ack:1 seq:84421
get ack:1 seq:84933
get ack:1 seq:85445
get ack:1 seq:85957
get ack:1 seq:86469
get ack:1 seq:86981
get ack:1 seq:87493
get ack:1 seq:88005
get ack:1 seq:88517
get ack:1 seq:89029
get ack:1 seq:89541
get ack:1 seq:90053
get ack:1 seq:90565
get ack:1 seq:91077
get ack:1 seq:91589
get ack:1 seq:92101
get ack:1 seq:92613
get ack:1 seq:93125
get ack:1 seq:93637
get ack:1 seq:94149
get ack:1 seq:94661
get ack:1 seq:95173
get ack:1 seq:95685
get ack:1 seq:96197
get ack:1 seq:96709
get ack:1 seq:97221
get ack:1 seq:97733
get ack:1 seq:98245
get ack:1 seq:98757
get ack:1 seq:99269
get ack:1 seq:99781
get ack:1 seq:100293
get ack:1 seq:100805
get ack:1 seq:101317
get ack:1 seq:101829
get ack:1 seq:102341
get ack:1 seq:102853
get ack:1 seq:103365
get ack:1 seq:103877
get ack:1 seq:104389
get ack:1 seq:104901
get ack:1 seq:105413
get ack:1 seq:105925
get ack:1 seq:106437
get ack:1 seq:106949
get ack:1 seq:107461
get ack:1 seq:107973
get ack:1 seq:108485
get ack:1 seq:108997
get ack:1 seq:109509
get ack:1 seq:110021
get ack:1 seq:110533
get ack:1 seq:111045
get ack:1 seq:111557
get ack:1 seq:112069
get ack:1 seq:112581
get ack:1 seq:113093
get ack:1 seq:113605
get ack:1 seq:114117
get ack:1 seq:114629
get ack:1 seq:115141
get ack:1 seq:115653
get ack:1 seq:116165
get ack:1 seq:116677
get ack:1 seq:117189
get ack:1 seq:117701
get ack:1 seq:118213
get ack:1 seq:118725
get ack:1 seq:119237
get ack:1 seq:119749
get ack:1 seq:120261
get ack:1 seq:120773
get ack:1 seq:121285
get ack:1 seq:121797
get ack:1 seq:122309
get ack:1 seq:122821
get ack:1 seq:123333
get ack:1 seq:123845
get ack:1 seq:124357
get ack:1 seq:124869
get ack:1 seq:125381
get ack:1 seq:125893
get ack:1 seq:126405
get ack:1 seq:126917
get ack:1 seq:127429
get ack:1 seq:127941
get ack:1 seq:128453
get ack:1 seq:128965
get ack:1 seq:129477
get ack:1 seq:129989
get ack:1 seq:130501
[       OK ] TestEnv_Any.TestTransfer_Accept_Recv_EOF (45 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Recv_SmallBuffer1
get ack:1 seq:4294963370
get ack:1 seq:4294963370
get ack:1 seq:4294963882
get ack:1 seq:4294964394
get ack:1 seq:4294964906
get ack:1 seq:4294965418
get ack:1 seq:4294965930
get ack:1 seq:4294966442
get ack:1 seq:4294966954
get ack:1 seq:170
get ack:1 seq:682
get ack:1 seq:1194
get ack:1 seq:1706
get ack:1 seq:2218
get ack:1 seq:2730
get ack:1 seq:3242
get ack:1 seq:3754
get ack:1 seq:4266
get ack:1 seq:4778
get ack:1 seq:5290
get ack:1 seq:5802
get ack:1 seq:6314
get ack:1 seq:6826
get ack:1 seq:7338
get ack:1 seq:7850
get ack:1 seq:8362
get ack:1 seq:8874
get ack:1 seq:9386
get ack:1 seq:9898
get ack:1 seq:10410
get ack:1 seq:10922
get ack:1 seq:11434
get ack:1 seq:11946
get ack:1 seq:12458
get ack:1 seq:12970
get ack:1 seq:13482
get ack:1 seq:13994
get ack:1 seq:14506
get ack:1 seq:15018
get ack:1 seq:15530
get ack:1 seq:16042
get ack:1 seq:16554
get ack:1 seq:17066
get ack:1 seq:17578
get ack:1 seq:18090
get ack:1 seq:18602
get ack:1 seq:19114
get ack:1 seq:19626
get ack:1 seq:20138
get ack:1 seq:20650
get ack:1 seq:21162
get ack:1 seq:21674
get ack:1 seq:22186
get ack:1 seq:22698
get ack:1 seq:23210
get ack:1 seq:23722
get ack:1 seq:24234
get ack:1 seq:24746
get ack:1 seq:25258
get ack:1 seq:25770
get ack:1 seq:26282
get ack:1 seq:26794
get ack:1 seq:27306
get ack:1 seq:27818
get ack:1 seq:28330
get ack:1 seq:28842
get ack:1 seq:29354
get ack:1 seq:29866
get ack:1 seq:30378
get ack:1 seq:30890
get ack:1 seq:31402
get ack:1 seq:31914
get ack:1 seq:32426
get ack:1 seq:32938
get ack:1 seq:33450
get ack:1 seq:33962
get ack:1 seq:34474
get ack:1 seq:34986
get ack:1 seq:35498
get ack:1 seq:36010
get ack:1 seq:36522
get ack:1 seq:37034
get ack:1 seq:37546
get ack:1 seq:38058
get ack:1 seq:38570
get ack:1 seq:39082
get ack:1 seq:39594
get ack:1 seq:40106
get ack:1 seq:40618
get ack:1 seq:41130
get ack:1 seq:41642
get ack:1 seq:42154
get ack:1 seq:42666
get ack:1 seq:43178
get ack:1 seq:43690
get ack:1 seq:44202
get ack:1 seq:44714
get ack:1 seq:45226
get ack:1 seq:45738
get ack:1 seq:46250
get ack:1 seq:46762
get ack:1 seq:47274
get ack:1 seq:47786
get ack:1 seq:48298
get ack:1 seq:48810
get ack:1 seq:49322
get ack:1 seq:49834
get ack:1 seq:50346
get ack:1 seq:50858
get ack:1 seq:51370
get ack:1 seq:51882
get ack:1 seq:52394
get ack:1 seq:52906
get ack:1 seq:53418
get ack:1 seq:53930
get ack:1 seq:54442
get ack:1 seq:54954
get ack:1 seq:55466
get ack:1 seq:55978
get ack:1 seq:56490
get ack:1 seq:57002
get ack:1 seq:57514
get ack:1 seq:58026
get ack:1 seq:58538
get ack:1 seq:59050
get ack:1 seq:59562
get ack:1 seq:60074
get ack:1 seq:60586
get ack:1 seq:61098
get ack:1 seq:61610
get ack:1 seq:62122
get ack:1 seq:62634
get ack:1 seq:63146
get ack:1 seq:63658
get ack:1 seq:64170
get ack:1 seq:64682
get ack:1 seq:65194
get ack:1 seq:65706
get ack:1 seq:66218
get ack:1 seq:66730
get ack:1 seq:67242
get ack:1 seq:67754
get ack:1 seq:68266
get ack:1 seq:68778
get ack:1 seq:69290
get ack:1 seq:69802
get ack:1 seq:70314
get ack:1 seq:70826
get ack:1 seq:71338
get ack:1 seq:71850
get ack:1 seq:72362
get ack:1 seq:72874
get ack:1 seq:73386
get ack:1 seq:73898
get ack:1 seq:74410
get ack:1 seq:74922
get ack:1 seq:75434
get ack:1 seq:75946
get ack:1 seq:76458
get ack:1 seq:76970
get ack:1 seq:77482
get ack:1 seq:77994
get ack:1 seq:78506
get ack:1 seq:79018
get ack:1 seq:79530
get ack:1 seq:80042
get ack:1 seq:80554
get ack:1 seq:81066
get ack:1 seq:81578
get ack:1 seq:82090
get ack:1 seq:82602
get ack:1 seq:83114
get ack:1 seq:83626
get ack:1 seq:84138
get ack:1 seq:84650
get ack:1 seq:85162
get ack:1 seq:85674
get ack:1 seq:86186
get ack:1 seq:86698
get ack:1 seq:87210
get ack:1 seq:87722
get ack:1 seq:88234
get ack:1 seq:88746
get ack:1 seq:89258
get ack:1 seq:89770
get ack:1 seq:90282
get ack:1 seq:90794
get ack:1 seq:91306
get ack:1 seq:91818
get ack:1 seq:92330
get ack:1 seq:92842
get ack:1 seq:93354
get ack:1 seq:93866
get ack:1 seq:94378
get ack:1 seq:94890
get ack:1 seq:95402
get ack:1 seq:95914
get ack:1 seq:96426
get ack:1 seq:96938
get ack:1 seq:97450
get ack:1 seq:97962
get ack:1 seq:98474
get ack:1 seq:98986
get ack:1 seq:99498
get ack:1 seq:100010
get ack:1 seq:100522
get ack:1 seq:101034
get ack:1 seq:101546
get ack:1 seq:102058
get ack:1 seq:102570
get ack:1 seq:103082
get ack:1 seq:103594
get ack:1 seq:104106
get ack:1 seq:104618
get ack:1 seq:105130
get ack:1 seq:105642
get ack:1 seq:106154
get ack:1 seq:106666
get ack:1 seq:107178
get ack:1 seq:107690
get ack:1 seq:108202
get ack:1 seq:108714
get ack:1 seq:109226
get ack:1 seq:109738
get ack:1 seq:110250
get ack:1 seq:110762
get ack:1 seq:111274
get ack:1 seq:111786
get ack:1 seq:112298
get ack:1 seq:112810
get ack:1 seq:113322
get ack:1 seq:113834
get ack:1 seq:114346
get ack:1 seq:114858
get ack:1 seq:115370
get ack:1 seq:115882
get ack:1 seq:116394
get ack:1 seq:116906
get ack:1 seq:117418
get ack:1 seq:117930
get ack:1 seq:118442
get ack:1 seq:118954
get ack:1 seq:119466
get ack:1 seq:119978
get ack:1 seq:120490
get ack:1 seq:121002
get ack:1 seq:121514
get ack:1 seq:122026
get ack:1 seq:122538
get ack:1 seq:123050
get ack:1 seq:123562
get ack:1 seq:124074
get ack:1 seq:124586
get ack:1 seq:125098
get ack:1 seq:125610
get ack:1 seq:126122
get ack:1 seq:126634
[       OK ] TestEnv_Any.TestTransfer_Accept_Recv_SmallBuffer1 (66 ms)
[ RUN      ] TestEnv_Any.TestTransfer_Accept_Recv_SmallBuffer2
get ack:1 seq:4294963870
get ack:1 seq:4294963870
get ack:1 seq:4294963923
get ack:1 seq:4294963976
get ack:1 seq:4294964029
get ack:1 seq:4294964082
get ack:1 seq:4294964135
get ack:1 seq:4294964188
get ack:1 seq:4294964241
get ack:1 seq:4294964294
get ack:1 seq:4294964347
get ack:1 seq:4294964400
get ack:1 seq:4294964453
get ack:1 seq:4294964506
get ack:1 seq:4294964559
get ack:1 seq:4294964612
get ack:1 seq:4294964665
get ack:1 seq:4294964718
get ack:1 seq:4294964771
get ack:1 seq:4294964824
get ack:1 seq:4294964877
get ack:1 seq:4294964930
get ack:1 seq:4294964983
get ack:1 seq:4294965036
get ack:1 seq:4294965089
get ack:1 seq:4294965142
get ack:1 seq:4294965195
get ack:1 seq:4294965248
get ack:1 seq:4294965301
get ack:1 seq:4294965354
get ack:1 seq:4294965407
get ack:1 seq:4294965460
get ack:1 seq:4294965513
get ack:1 seq:4294965566
get ack:1 seq:4294965619
get ack:1 seq:4294965672
get ack:1 seq:4294965725
get ack:1 seq:4294965778
get ack:1 seq:4294965831
get ack:1 seq:4294965884
get ack:1 seq:4294965937
get ack:1 seq:4294965990
get ack:1 seq:4294966043
get ack:1 seq:4294966096
get ack:1 seq:4294966149
get ack:1 seq:4294966202
get ack:1 seq:4294966255
get ack:1 seq:4294966308
get ack:1 seq:4294966361
get ack:1 seq:4294966414
get ack:1 seq:4294966467
get ack:1 seq:4294966520
get ack:1 seq:4294966573
get ack:1 seq:4294966626
get ack:1 seq:4294966679
get ack:1 seq:4294966732
get ack:1 seq:4294966785
get ack:1 seq:4294966838
get ack:1 seq:4294966891
get ack:1 seq:4294966944
get ack:1 seq:4294966997
get ack:1 seq:4294967050
get ack:1 seq:4294967103
get ack:1 seq:4294967156
get ack:1 seq:4294967209
get ack:1 seq:4294967262
get ack:1 seq:19
get ack:1 seq:72
get ack:1 seq:125
get ack:1 seq:178
get ack:1 seq:231
get ack:1 seq:284
get ack:1 seq:337
get ack:1 seq:390
get ack:1 seq:443
get ack:1 seq:496
get ack:1 seq:549
get ack:1 seq:602
get ack:1 seq:655
get ack:1 seq:708
get ack:1 seq:761
get ack:1 seq:814
get ack:1 seq:867
get ack:1 seq:920
get ack:1 seq:973
get ack:1 seq:1026
get ack:1 seq:1079
get ack:1 seq:1132
get ack:1 seq:1185
get ack:1 seq:1238
get ack:1 seq:1291
get ack:1 seq:1344
get ack:1 seq:1397
get ack:1 seq:1450
get ack:1 seq:1503
get ack:1 seq:1556
get ack:1 seq:1609
get ack:1 seq:1662
get ack:1 seq:1715
get ack:1 seq:1768
get ack:1 seq:1821
get ack:1 seq:1874
get ack:1 seq:1927
get ack:1 seq:1980
get ack:1 seq:2033
get ack:1 seq:2086
get ack:1 seq:2139
get ack:1 seq:2192
get ack:1 seq:2245
get ack:1 seq:2298
get ack:1 seq:2351
get ack:1 seq:2404
get ack:1 seq:2457
get ack:1 seq:2510
get ack:1 seq:2563
get ack:1 seq:2616
get ack:1 seq:2669
get ack:1 seq:2722
get ack:1 seq:2775
get ack:1 seq:2828
get ack:1 seq:2881
get ack:1 seq:2934
get ack:1 seq:2987
get ack:1 seq:3040
get ack:1 seq:3093
get ack:1 seq:3146
get ack:1 seq:3199
get ack:1 seq:3252
get ack:1 seq:3305
get ack:1 seq:3358
get ack:1 seq:3411
get ack:1 seq:3464
get ack:1 seq:3517
get ack:1 seq:3570
get ack:1 seq:3623
get ack:1 seq:3676
get ack:1 seq:3729
get ack:1 seq:3782
get ack:1 seq:3835
get ack:1 seq:3888
get ack:1 seq:3941
get ack:1 seq:3994
get ack:1 seq:4047
get ack:1 seq:4100
get ack:1 seq:4153
get ack:1 seq:4206
get ack:1 seq:4259
get ack:1 seq:4312
get ack:1 seq:4365
get ack:1 seq:4418
get ack:1 seq:4471
get ack:1 seq:4524
get ack:1 seq:4577
get ack:1 seq:4630
get ack:1 seq:4683
get ack:1 seq:4736
get ack:1 seq:4789
get ack:1 seq:4842
get ack:1 seq:4895
get ack:1 seq:4948
get ack:1 seq:5001
get ack:1 seq:5054
get ack:1 seq:5107
get ack:1 seq:5160
get ack:1 seq:5213
get ack:1 seq:5266
get ack:1 seq:5319
get ack:1 seq:5372
get ack:1 seq:5425
get ack:1 seq:5478
get ack:1 seq:5531
get ack:1 seq:5584
get ack:1 seq:5637
get ack:1 seq:5690
get ack:1 seq:5743
get ack:1 seq:5796
get ack:1 seq:5849
get ack:1 seq:5902
get ack:1 seq:5955
get ack:1 seq:6008
get ack:1 seq:6061
get ack:1 seq:6114
get ack:1 seq:6167
get ack:1 seq:6220
get ack:1 seq:6273
get ack:1 seq:6326
get ack:1 seq:6379
get ack:1 seq:6432
get ack:1 seq:6485
get ack:1 seq:6538
get ack:1 seq:6591
get ack:1 seq:6644
get ack:1 seq:6697
get ack:1 seq:6750
get ack:1 seq:6803
get ack:1 seq:6856
get ack:1 seq:6909
get ack:1 seq:6962
get ack:1 seq:7015
get ack:1 seq:7068
get ack:1 seq:7121
get ack:1 seq:7174
get ack:1 seq:7227
get ack:1 seq:7280
get ack:1 seq:7333
get ack:1 seq:7386
get ack:1 seq:7439
get ack:1 seq:7492
get ack:1 seq:7545
get ack:1 seq:7598
get ack:1 seq:7651
get ack:1 seq:7704
get ack:1 seq:7757
get ack:1 seq:7810
get ack:1 seq:7863
get ack:1 seq:7916
get ack:1 seq:7969
get ack:1 seq:8022
get ack:1 seq:8075
get ack:1 seq:8128
get ack:1 seq:8181
get ack:1 seq:8234
get ack:1 seq:8287
get ack:1 seq:8340
get ack:1 seq:8393
get ack:1 seq:8446
get ack:1 seq:8499
get ack:1 seq:8552
get ack:1 seq:8605
get ack:1 seq:8658
get ack:1 seq:8711
get ack:1 seq:8764
get ack:1 seq:8817
get ack:1 seq:8870
get ack:1 seq:8923
get ack:1 seq:8976
get ack:1 seq:9029
get ack:1 seq:9082
get ack:1 seq:9135
get ack:1 seq:9188
get ack:1 seq:9241
get ack:1 seq:9294
get ack:1 seq:9347
get ack:1 seq:9400
get ack:1 seq:9453
get ack:1 seq:9506
get ack:1 seq:9559
get ack:1 seq:9612
get ack:1 seq:9665
get ack:1 seq:9718
get ack:1 seq:9771
get ack:1 seq:9824
get ack:1 seq:9877
get ack:1 seq:9930
get ack:1 seq:9983
get ack:1 seq:10036
get ack:1 seq:10089
get ack:1 seq:10142
get ack:1 seq:10195
get ack:1 seq:10248
get ack:1 seq:10301
get ack:1 seq:10354
get ack:1 seq:10407
get ack:1 seq:10460
get ack:1 seq:10513
get ack:1 seq:10566
get ack:1 seq:10619
get ack:1 seq:10672
get ack:1 seq:10725
get ack:1 seq:10778
get ack:1 seq:10831
get ack:1 seq:10884
get ack:1 seq:10937
get ack:1 seq:10990
get ack:1 seq:11043
get ack:1 seq:11096
get ack:1 seq:11149
get ack:1 seq:11202
get ack:1 seq:11255
get ack:1 seq:11308
get ack:1 seq:11361
get ack:1 seq:11414
get ack:1 seq:11467
get ack:1 seq:11520
get ack:1 seq:11573
get ack:1 seq:11626
get ack:1 seq:11679
get ack:1 seq:11732
get ack:1 seq:11785
get ack:1 seq:11838
get ack:1 seq:11891
get ack:1 seq:11944
get ack:1 seq:11997
get ack:1 seq:12050
get ack:1 seq:12103
get ack:1 seq:12156
get ack:1 seq:12209
get ack:1 seq:12262
get ack:1 seq:12315
get ack:1 seq:12368
get ack:1 seq:12421
get ack:1 seq:12474
get ack:1 seq:12527
get ack:1 seq:12580
get ack:1 seq:12633
get ack:1 seq:12686
get ack:1 seq:12739
get ack:1 seq:12792
get ack:1 seq:12845
get ack:1 seq:12898
get ack:1 seq:12951
get ack:1 seq:13004
get ack:1 seq:13057
get ack:1 seq:13110
get ack:1 seq:13163
get ack:1 seq:13216
get ack:1 seq:13269
get ack:1 seq:13322
get ack:1 seq:13375
get ack:1 seq:13428
get ack:1 seq:13481
get ack:1 seq:13534
get ack:1 seq:13587
get ack:1 seq:13640
get ack:1 seq:13693
get ack:1 seq:13746
get ack:1 seq:13799
get ack:1 seq:13852
get ack:1 seq:13905
get ack:1 seq:13958
get ack:1 seq:14011
get ack:1 seq:14064
get ack:1 seq:14117
get ack:1 seq:14170
get ack:1 seq:14223
get ack:1 seq:14276
get ack:1 seq:14329
get ack:1 seq:14382
get ack:1 seq:14435
get ack:1 seq:14488
get ack:1 seq:14541
get ack:1 seq:14594
get ack:1 seq:14647
get ack:1 seq:14700
get ack:1 seq:14753
get ack:1 seq:14806
get ack:1 seq:14859
get ack:1 seq:14912
get ack:1 seq:14965
get ack:1 seq:15018
get ack:1 seq:15071
get ack:1 seq:15124
get ack:1 seq:15177
get ack:1 seq:15230
get ack:1 seq:15283
get ack:1 seq:15336
get ack:1 seq:15389
get ack:1 seq:15442
get ack:1 seq:15495
get ack:1 seq:15548
get ack:1 seq:15601
get ack:1 seq:15654
get ack:1 seq:15707
get ack:1 seq:15760
get ack:1 seq:15813
get ack:1 seq:15866
get ack:1 seq:15919
get ack:1 seq:15972
get ack:1 seq:16025
get ack:1 seq:16078
get ack:1 seq:16131
get ack:1 seq:16184
get ack:1 seq:16237
get ack:1 seq:16290
get ack:1 seq:16343
get ack:1 seq:16396
get ack:1 seq:16449
get ack:1 seq:16502
get ack:1 seq:16555
get ack:1 seq:16608
get ack:1 seq:16661
get ack:1 seq:16714
get ack:1 seq:16767
get ack:1 seq:16820
get ack:1 seq:16873
get ack:1 seq:16926
get ack:1 seq:16979
get ack:1 seq:17032
get ack:1 seq:17085
get ack:1 seq:17138
get ack:1 seq:17191
get ack:1 seq:17244
get ack:1 seq:17297
get ack:1 seq:17350
get ack:1 seq:17403
get ack:1 seq:17456
get ack:1 seq:17509
get ack:1 seq:17562
get ack:1 seq:17615
get ack:1 seq:17668
get ack:1 seq:17721
get ack:1 seq:17774
get ack:1 seq:17827
get ack:1 seq:17880
get ack:1 seq:17933
get ack:1 seq:17986
get ack:1 seq:18039
get ack:1 seq:18092
get ack:1 seq:18145
get ack:1 seq:18198
get ack:1 seq:18251
get ack:1 seq:18304
get ack:1 seq:18357
get ack:1 seq:18410
get ack:1 seq:18463
get ack:1 seq:18516
get ack:1 seq:18569
get ack:1 seq:18622
get ack:1 seq:18675
get ack:1 seq:18728
get ack:1 seq:18781
get ack:1 seq:18834
get ack:1 seq:18887
get ack:1 seq:18940
get ack:1 seq:18993
get ack:1 seq:19046
get ack:1 seq:19099
get ack:1 seq:19152
get ack:1 seq:19205
get ack:1 seq:19258
get ack:1 seq:19311
get ack:1 seq:19364
get ack:1 seq:19417
get ack:1 seq:19470
get ack:1 seq:19523
get ack:1 seq:19576
get ack:1 seq:19629
get ack:1 seq:19682
get ack:1 seq:19735
get ack:1 seq:19788
get ack:1 seq:19841
get ack:1 seq:19894
get ack:1 seq:19947
get ack:1 seq:20000
get ack:1 seq:20053
get ack:1 seq:20106
get ack:1 seq:20159
get ack:1 seq:20212
get ack:1 seq:20265
get ack:1 seq:20318
get ack:1 seq:20371
get ack:1 seq:20424
get ack:1 seq:20477
get ack:1 seq:20530
get ack:1 seq:20583
get ack:1 seq:20636
get ack:1 seq:20689
get ack:1 seq:20742
get ack:1 seq:20795
get ack:1 seq:20848
get ack:1 seq:20901
get ack:1 seq:20954
get ack:1 seq:21007
get ack:1 seq:21060
get ack:1 seq:21113
get ack:1 seq:21166
get ack:1 seq:21219
get ack:1 seq:21272
get ack:1 seq:21325
get ack:1 seq:21378
get ack:1 seq:21431
get ack:1 seq:21484
get ack:1 seq:21537
get ack:1 seq:21590
get ack:1 seq:21643
get ack:1 seq:21696
get ack:1 seq:21749
get ack:1 seq:21802
get ack:1 seq:21855
get ack:1 seq:21908
get ack:1 seq:21961
get ack:1 seq:22014
get ack:1 seq:22067
get ack:1 seq:22120
get ack:1 seq:22173
get ack:1 seq:22226
get ack:1 seq:22279
get ack:1 seq:22332
get ack:1 seq:22385
get ack:1 seq:22438
get ack:1 seq:22491
get ack:1 seq:22544
get ack:1 seq:22597
get ack:1 seq:22650
get ack:1 seq:22703
get ack:1 seq:22756
get ack:1 seq:22809
get ack:1 seq:22862
get ack:1 seq:22915
get ack:1 seq:22968
get ack:1 seq:23021
get ack:1 seq:23074
get ack:1 seq:23127
get ack:1 seq:23180
get ack:1 seq:23233
get ack:1 seq:23286
get ack:1 seq:23339
get ack:1 seq:23392
get ack:1 seq:23445
get ack:1 seq:23498
get ack:1 seq:23551
get ack:1 seq:23604
get ack:1 seq:23657
get ack:1 seq:23710
get ack:1 seq:23763
get ack:1 seq:23816
get ack:1 seq:23869
get ack:1 seq:23922
get ack:1 seq:23975
get ack:1 seq:24028
get ack:1 seq:24081
get ack:1 seq:24134
get ack:1 seq:24187
get ack:1 seq:24240
get ack:1 seq:24293
get ack:1 seq:24346
get ack:1 seq:24399
get ack:1 seq:24452
get ack:1 seq:24505
get ack:1 seq:24558
get ack:1 seq:24611
get ack:1 seq:24664
get ack:1 seq:24717
get ack:1 seq:24770
get ack:1 seq:24823
get ack:1 seq:24876
get ack:1 seq:24929
get ack:1 seq:24982
get ack:1 seq:25035
get ack:1 seq:25088
get ack:1 seq:25141
get ack:1 seq:25194
get ack:1 seq:25247
get ack:1 seq:25300
get ack:1 seq:25353
get ack:1 seq:25406
get ack:1 seq:25459
get ack:1 seq:25512
get ack:1 seq:25565
get ack:1 seq:25618
get ack:1 seq:25671
get ack:1 seq:25724
get ack:1 seq:25777
get ack:1 seq:25830
get ack:1 seq:25883
get ack:1 seq:25936
get ack:1 seq:25989
get ack:1 seq:26042
get ack:1 seq:26095
get ack:1 seq:26148
get ack:1 seq:26201
get ack:1 seq:26254
get ack:1 seq:26307
get ack:1 seq:26360
get ack:1 seq:26413
get ack:1 seq:26466
get ack:1 seq:26519
get ack:1 seq:26572
get ack:1 seq:26625
get ack:1 seq:26678
get ack:1 seq:26731
get ack:1 seq:26784
get ack:1 seq:26837
get ack:1 seq:26890
get ack:1 seq:26943
get ack:1 seq:26996
get ack:1 seq:27049
get ack:1 seq:27102
get ack:1 seq:27155
get ack:1 seq:27208
get ack:1 seq:27261
get ack:1 seq:27314
get ack:1 seq:27367
get ack:1 seq:27420
get ack:1 seq:27473
get ack:1 seq:27526
get ack:1 seq:27579
get ack:1 seq:27632
get ack:1 seq:27685
get ack:1 seq:27738
get ack:1 seq:27791
get ack:1 seq:27844
get ack:1 seq:27897
get ack:1 seq:27950
get ack:1 seq:28003
get ack:1 seq:28056
get ack:1 seq:28109
get ack:1 seq:28162
get ack:1 seq:28215
get ack:1 seq:28268
get ack:1 seq:28321
get ack:1 seq:28374
get ack:1 seq:28427
get ack:1 seq:28480
get ack:1 seq:28533
get ack:1 seq:28586
get ack:1 seq:28639
get ack:1 seq:28692
get ack:1 seq:28745
get ack:1 seq:28798
get ack:1 seq:28851
get ack:1 seq:28904
get ack:1 seq:28957
get ack:1 seq:29010
get ack:1 seq:29063
get ack:1 seq:29116
get ack:1 seq:29169
get ack:1 seq:29222
get ack:1 seq:29275
get ack:1 seq:29328
get ack:1 seq:29381
get ack:1 seq:29434
get ack:1 seq:29487
get ack:1 seq:29540
get ack:1 seq:29593
get ack:1 seq:29646
get ack:1 seq:29699
get ack:1 seq:29752
get ack:1 seq:29805
get ack:1 seq:29858
get ack:1 seq:29911
get ack:1 seq:29964
get ack:1 seq:30017
get ack:1 seq:30070
get ack:1 seq:30123
get ack:1 seq:30176
get ack:1 seq:30229
get ack:1 seq:30282
get ack:1 seq:30335
get ack:1 seq:30388
get ack:1 seq:30441
get ack:1 seq:30494
get ack:1 seq:30547
get ack:1 seq:30600
get ack:1 seq:30653
get ack:1 seq:30706
get ack:1 seq:30759
get ack:1 seq:30812
get ack:1 seq:30865
get ack:1 seq:30918
get ack:1 seq:30971
get ack:1 seq:31024
get ack:1 seq:31077
get ack:1 seq:31130
get ack:1 seq:31183
get ack:1 seq:31236
get ack:1 seq:31289
get ack:1 seq:31342
get ack:1 seq:31395
get ack:1 seq:31448
get ack:1 seq:31501
get ack:1 seq:31554
get ack:1 seq:31607
get ack:1 seq:31660
get ack:1 seq:31713
get ack:1 seq:31766
get ack:1 seq:31819
get ack:1 seq:31872
get ack:1 seq:31925
get ack:1 seq:31978
get ack:1 seq:32031
get ack:1 seq:32084
get ack:1 seq:32137
get ack:1 seq:32190
get ack:1 seq:32243
get ack:1 seq:32296
get ack:1 seq:32349
get ack:1 seq:32402
get ack:1 seq:32455
get ack:1 seq:32508
get ack:1 seq:32561
get ack:1 seq:32614
get ack:1 seq:32667
get ack:1 seq:32720
get ack:1 seq:32773
get ack:1 seq:32826
get ack:1 seq:32879
get ack:1 seq:32932
get ack:1 seq:32985
get ack:1 seq:33038
get ack:1 seq:33091
get ack:1 seq:33144
get ack:1 seq:33197
get ack:1 seq:33250
get ack:1 seq:33303
get ack:1 seq:33356
get ack:1 seq:33409
get ack:1 seq:33462
get ack:1 seq:33515
get ack:1 seq:33568
get ack:1 seq:33621
get ack:1 seq:33674
get ack:1 seq:33727
get ack:1 seq:33780
get ack:1 seq:33833
get ack:1 seq:33886
get ack:1 seq:33939
get ack:1 seq:33992
get ack:1 seq:34045
get ack:1 seq:34098
get ack:1 seq:34151
get ack:1 seq:34204
get ack:1 seq:34257
get ack:1 seq:34310
get ack:1 seq:34363
get ack:1 seq:34416
get ack:1 seq:34469
get ack:1 seq:34522
get ack:1 seq:34575
get ack:1 seq:34628
get ack:1 seq:34681
get ack:1 seq:34734
get ack:1 seq:34787
get ack:1 seq:34840
get ack:1 seq:34893
get ack:1 seq:34946
get ack:1 seq:34999
get ack:1 seq:35052
get ack:1 seq:35105
get ack:1 seq:35158
get ack:1 seq:35211
get ack:1 seq:35264
get ack:1 seq:35317
get ack:1 seq:35370
get ack:1 seq:35423
get ack:1 seq:35476
get ack:1 seq:35529
get ack:1 seq:35582
get ack:1 seq:35635
get ack:1 seq:35688
get ack:1 seq:35741
get ack:1 seq:35794
get ack:1 seq:35847
get ack:1 seq:35900
get ack:1 seq:35953
get ack:1 seq:36006
get ack:1 seq:36059
get ack:1 seq:36112
get ack:1 seq:36165
get ack:1 seq:36218
get ack:1 seq:36271
get ack:1 seq:36324
get ack:1 seq:36377
get ack:1 seq:36430
get ack:1 seq:36483
get ack:1 seq:36536
get ack:1 seq:36589
get ack:1 seq:36642
get ack:1 seq:36695
get ack:1 seq:36748
get ack:1 seq:36801
get ack:1 seq:36854
get ack:1 seq:36907
get ack:1 seq:36960
get ack:1 seq:37013
get ack:1 seq:37066
get ack:1 seq:37119
get ack:1 seq:37172
get ack:1 seq:37225
get ack:1 seq:37278
get ack:1 seq:37331
get ack:1 seq:37384
get ack:1 seq:37437
get ack:1 seq:37490
get ack:1 seq:37543
get ack:1 seq:37596
get ack:1 seq:37649
get ack:1 seq:37702
get ack:1 seq:37755
get ack:1 seq:37808
get ack:1 seq:37861
get ack:1 seq:37914
get ack:1 seq:37967
get ack:1 seq:38020
get ack:1 seq:38073
get ack:1 seq:38126
get ack:1 seq:38179
get ack:1 seq:38232
get ack:1 seq:38285
get ack:1 seq:38338
get ack:1 seq:38391
get ack:1 seq:38444
get ack:1 seq:38497
get ack:1 seq:38550
get ack:1 seq:38603
get ack:1 seq:38656
get ack:1 seq:38709
get ack:1 seq:38762
get ack:1 seq:38815
get ack:1 seq:38868
get ack:1 seq:38921
get ack:1 seq:38974
get ack:1 seq:39027
get ack:1 seq:39080
get ack:1 seq:39133
get ack:1 seq:39186
get ack:1 seq:39239
get ack:1 seq:39292
get ack:1 seq:39345
get ack:1 seq:39398
get ack:1 seq:39451
get ack:1 seq:39504
get ack:1 seq:39557
get ack:1 seq:39610
get ack:1 seq:39663
get ack:1 seq:39716
get ack:1 seq:39769
get ack:1 seq:39822
get ack:1 seq:39875
get ack:1 seq:39928
get ack:1 seq:39981
get ack:1 seq:40034
get ack:1 seq:40087
get ack:1 seq:40140
get ack:1 seq:40193
get ack:1 seq:40246
get ack:1 seq:40299
get ack:1 seq:40352
get ack:1 seq:40405
get ack:1 seq:40458
get ack:1 seq:40511
get ack:1 seq:40564
get ack:1 seq:40617
get ack:1 seq:40670
get ack:1 seq:40723
get ack:1 seq:40776
get ack:1 seq:40829
get ack:1 seq:40882
get ack:1 seq:40935
get ack:1 seq:40988
get ack:1 seq:41041
get ack:1 seq:41094
get ack:1 seq:41147
get ack:1 seq:41200
get ack:1 seq:41253
get ack:1 seq:41306
get ack:1 seq:41359
get ack:1 seq:41412
get ack:1 seq:41465
get ack:1 seq:41518
get ack:1 seq:41571
get ack:1 seq:41624
get ack:1 seq:41677
get ack:1 seq:41730
get ack:1 seq:41783
get ack:1 seq:41836
get ack:1 seq:41889
get ack:1 seq:41942
get ack:1 seq:41995
get ack:1 seq:42048
get ack:1 seq:42101
get ack:1 seq:42154
get ack:1 seq:42207
get ack:1 seq:42260
get ack:1 seq:42313
get ack:1 seq:42366
get ack:1 seq:42419
get ack:1 seq:42472
get ack:1 seq:42525
get ack:1 seq:42578
get ack:1 seq:42631
get ack:1 seq:42684
get ack:1 seq:42737
get ack:1 seq:42790
get ack:1 seq:42843
get ack:1 seq:42896
get ack:1 seq:42949
get ack:1 seq:43002
get ack:1 seq:43055
get ack:1 seq:43108
get ack:1 seq:43161
get ack:1 seq:43214
get ack:1 seq:43267
get ack:1 seq:43320
get ack:1 seq:43373
get ack:1 seq:43426
get ack:1 seq:43479
get ack:1 seq:43532
get ack:1 seq:43585
get ack:1 seq:43638
get ack:1 seq:43691
get ack:1 seq:43744
get ack:1 seq:43797
get ack:1 seq:43850
get ack:1 seq:43903
get ack:1 seq:43956
get ack:1 seq:44009
get ack:1 seq:44062
get ack:1 seq:44115
get ack:1 seq:44168
get ack:1 seq:44221
get ack:1 seq:44274
get ack:1 seq:44327
get ack:1 seq:44380
get ack:1 seq:44433
get ack:1 seq:44486
get ack:1 seq:44539
get ack:1 seq:44592
get ack:1 seq:44645
get ack:1 seq:44698
get ack:1 seq:44751
get ack:1 seq:44804
get ack:1 seq:44857
get ack:1 seq:44910
get ack:1 seq:44963
get ack:1 seq:45016
get ack:1 seq:45069
get ack:1 seq:45122
get ack:1 seq:45175
get ack:1 seq:45228
get ack:1 seq:45281
get ack:1 seq:45334
get ack:1 seq:45387
get ack:1 seq:45440
get ack:1 seq:45493
get ack:1 seq:45546
get ack:1 seq:45599
get ack:1 seq:45652
get ack:1 seq:45705
get ack:1 seq:45758
get ack:1 seq:45811
get ack:1 seq:45864
get ack:1 seq:45917
get ack:1 seq:45970
get ack:1 seq:46023
get ack:1 seq:46076
get ack:1 seq:46129
get ack:1 seq:46182
get ack:1 seq:46235
get ack:1 seq:46288
get ack:1 seq:46341
get ack:1 seq:46394
get ack:1 seq:46447
get ack:1 seq:46500
get ack:1 seq:46553
get ack:1 seq:46606
get ack:1 seq:46659
get ack:1 seq:46712
get ack:1 seq:46765
get ack:1 seq:46818
get ack:1 seq:46871
get ack:1 seq:46924
get ack:1 seq:46977
get ack:1 seq:47030
get ack:1 seq:47083
get ack:1 seq:47136
get ack:1 seq:47189
get ack:1 seq:47242
get ack:1 seq:47295
get ack:1 seq:47348
get ack:1 seq:47401
get ack:1 seq:47454
get ack:1 seq:47507
get ack:1 seq:47560
get ack:1 seq:47613
get ack:1 seq:47666
get ack:1 seq:47719
get ack:1 seq:47772
get ack:1 seq:47825
get ack:1 seq:47878
get ack:1 seq:47931
get ack:1 seq:47984
get ack:1 seq:48037
get ack:1 seq:48090
get ack:1 seq:48143
get ack:1 seq:48196
get ack:1 seq:48249
get ack:1 seq:48302
get ack:1 seq:48355
get ack:1 seq:48408
get ack:1 seq:48461
get ack:1 seq:48514
get ack:1 seq:48567
get ack:1 seq:48620
get ack:1 seq:48673
get ack:1 seq:48726
get ack:1 seq:48779
get ack:1 seq:48832
get ack:1 seq:48885
get ack:1 seq:48938
get ack:1 seq:48991
get ack:1 seq:49044
get ack:1 seq:49097
get ack:1 seq:49150
get ack:1 seq:49203
get ack:1 seq:49256
get ack:1 seq:49309
get ack:1 seq:49362
get ack:1 seq:49415
get ack:1 seq:49468
get ack:1 seq:49521
get ack:1 seq:49574
get ack:1 seq:49627
get ack:1 seq:49680
get ack:1 seq:49733
get ack:1 seq:49786
get ack:1 seq:49839
get ack:1 seq:49892
get ack:1 seq:49945
get ack:1 seq:49998
get ack:1 seq:50051
get ack:1 seq:50104
get ack:1 seq:50157
get ack:1 seq:50210
get ack:1 seq:50263
get ack:1 seq:50316
get ack:1 seq:50369
get ack:1 seq:50422
get ack:1 seq:50475
get ack:1 seq:50528
get ack:1 seq:50581
get ack:1 seq:50634
get ack:1 seq:50687
get ack:1 seq:50740
get ack:1 seq:50793
get ack:1 seq:50846
get ack:1 seq:50899
get ack:1 seq:50952
get ack:1 seq:51005
get ack:1 seq:51058
get ack:1 seq:51111
get ack:1 seq:51164
get ack:1 seq:51217
get ack:1 seq:51270
get ack:1 seq:51323
get ack:1 seq:51376
get ack:1 seq:51429
get ack:1 seq:51482
get ack:1 seq:51535
get ack:1 seq:51588
get ack:1 seq:51641
get ack:1 seq:51694
get ack:1 seq:51747
get ack:1 seq:51800
get ack:1 seq:51853
get ack:1 seq:51906
get ack:1 seq:51959
get ack:1 seq:52012
get ack:1 seq:52065
get ack:1 seq:52118
get ack:1 seq:52171
get ack:1 seq:52224
get ack:1 seq:52277
get ack:1 seq:52330
get ack:1 seq:52383
get ack:1 seq:52436
get ack:1 seq:52489
get ack:1 seq:52542
get ack:1 seq:52595
get ack:1 seq:52648
get ack:1 seq:52701
get ack:1 seq:52754
get ack:1 seq:52807
get ack:1 seq:52860
get ack:1 seq:52913
get ack:1 seq:52966
get ack:1 seq:53019
get ack:1 seq:53072
get ack:1 seq:53125
get ack:1 seq:53178
get ack:1 seq:53231
get ack:1 seq:53284
get ack:1 seq:53337
get ack:1 seq:53390
get ack:1 seq:53443
get ack:1 seq:53496
get ack:1 seq:53549
get ack:1 seq:53602
get ack:1 seq:53655
get ack:1 seq:53708
get ack:1 seq:53761
get ack:1 seq:53814
get ack:1 seq:53867
get ack:1 seq:53920
get ack:1 seq:53973
get ack:1 seq:54026
get ack:1 seq:54079
get ack:1 seq:54132
get ack:1 seq:54185
get ack:1 seq:54238
get ack:1 seq:54291
get ack:1 seq:54344
get ack:1 seq:54397
get ack:1 seq:54450
get ack:1 seq:54503
get ack:1 seq:54556
get ack:1 seq:54609
get ack:1 seq:54662
get ack:1 seq:54715
get ack:1 seq:54768
get ack:1 seq:54821
get ack:1 seq:54874
get ack:1 seq:54927
get ack:1 seq:54980
get ack:1 seq:55033
get ack:1 seq:55086
get ack:1 seq:55139
get ack:1 seq:55192
get ack:1 seq:55245
get ack:1 seq:55298
get ack:1 seq:55351
get ack:1 seq:55404
get ack:1 seq:55457
get ack:1 seq:55510
get ack:1 seq:55563
get ack:1 seq:55616
get ack:1 seq:55669
get ack:1 seq:55722
get ack:1 seq:55775
get ack:1 seq:55828
get ack:1 seq:55881
get ack:1 seq:55934
get ack:1 seq:55987
get ack:1 seq:56040
get ack:1 seq:56093
get ack:1 seq:56146
get ack:1 seq:56199
get ack:1 seq:56252
get ack:1 seq:56305
get ack:1 seq:56358
get ack:1 seq:56411
get ack:1 seq:56464
get ack:1 seq:56517
get ack:1 seq:56570
get ack:1 seq:56623
get ack:1 seq:56676
get ack:1 seq:56729
get ack:1 seq:56782
get ack:1 seq:56835
get ack:1 seq:56888
get ack:1 seq:56941
get ack:1 seq:56994
get ack:1 seq:57047
get ack:1 seq:57100
get ack:1 seq:57153
get ack:1 seq:57206
get ack:1 seq:57259
get ack:1 seq:57312
get ack:1 seq:57365
get ack:1 seq:57418
get ack:1 seq:57471
get ack:1 seq:57524
get ack:1 seq:57577
get ack:1 seq:57630
get ack:1 seq:57683
get ack:1 seq:57736
get ack:1 seq:57789
get ack:1 seq:57842
get ack:1 seq:57895
get ack:1 seq:57948
get ack:1 seq:58001
get ack:1 seq:58054
get ack:1 seq:58107
get ack:1 seq:58160
get ack:1 seq:58213
get ack:1 seq:58266
get ack:1 seq:58319
get ack:1 seq:58372
get ack:1 seq:58425
get ack:1 seq:58478
get ack:1 seq:58531
get ack:1 seq:58584
get ack:1 seq:58637
get ack:1 seq:58690
get ack:1 seq:58743
get ack:1 seq:58796
get ack:1 seq:58849
get ack:1 seq:58902
get ack:1 seq:58955
get ack:1 seq:59008
get ack:1 seq:59061
get ack:1 seq:59114
get ack:1 seq:59167
get ack:1 seq:59220
get ack:1 seq:59273
get ack:1 seq:59326
get ack:1 seq:59379
get ack:1 seq:59432
get ack:1 seq:59485
get ack:1 seq:59538
get ack:1 seq:59591
get ack:1 seq:59644
get ack:1 seq:59697
get ack:1 seq:59750
get ack:1 seq:59803
get ack:1 seq:59856
get ack:1 seq:59909
get ack:1 seq:59962
get ack:1 seq:60015
get ack:1 seq:60068
get ack:1 seq:60121
get ack:1 seq:60174
get ack:1 seq:60227
get ack:1 seq:60280
get ack:1 seq:60333
get ack:1 seq:60386
get ack:1 seq:60439
get ack:1 seq:60492
get ack:1 seq:60545
get ack:1 seq:60598
get ack:1 seq:60651
get ack:1 seq:60704
get ack:1 seq:60757
get ack:1 seq:60810
get ack:1 seq:60863
get ack:1 seq:60916
get ack:1 seq:60969
get ack:1 seq:61022
get ack:1 seq:61075
get ack:1 seq:61128
get ack:1 seq:61181
get ack:1 seq:61234
get ack:1 seq:61287
get ack:1 seq:61340
[       OK ] TestEnv_Any.TestTransfer_Accept_Recv_SmallBuffer2 (242 ms)
[----------] 12 tests from TestEnv_Any (1043 ms total)

[----------] Global test environment tear-down
[==========] 12 tests from 1 test case ran. (1043 ms total)
[  PASSED  ] 12 tests.
