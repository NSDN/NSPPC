set sh_continue_on_error false
usb_connect
if { ! [jtag_device_id] } {
  exit
}
runtest -tck 1
sir 10 -tdi 3f8
runtest -tck 100
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi 00
sir 10 -tdi 3fa
runtest -tck 100
sdr 64 \
  -tdi  80000000203f0044 \
  -tdo  0 \
  -mask 0
sir 10 -tdi 6
runtest -tck 100
sdr 32 -tdi 00000000 -tdo 00025610 -mask ffffffff
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fe
runtest -tck 100
runtest -sec 0.5
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fa
runtest -tck 100
sdr 64 -tdi 086a400000000040
runtest -sec 0.002
sdr 64 -tdi ffff000020000040
runtest -sec 0.002
sdr 64 -tdi 0400004510000040
runtest -sec 0.002
sdr 64 -tdi 04f0200030000040
runtest -sec 0.002
sdr 64 -tdi e20f107808000040
runtest -sec 0.002
sdr 64 -tdi 07883c4128000040
runtest -sec 0.002
sdr 64 -tdi c41e20f118000040
runtest -sec 0.002
sdr 64 -tdi 0f10788338000040
runtest -sec 0.002
sdr 64 -tdi 883c41e204000040
runtest -sec 0.002
sdr 64 -tdi 1e20f10724000040
runtest -sec 0.002
sdr 64 -tdi 107883c414000040
runtest -sec 0.002
sdr 64 -tdi 3c41e20f34000040
runtest -sec 0.002
sdr 64 -tdi 20f107880c000040
runtest -sec 0.002
sdr 64 -tdi 7883c41e2c000040
runtest -sec 0.002
sdr 64 -tdi 41e20f101c000040
runtest -sec 0.002
sdr 64 -tdi f107883c3c000040
runtest -sec 0.002
sdr 64 -tdi 83c41e2002000040
runtest -sec 0.002
sdr 64 -tdi e20f107822000040
runtest -sec 0.002
sdr 64 -tdi 07883c4112000040
runtest -sec 0.002
sdr 64 -tdi c41e20f132000040
runtest -sec 0.002
sdr 64 -tdi 0f1078830a000040
runtest -sec 0.002
sdr 64 -tdi 883c41e22a000040
runtest -sec 0.002
sdr 64 -tdi 1e20f1071a000040
runtest -sec 0.002
sdr 64 -tdi 107883c43a000040
runtest -sec 0.002
sdr 64 -tdi 3c41e20f06000040
runtest -sec 0.002
sdr 64 -tdi 20f1078826000040
runtest -sec 0.002
sdr 64 -tdi 7883c41e16000040
runtest -sec 0.002
sdr 64 -tdi 41e20f1036000040
runtest -sec 0.002
sdr 64 -tdi f107883c0e000040
runtest -sec 0.002
sdr 64 -tdi 83c41e202e000040
runtest -sec 0.002
sdr 64 -tdi e20f10781e000040
runtest -sec 0.002
sdr 64 -tdi 07883c413e000040
runtest -sec 0.002
sdr 64 -tdi c41e20f101000040
runtest -sec 0.002
sdr 64 -tdi 0f10788321000040
runtest -sec 0.002
sdr 64 -tdi 883c41e211000040
runtest -sec 0.002
sdr 64 -tdi 1e20f10731000040
runtest -sec 0.002
sdr 64 -tdi 000083c409000040
runtest -sec 0.002
sdr 64 -tdi 0000004529000040
runtest -sec 0.002
sdr 64 -tdi 04ffdb0019000040
runtest -sec 0.002
sdr 64 -tdi cfffffff39000040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f05000040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff25000040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc15000040
runtest -sec 0.002
sdr 64 -tdi fe7bdff335000040
runtest -sec 0.002
sdr 64 -tdi f9ef7fcf0d000040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2d000040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d000040
runtest -sec 0.002
sdr 64 -tdi cfffffff3d000040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f03000040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff23000040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc13000040
runtest -sec 0.002
sdr 64 -tdi fe7bdff333000040
runtest -sec 0.002
sdr 64 -tdi f9ef7fcf0b000040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2b000040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b000040
runtest -sec 0.002
sdr 64 -tdi cfffffff3b000040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f07000040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff27000040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc17000040
runtest -sec 0.002
sdr 64 -tdi fe7bdff337000040
runtest -sec 0.002
sdr 64 -tdi f9ef7fcf0f000040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2f000040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f000040
runtest -sec 0.002
sdr 64 -tdi cfffffff3f000040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f00800040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff20800040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc10800040
runtest -sec 0.002
sdr 64 -tdi fe7bdff330800040
runtest -sec 0.002
sdr 64 -tdi f9ef7fcf08800040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f28800040
runtest -sec 0.002
sdr 64 -tdi 0000007f18800040
runtest -sec 0.002
sdr 64 -tdi 01ffffff38800040
runtest -sec 0.002
sdr 64 -tdi 07c0210c04800040
runtest -sec 0.002
sdr 64 -tdi 1f10ae5124800040
runtest -sec 0.002
sdr 64 -tdi 7e1311f414800040
runtest -sec 0.002
sdr 64 -tdi e00a8b2834800040
runtest -sec 0.002
sdr 64 -tdi c0210c000c800040
runtest -sec 0.002
sdr 64 -tdi 2a8438072c800040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c800040
runtest -sec 0.002
sdr 64 -tdi 01ffffff3c800040
runtest -sec 0.002
sdr 64 -tdi 07c0210e02800040
runtest -sec 0.002
sdr 64 -tdi 1f46843a22800040
runtest -sec 0.002
sdr 64 -tdi 7c4a54e012800040
runtest -sec 0.002
sdr 64 -tdi f008538032800040
runtest -sec 0.002
sdr 64 -tdi c0210e010a800040
runtest -sec 0.002
sdr 64 -tdi 408438072a800040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a800040
runtest -sec 0.002
sdr 64 -tdi 01ffffff3a800040
runtest -sec 0.002
sdr 64 -tdi 07c0210e06800040
runtest -sec 0.002
sdr 64 -tdi 1f00843826800040
runtest -sec 0.002
sdr 64 -tdi 7c0210e016800040
runtest -sec 0.002
sdr 64 -tdi f008438036800040
runtest -sec 0.002
sdr 64 -tdi c0210e010e800040
runtest -sec 0.002
sdr 64 -tdi 008438072e800040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e800040
runtest -sec 0.002
sdr 64 -tdi 00ffffff3e800040
runtest -sec 0.002
sdr 64 -tdi 0380000401800040
runtest -sec 0.002
sdr 64 -tdi 0e66301021800040
runtest -sec 0.002
sdr 64 -tdi 3998c64c11800040
runtest -sec 0.002
sdr 64 -tdi e008010031800040
runtest -sec 0.002
sdr 64 -tdi c0210c0009800040
runtest -sec 0.002
sdr 64 -tdi 6600100329800040
runtest -sec 0.002
sdr 64 -tdi 0000007e19800040
runtest -sec 0.002
sdr 64 -tdi 2480002439800040
runtest -sec 0.002
sdr 64 -tdi 2e00001005800040
runtest -sec 0.002
sdr 64 -tdi 0280003825800040
runtest -sec 0.002
sdr 64 -tdi 0000400015800040
runtest -sec 0.002
sdr 64 -tdi 8000000035800040
runtest -sec 0.002
sdr 64 -tdi 8000000f0d800040
runtest -sec 0.002
sdr 64 -tdi 100000382d800040
runtest -sec 0.002
sdr 64 -tdi 000000101d800040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d800040
runtest -sec 0.002
sdr 64 -tdi 7800000a03800040
runtest -sec 0.002
sdr 64 -tdi 1900000023800040
runtest -sec 0.002
sdr 64 -tdi 0000100013800040
runtest -sec 0.002
sdr 64 -tdi 0000000033800040
runtest -sec 0.002
sdr 64 -tdi 0000000e0b800040
runtest -sec 0.002
sdr 64 -tdi 000004482b800040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b800040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b800040
runtest -sec 0.002
sdr 64 -tdi 0000000807800040
runtest -sec 0.002
sdr 64 -tdi d800001027800040
runtest -sec 0.002
sdr 64 -tdi 0000000017800040
runtest -sec 0.002
sdr 64 -tdi 0000000037800040
runtest -sec 0.002
sdr 64 -tdi 4409060c0f800040
runtest -sec 0.002
sdr 64 -tdi 800800b12f800040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f800040
runtest -sec 0.002
sdr 64 -tdi 85a000013f800040
runtest -sec 0.002
sdr 64 -tdi 8680000500400040
runtest -sec 0.002
sdr 64 -tdi da00010420400040
runtest -sec 0.002
sdr 64 -tdi 6800002810400040
runtest -sec 0.002
sdr 64 -tdi a000000030400040
runtest -sec 0.002
sdr 64 -tdi 8140804d08400040
runtest -sec 0.002
sdr 64 -tdi 0504083e28400040
runtest -sec 0.002
sdr 64 -tdi 0000004218400040
runtest -sec 0.002
sdr 64 -tdi 0000100038400040
runtest -sec 0.002
sdr 64 -tdi 3e00400004400040
runtest -sec 0.002
sdr 64 -tdi d001000a24400040
runtest -sec 0.002
sdr 64 -tdi 0100004014400040
runtest -sec 0.002
sdr 64 -tdi 8000000034400040
runtest -sec 0.002
sdr 64 -tdi c220008f0c400040
runtest -sec 0.002
sdr 64 -tdi 0024003e2c400040
runtest -sec 0.002
sdr 64 -tdi 000000111c400040
runtest -sec 0.002
sdr 64 -tdi 0000083f3c400040
runtest -sec 0.002
sdr 64 -tdi 3e00200002400040
runtest -sec 0.002
sdr 64 -tdi f940800022400040
runtest -sec 0.002
sdr 64 -tdi 0400040012400040
runtest -sec 0.002
sdr 64 -tdi 8000000032400040
runtest -sec 0.002
sdr 64 -tdi 8800450f0a400040
runtest -sec 0.002
sdr 64 -tdi 200000382a400040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a400040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a400040
runtest -sec 0.002
sdr 64 -tdi 0600090006400040
runtest -sec 0.002
sdr 64 -tdi d800005826400040
runtest -sec 0.002
sdr 64 -tdi 0200004016400040
runtest -sec 0.002
sdr 64 -tdi 8000000036400040
runtest -sec 0.002
sdr 64 -tdi 000014450e400040
runtest -sec 0.002
sdr 64 -tdi 000004002e400040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e400040
runtest -sec 0.002
sdr 64 -tdi 01a000003e400040
runtest -sec 0.002
sdr 64 -tdi 3680000001400040
runtest -sec 0.002
sdr 64 -tdi da00140121400040
runtest -sec 0.002
sdr 64 -tdi 6c00021811400040
runtest -sec 0.002
sdr 64 -tdi a000000031400040
runtest -sec 0.002
sdr 64 -tdi c400010d09400040
runtest -sec 0.002
sdr 64 -tdi 0044080629400040
runtest -sec 0.002
sdr 64 -tdi 0000000419400040
runtest -sec 0.002
sdr 64 -tdi 0000000039400040
runtest -sec 0.002
sdr 64 -tdi 0080010005400040
runtest -sec 0.002
sdr 64 -tdi 0000800025400040
runtest -sec 0.002
sdr 64 -tdi 0000000015400040
runtest -sec 0.002
sdr 64 -tdi 0208000035400040
runtest -sec 0.002
sdr 64 -tdi 4408020e0d400040
runtest -sec 0.002
sdr 64 -tdi 000c18ba2d400040
runtest -sec 0.002
sdr 64 -tdi 000000011d400040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d400040
runtest -sec 0.002
sdr 64 -tdi 0680100003400040
runtest -sec 0.002
sdr 64 -tdi 0008140023400040
runtest -sec 0.002
sdr 64 -tdi 0000000013400040
runtest -sec 0.002
sdr 64 -tdi 9080000033400040
runtest -sec 0.002
sdr 64 -tdi 0001001f0b400040
runtest -sec 0.002
sdr 64 -tdi 100080042b400040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b400040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b400040
runtest -sec 0.002
sdr 64 -tdi 3600000007400040
runtest -sec 0.002
sdr 64 -tdi 0000000127400040
runtest -sec 0.002
sdr 64 -tdi 0002400017400040
runtest -sec 0.002
sdr 64 -tdi 0000000037400040
runtest -sec 0.002
sdr 64 -tdi 00000a000f400040
runtest -sec 0.002
sdr 64 -tdi 000800422f400040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f400040
runtest -sec 0.002
sdr 64 -tdi 01a000013f400040
runtest -sec 0.002
sdr 64 -tdi 3680000000c00040
runtest -sec 0.002
sdr 64 -tdi 1a00000420c00040
runtest -sec 0.002
sdr 64 -tdi 6810100010c00040
runtest -sec 0.002
sdr 64 -tdi a000000030c00040
runtest -sec 0.002
sdr 64 -tdi 8000082108c00040
runtest -sec 0.002
sdr 64 -tdi 0004983628c00040
runtest -sec 0.002
sdr 64 -tdi 0000004a18c00040
runtest -sec 0.002
sdr 64 -tdi 0011000038c00040
runtest -sec 0.002
sdr 64 -tdi 0000000004c00040
runtest -sec 0.002
sdr 64 -tdi f900040024c00040
runtest -sec 0.002
sdr 64 -tdi 0000000014c00040
runtest -sec 0.002
sdr 64 -tdi 0000000034c00040
runtest -sec 0.002
sdr 64 -tdi 804100470cc00040
runtest -sec 0.002
sdr 64 -tdi 0040003e2cc00040
runtest -sec 0.002
sdr 64 -tdi 000000101cc00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3cc00040
runtest -sec 0.002
sdr 64 -tdi 0600000002c00040
runtest -sec 0.002
sdr 64 -tdi e020200022c00040
runtest -sec 0.002
sdr 64 -tdi 0000000012c00040
runtest -sec 0.002
sdr 64 -tdi 8000000032c00040
runtest -sec 0.002
sdr 64 -tdi 80304a080ac00040
runtest -sec 0.002
sdr 64 -tdi 000800382ac00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ac00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ac00040
runtest -sec 0.002
sdr 64 -tdi 7680000006c00040
runtest -sec 0.002
sdr 64 -tdi 0710440026c00040
runtest -sec 0.002
sdr 64 -tdi 0000201016c00040
runtest -sec 0.002
sdr 64 -tdi e000800036c00040
runtest -sec 0.002
sdr 64 -tdi 002087080ec00040
runtest -sec 0.002
sdr 64 -tdi 000001002ec00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ec00040
runtest -sec 0.002
sdr 64 -tdi 01b400003ec00040
runtest -sec 0.002
sdr 64 -tdi 3680000001c00040
runtest -sec 0.002
sdr 64 -tdi 1a00000421c00040
runtest -sec 0.002
sdr 64 -tdi 6800102011c00040
runtest -sec 0.002
sdr 64 -tdi a000400031c00040
runtest -sec 0.002
sdr 64 -tdi c500000909c00040
runtest -sec 0.002
sdr 64 -tdi 1000080629c00040
runtest -sec 0.002
sdr 64 -tdi 0000000519c00040
runtest -sec 0.002
sdr 64 -tdi 0000000039c00040
runtest -sec 0.002
sdr 64 -tdi b680000005c00040
runtest -sec 0.002
sdr 64 -tdi f800000825c00040
runtest -sec 0.002
sdr 64 -tdi 0000080015c00040
runtest -sec 0.002
sdr 64 -tdi 0000000035c00040
runtest -sec 0.002
sdr 64 -tdi 000006850dc00040
runtest -sec 0.002
sdr 64 -tdi 0000003c2dc00040
runtest -sec 0.002
sdr 64 -tdi 0000000a1dc00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3dc00040
runtest -sec 0.002
sdr 64 -tdi 0780000003c00040
runtest -sec 0.002
sdr 64 -tdi f800000023c00040
runtest -sec 0.002
sdr 64 -tdi 000000a813c00040
runtest -sec 0.002
sdr 64 -tdi a000000033c00040
runtest -sec 0.002
sdr 64 -tdi 000080060bc00040
runtest -sec 0.002
sdr 64 -tdi 000218be2bc00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1bc00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3bc00040
runtest -sec 0.002
sdr 64 -tdi 3100000007c00040
runtest -sec 0.002
sdr 64 -tdi d802000027c00040
runtest -sec 0.002
sdr 64 -tdi 0000000017c00040
runtest -sec 0.002
sdr 64 -tdi 4000000037c00040
runtest -sec 0.002
sdr 64 -tdi 000086090fc00040
runtest -sec 0.002
sdr 64 -tdi 000040362fc00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1fc00040
runtest -sec 0.002
sdr 64 -tdi 01a000193fc00040
runtest -sec 0.002
sdr 64 -tdi 0780000000200040
runtest -sec 0.002
sdr 64 -tdi 5a0080a020200040
runtest -sec 0.002
sdr 64 -tdi 6800019110200040
runtest -sec 0.002
sdr 64 -tdi a000000030200040
runtest -sec 0.002
sdr 64 -tdi 8000002508200040
runtest -sec 0.002
sdr 64 -tdi 00002a3628200040
runtest -sec 0.002
sdr 64 -tdi 0000004018200040
runtest -sec 0.002
sdr 64 -tdi 0000000038200040
runtest -sec 0.002
sdr 64 -tdi 3800000004200040
runtest -sec 0.002
sdr 64 -tdi f800040824200040
runtest -sec 0.002
sdr 64 -tdi 0100100014200040
runtest -sec 0.002
sdr 64 -tdi 8000000034200040
runtest -sec 0.002
sdr 64 -tdi 8020000f0c200040
runtest -sec 0.002
sdr 64 -tdi 2000003e2c200040
runtest -sec 0.002
sdr 64 -tdi 000000111c200040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c200040
runtest -sec 0.002
sdr 64 -tdi 8f80000002200040
runtest -sec 0.002
sdr 64 -tdi e000200022200040
runtest -sec 0.002
sdr 64 -tdi 0401000012200040
runtest -sec 0.002
sdr 64 -tdi 2000000032200040
runtest -sec 0.002
sdr 64 -tdi 8200000e0a200040
runtest -sec 0.002
sdr 64 -tdi 000000382a200040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a200040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a200040
runtest -sec 0.002
sdr 64 -tdi 0f00000006200040
runtest -sec 0.002
sdr 64 -tdi 0600002026200040
runtest -sec 0.002
sdr 64 -tdi 0000000016200040
runtest -sec 0.002
sdr 64 -tdi 2000000036200040
runtest -sec 0.002
sdr 64 -tdi 000000000e200040
runtest -sec 0.002
sdr 64 -tdi 002400002e200040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e200040
runtest -sec 0.002
sdr 64 -tdi 01a000003e200040
runtest -sec 0.002
sdr 64 -tdi 3780000001200040
runtest -sec 0.002
sdr 64 -tdi 1b40002021200040
runtest -sec 0.002
sdr 64 -tdi 6800001111200040
runtest -sec 0.002
sdr 64 -tdi a000000031200040
runtest -sec 0.002
sdr 64 -tdi 8000018109200040
runtest -sec 0.002
sdr 64 -tdi 0000048629200040
runtest -sec 0.002
sdr 64 -tdi 0000000419200040
runtest -sec 0.002
sdr 64 -tdi 0000000039200040
runtest -sec 0.002
sdr 64 -tdi 0600000005200040
runtest -sec 0.002
sdr 64 -tdi 9000000825200040
runtest -sec 0.002
sdr 64 -tdi 0000080015200040
runtest -sec 0.002
sdr 64 -tdi 88d4d34c00000040
runtest -sec 0.002
sdr 64 -tdi 0200000035200040
runtest -sec 0.002
sdr 64 -tdi 000006460d200040
runtest -sec 0.002
sdr 64 -tdi 800000782d200040
runtest -sec 0.002
sdr 64 -tdi 000000001d200040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d200040
runtest -sec 0.002
sdr 64 -tdi b780000003200040
runtest -sec 0.002
sdr 64 -tdi 7800000023200040
runtest -sec 0.002
sdr 64 -tdi 0000004013200040
runtest -sec 0.002
sdr 64 -tdi 3000000033200040
runtest -sec 0.002
sdr 64 -tdi 800010060b200040
runtest -sec 0.002
sdr 64 -tdi 0000a8122b200040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b200040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b200040
runtest -sec 0.002
sdr 64 -tdi 0900000007200040
runtest -sec 0.002
sdr 64 -tdi d800001027200040
runtest -sec 0.002
sdr 64 -tdi 0008500017200040
runtest -sec 0.002
sdr 64 -tdi c000000037200040
runtest -sec 0.002
sdr 64 -tdi 001184090f200040
runtest -sec 0.002
sdr 64 -tdi 000898a72f200040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f200040
runtest -sec 0.002
sdr 64 -tdi 01a000013f200040
runtest -sec 0.002
sdr 64 -tdi 0780000000a00040
runtest -sec 0.002
sdr 64 -tdi da00020020a00040
runtest -sec 0.002
sdr 64 -tdi 6802002410a00040
runtest -sec 0.002
sdr 64 -tdi a000000030a00040
runtest -sec 0.002
sdr 64 -tdi a800012508a00040
runtest -sec 0.002
sdr 64 -tdi a004000628a00040
runtest -sec 0.002
sdr 64 -tdi 0000004018a00040
runtest -sec 0.002
sdr 64 -tdi 0000000038a00040
runtest -sec 0.002
sdr 64 -tdi 3844000004a00040
runtest -sec 0.002
sdr 64 -tdi fa00000924a00040
runtest -sec 0.002
sdr 64 -tdi 0000000014a00040
runtest -sec 0.002
sdr 64 -tdi 0000000034a00040
runtest -sec 0.002
sdr 64 -tdi 0000024e0ca00040
runtest -sec 0.002
sdr 64 -tdi 000009382ca00040
runtest -sec 0.002
sdr 64 -tdi 000000001ca00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ca00040
runtest -sec 0.002
sdr 64 -tdi 0f80000002a00040
runtest -sec 0.002
sdr 64 -tdi e000000022a00040
runtest -sec 0.002
sdr 64 -tdi 0000000012a00040
runtest -sec 0.002
sdr 64 -tdi 8000000032a00040
runtest -sec 0.002
sdr 64 -tdi 0000000f0aa00040
runtest -sec 0.002
sdr 64 -tdi 0000003e2aa00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1aa00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3aa00040
runtest -sec 0.002
sdr 64 -tdi 0f00000006a00040
runtest -sec 0.002
sdr 64 -tdi 0400008026a00040
runtest -sec 0.002
sdr 64 -tdi 0100000016a00040
runtest -sec 0.002
sdr 64 -tdi 0000000036a00040
runtest -sec 0.002
sdr 64 -tdi 000108000ea00040
runtest -sec 0.002
sdr 64 -tdi 000008802ea00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ea00040
runtest -sec 0.002
sdr 64 -tdi 01a000003ea00040
runtest -sec 0.002
sdr 64 -tdi 3780000001a00040
runtest -sec 0.002
sdr 64 -tdi 1a00002021a00040
runtest -sec 0.002
sdr 64 -tdi 6c00001211a00040
runtest -sec 0.002
sdr 64 -tdi a000000031a00040
runtest -sec 0.002
sdr 64 -tdi 8010092109a00040
runtest -sec 0.002
sdr 64 -tdi 0002200629a00040
runtest -sec 0.002
sdr 64 -tdi 0000000019a00040
runtest -sec 0.002
sdr 64 -tdi 001ffc3f39a00040
runtest -sec 0.002
sdr 64 -tdi 035ffe0005a00040
runtest -sec 0.002
sdr 64 -tdi 097ffe1025a00040
runtest -sec 0.002
sdr 64 -tdi 05ffe04015a00040
runtest -sec 0.002
sdr 64 -tdi 97ff800035a00040
runtest -sec 0.002
sdr 64 -tdi 5ffe00000da00040
runtest -sec 0.002
sdr 64 -tdi 7ff800022da00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1da00040
runtest -sec 0.002
sdr 64 -tdi 001fffff3da00040
runtest -sec 0.002
sdr 64 -tdi 245ffe0003a00040
runtest -sec 0.002
sdr 64 -tdi 91fff80023a00040
runtest -sec 0.002
sdr 64 -tdi 07fff40013a00040
runtest -sec 0.002
sdr 64 -tdi 17ff800033a00040
runtest -sec 0.002
sdr 64 -tdi 7ffe00090ba00040
runtest -sec 0.002
sdr 64 -tdi fff800242ba00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ba00040
runtest -sec 0.002
sdr 64 -tdi 001fffff3ba00040
runtest -sec 0.002
sdr 64 -tdi 215ffe0007a00040
runtest -sec 0.002
sdr 64 -tdi 85fff86027a00040
runtest -sec 0.002
sdr 64 -tdi 07ffe04017a00040
runtest -sec 0.002
sdr 64 -tdi 17ff800037a00040
runtest -sec 0.002
sdr 64 -tdi 7fff00400fa00040
runtest -sec 0.002
sdr 64 -tdi fff800202fa00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fa00040
runtest -sec 0.002
sdr 64 -tdi 001ffc3f3fa00040
runtest -sec 0.002
sdr 64 -tdi 01dffe0000600040
runtest -sec 0.002
sdr 64 -tdi 15fff80020600040
runtest -sec 0.002
sdr 64 -tdi 07ffe80010600040
runtest -sec 0.002
sdr 64 -tdi 57ff800030600040
runtest -sec 0.002
sdr 64 -tdi 7fff010808600040
runtest -sec 0.002
sdr 64 -tdi fff9100128600040
runtest -sec 0.002
sdr 64 -tdi 0000007f18600040
runtest -sec 0.002
sdr 64 -tdi 0000002038600040
runtest -sec 0.002
sdr 64 -tdi 0600000004600040
runtest -sec 0.002
sdr 64 -tdi 7800000924600040
runtest -sec 0.002
sdr 64 -tdi 0000240414600040
runtest -sec 0.002
sdr 64 -tdi 8000000034600040
runtest -sec 0.002
sdr 64 -tdi 2000000f0c600040
runtest -sec 0.002
sdr 64 -tdi 029490342c600040
runtest -sec 0.002
sdr 64 -tdi 000000001c600040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c600040
runtest -sec 0.002
sdr 64 -tdi 3780000002600040
runtest -sec 0.002
sdr 64 -tdi f800000022600040
runtest -sec 0.002
sdr 64 -tdi 0000106012600040
runtest -sec 0.002
sdr 64 -tdi 0000000032600040
runtest -sec 0.002
sdr 64 -tdi 4000000e0a600040
runtest -sec 0.002
sdr 64 -tdi 0000003c2a600040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a600040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a600040
runtest -sec 0.002
sdr 64 -tdi 0900000006600040
runtest -sec 0.002
sdr 64 -tdi d800001026600040
runtest -sec 0.002
sdr 64 -tdi 0000000016600040
runtest -sec 0.002
sdr 64 -tdi 2000000036600040
runtest -sec 0.002
sdr 64 -tdi 000000200e600040
runtest -sec 0.002
sdr 64 -tdi 000008022e600040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e600040
runtest -sec 0.002
sdr 64 -tdi 01a000043e600040
runtest -sec 0.002
sdr 64 -tdi 0780000001600040
runtest -sec 0.002
sdr 64 -tdi da00004021600040
runtest -sec 0.002
sdr 64 -tdi 6800029211600040
runtest -sec 0.002
sdr 64 -tdi a000000031600040
runtest -sec 0.002
sdr 64 -tdi 8000020109600040
runtest -sec 0.002
sdr 64 -tdi 1002204629600040
runtest -sec 0.002
sdr 64 -tdi 0000005519600040
runtest -sec 0.002
sdr 64 -tdi 0000000039600040
runtest -sec 0.002
sdr 64 -tdi 3800000005600040
runtest -sec 0.002
sdr 64 -tdi 0380000825600040
runtest -sec 0.002
sdr 64 -tdi 0100000015600040
runtest -sec 0.002
sdr 64 -tdi 8000000035600040
runtest -sec 0.002
sdr 64 -tdi 4401440a0d600040
runtest -sec 0.002
sdr 64 -tdi 248000002d600040
runtest -sec 0.002
sdr 64 -tdi 000000111d600040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d600040
runtest -sec 0.002
sdr 64 -tdi 0f80000003600040
runtest -sec 0.002
sdr 64 -tdi 0400000123600040
runtest -sec 0.002
sdr 64 -tdi 0400000013600040
runtest -sec 0.002
sdr 64 -tdi 0000000033600040
runtest -sec 0.002
sdr 64 -tdi 0010024e0b600040
runtest -sec 0.002
sdr 64 -tdi 000000002b600040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b600040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b600040
runtest -sec 0.002
sdr 64 -tdi 0f00000007600040
runtest -sec 0.002
sdr 64 -tdi 2200240027600040
runtest -sec 0.002
sdr 64 -tdi 0002000017600040
runtest -sec 0.002
sdr 64 -tdi 0018000037600040
runtest -sec 0.002
sdr 64 -tdi 422006210f600040
runtest -sec 0.002
sdr 64 -tdi 000000002f600040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f600040
runtest -sec 0.002
sdr 64 -tdi 01a000003f600040
runtest -sec 0.002
sdr 64 -tdi 3780000000e00040
runtest -sec 0.002
sdr 64 -tdi 1b40006020e00040
runtest -sec 0.002
sdr 64 -tdi 6820028010e00040
runtest -sec 0.002
sdr 64 -tdi a000000030e00040
runtest -sec 0.002
sdr 64 -tdi 8800800908e00040
runtest -sec 0.002
sdr 64 -tdi 0000000628e00040
runtest -sec 0.002
sdr 64 -tdi 0000000418e00040
runtest -sec 0.002
sdr 64 -tdi 0000000038e00040
runtest -sec 0.002
sdr 64 -tdi 0640000004e00040
runtest -sec 0.002
sdr 64 -tdi fb80000824e00040
runtest -sec 0.002
sdr 64 -tdi 0200400014e00040
runtest -sec 0.002
sdr 64 -tdi 8800000034e00040
runtest -sec 0.002
sdr 64 -tdi 0000000b0ce00040
runtest -sec 0.002
sdr 64 -tdi 008400002ce00040
runtest -sec 0.002
sdr 64 -tdi 000000001ce00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ce00040
runtest -sec 0.002
sdr 64 -tdi 3790000002e00040
runtest -sec 0.002
sdr 64 -tdi e000000122e00040
runtest -sec 0.002
sdr 64 -tdi 0400100012e00040
runtest -sec 0.002
sdr 64 -tdi 1000000032e00040
runtest -sec 0.002
sdr 64 -tdi 000025200ae00040
runtest -sec 0.002
sdr 64 -tdi 081000002ae00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ae00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ae00040
runtest -sec 0.002
sdr 64 -tdi 0900000006e00040
runtest -sec 0.002
sdr 64 -tdi 0400000026e00040
runtest -sec 0.002
sdr 64 -tdi 0000000016e00040
runtest -sec 0.002
sdr 64 -tdi 8100000036e00040
runtest -sec 0.002
sdr 64 -tdi 000006040ee00040
runtest -sec 0.002
sdr 64 -tdi 000000002ee00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ee00040
runtest -sec 0.002
sdr 64 -tdi 01a000013ee00040
runtest -sec 0.002
sdr 64 -tdi 0780000001e00040
runtest -sec 0.002
sdr 64 -tdi 1a00009021e00040
runtest -sec 0.002
sdr 64 -tdi 6800002211e00040
runtest -sec 0.002
sdr 64 -tdi b000000031e00040
runtest -sec 0.002
sdr 64 -tdi 8000402d09e00040
runtest -sec 0.002
sdr 64 -tdi 0000000629e00040
runtest -sec 0.002
sdr 64 -tdi 0000005219e00040
runtest -sec 0.002
sdr 64 -tdi 0000000039e00040
runtest -sec 0.002
sdr 64 -tdi 3800000005e00040
runtest -sec 0.002
sdr 64 -tdi f800000a25e00040
runtest -sec 0.002
sdr 64 -tdi 0000100015e00040
runtest -sec 0.002
sdr 64 -tdi 8000000035e00040
runtest -sec 0.002
sdr 64 -tdi 4400024d0de00040
runtest -sec 0.002
sdr 64 -tdi 018008262de00040
runtest -sec 0.002
sdr 64 -tdi 000000111de00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3de00040
runtest -sec 0.002
sdr 64 -tdi 0f80000003e00040
runtest -sec 0.002
sdr 64 -tdi e000000023e00040
runtest -sec 0.002
sdr 64 -tdi 0000800013e00040
runtest -sec 0.002
sdr 64 -tdi 8000000033e00040
runtest -sec 0.002
sdr 64 -tdi 000000010be00040
runtest -sec 0.002
sdr 64 -tdi 400090b82be00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1be00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3be00040
runtest -sec 0.002
sdr 64 -tdi 0900000007e00040
runtest -sec 0.002
sdr 64 -tdi 0700008027e00040
runtest -sec 0.002
sdr 64 -tdi 0000200417e00040
runtest -sec 0.002
sdr 64 -tdi 0000000037e00040
runtest -sec 0.002
sdr 64 -tdi 0002000c0fe00040
runtest -sec 0.002
sdr 64 -tdi 008018942fe00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1fe00040
runtest -sec 0.002
sdr 64 -tdi 01a000003fe00040
runtest -sec 0.002
sdr 64 -tdi 3780000000100040
runtest -sec 0.002
sdr 64 -tdi 1a10001020100040
runtest -sec 0.002
sdr 64 -tdi 6800102010100040
runtest -sec 0.002
sdr 64 -tdi a000000030100040
runtest -sec 0.002
sdr 64 -tdi 8001000108100040
runtest -sec 0.002
sdr 64 -tdi 0201000628100040
runtest -sec 0.002
sdr 64 -tdi 0000000418100040
runtest -sec 0.002
sdr 64 -tdi 0000000038100040
runtest -sec 0.002
sdr 64 -tdi 0000000004100040
runtest -sec 0.002
sdr 64 -tdi 0200040024100040
runtest -sec 0.002
sdr 64 -tdi 0000400014100040
runtest -sec 0.002
sdr 64 -tdi 0000000034100040
runtest -sec 0.002
sdr 64 -tdi 000004050c100040
runtest -sec 0.002
sdr 64 -tdi 0004086e2c100040
runtest -sec 0.002
sdr 64 -tdi 000000021c100040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c100040
runtest -sec 0.002
sdr 64 -tdi 0680000002100040
runtest -sec 0.002
sdr 64 -tdi 1800400022100040
runtest -sec 0.002
sdr 64 -tdi 0000100012100040
runtest -sec 0.002
sdr 64 -tdi 8000000032100040
runtest -sec 0.002
sdr 64 -tdi 0000200b0a100040
runtest -sec 0.002
sdr 64 -tdi 001090002a100040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a100040
runtest -sec 0.002
sdr 64 -tdi 0000007f3a100040
runtest -sec 0.002
sdr 64 -tdi 3680090006100040
runtest -sec 0.002
sdr 64 -tdi d800000126100040
runtest -sec 0.002
sdr 64 -tdi 0002000016100040
runtest -sec 0.002
sdr 64 -tdi 8000000036100040
runtest -sec 0.002
sdr 64 -tdi 000000070e100040
runtest -sec 0.002
sdr 64 -tdi 01141c122e100040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e100040
runtest -sec 0.002
sdr 64 -tdi 01a002013e100040
runtest -sec 0.002
sdr 64 -tdi 3680000001100040
runtest -sec 0.002
sdr 64 -tdi da00000821100040
runtest -sec 0.002
sdr 64 -tdi 6808001111100040
runtest -sec 0.002
sdr 64 -tdi a000000031100040
runtest -sec 0.002
sdr 64 -tdi 8000000509100040
runtest -sec 0.002
sdr 64 -tdi 0080403629100040
runtest -sec 0.002
sdr 64 -tdi 0000004819100040
runtest -sec 0.002
sdr 64 -tdi 0000000039100040
runtest -sec 0.002
sdr 64 -tdi 0040010005100040
runtest -sec 0.002
sdr 64 -tdi 3804c40025100040
runtest -sec 0.002
sdr 64 -tdi 0102000015100040
runtest -sec 0.002
sdr 64 -tdi 8010000035100040
runtest -sec 0.002
sdr 64 -tdi 081000410d100040
runtest -sec 0.002
sdr 64 -tdi 000010342d100040
runtest -sec 0.002
sdr 64 -tdi 000000101d100040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d100040
runtest -sec 0.002
sdr 64 -tdi 0608080003100040
runtest -sec 0.002
sdr 64 -tdi 3800000023100040
runtest -sec 0.002
sdr 64 -tdi 0420000013100040
runtest -sec 0.002
sdr 64 -tdi 8008000033100040
runtest -sec 0.002
sdr 64 -tdi 4001010d0b100040
runtest -sec 0.002
sdr 64 -tdi 0000403c2b100040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b100040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b100040
runtest -sec 0.002
sdr 64 -tdi 3680000007100040
runtest -sec 0.002
sdr 64 -tdi 1e00040427100040
runtest -sec 0.002
sdr 64 -tdi 0000000017100040
runtest -sec 0.002
sdr 64 -tdi 0000000037100040
runtest -sec 0.002
sdr 64 -tdi 012100020f100040
runtest -sec 0.002
sdr 64 -tdi 048008422f100040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f100040
runtest -sec 0.002
sdr 64 -tdi 01a000003f100040
runtest -sec 0.002
sdr 64 -tdi 3680000000900040
runtest -sec 0.002
sdr 64 -tdi 1b40400420900040
runtest -sec 0.002
sdr 64 -tdi 6800028010900040
runtest -sec 0.002
sdr 64 -tdi a000000030900040
runtest -sec 0.002
sdr 64 -tdi 8010000108900040
runtest -sec 0.002
sdr 64 -tdi 0002200628900040
runtest -sec 0.002
sdr 64 -tdi 0000000418900040
runtest -sec 0.002
sdr 64 -tdi 0000000038900040
runtest -sec 0.002
sdr 64 -tdi be00000004900040
runtest -sec 0.002
sdr 64 -tdi fa02001824900040
runtest -sec 0.002
sdr 64 -tdi 0000000014900040
runtest -sec 0.002
sdr 64 -tdi 0000000034900040
runtest -sec 0.002
sdr 64 -tdi 0000008e0c900040
runtest -sec 0.002
sdr 64 -tdi 018008022c900040
runtest -sec 0.002
sdr 64 -tdi 000000001c900040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c900040
runtest -sec 0.002
sdr 64 -tdi 3e00000002900040
runtest -sec 0.002
sdr 64 -tdi e140810022900040
runtest -sec 0.002
sdr 64 -tdi 0492000012900040
runtest -sec 0.002
sdr 64 -tdi 8000000032900040
runtest -sec 0.002
sdr 64 -tdi 000001030a900040
runtest -sec 0.002
sdr 64 -tdi 000110402a900040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a900040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a900040
runtest -sec 0.002
sdr 64 -tdi 1600000006900040
runtest -sec 0.002
sdr 64 -tdi 0400009826900040
runtest -sec 0.002
sdr 64 -tdi 0000000016900040
runtest -sec 0.002
sdr 64 -tdi 8000000036900040
runtest -sec 0.002
sdr 64 -tdi 001100030e900040
runtest -sec 0.002
sdr 64 -tdi 000200002e900040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e900040
runtest -sec 0.002
sdr 64 -tdi 01a000013e900040
runtest -sec 0.002
sdr 64 -tdi b680000001900040
runtest -sec 0.002
sdr 64 -tdi 1a00000021900040
runtest -sec 0.002
sdr 64 -tdi 6800001811900040
runtest -sec 0.002
sdr 64 -tdi a000000031900040
runtest -sec 0.002
sdr 64 -tdi 8000000d09900040
runtest -sec 0.002
sdr 64 -tdi 00001a0629900040
runtest -sec 0.002
sdr 64 -tdi 0000004019900040
runtest -sec 0.002
sdr 64 -tdi 2b80000039900040
runtest -sec 0.002
sdr 64 -tdi 0080001005900040
runtest -sec 0.002
sdr 64 -tdi f910440025900040
runtest -sec 0.002
sdr 64 -tdi 0200000015900040
runtest -sec 0.002
sdr 64 -tdi 8000800035900040
runtest -sec 0.002
sdr 64 -tdi 0122000a0d900040
runtest -sec 0.002
sdr 64 -tdi 01800a0c2d900040
runtest -sec 0.002
sdr 64 -tdi 000000001d900040
runtest -sec 0.002
sdr 64 -tdi 0f80003f3d900040
runtest -sec 0.002
sdr 64 -tdi 0601200a03900040
runtest -sec 0.002
sdr 64 -tdi e000000023900040
runtest -sec 0.002
sdr 64 -tdi 0400000013900040
runtest -sec 0.002
sdr 64 -tdi 8000400033900040
runtest -sec 0.002
sdr 64 -tdi 800144040b900040
runtest -sec 0.002
sdr 64 -tdi 000120302b900040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b900040
runtest -sec 0.002
sdr 64 -tdi 0d80003f3b900040
runtest -sec 0.002
sdr 64 -tdi b680000807900040
runtest -sec 0.002
sdr 64 -tdi 0700080027900040
runtest -sec 0.002
sdr 64 -tdi 0000100017900040
runtest -sec 0.002
sdr 64 -tdi 0000000037900040
runtest -sec 0.002
sdr 64 -tdi 5005000b0f900040
runtest -sec 0.002
sdr 64 -tdi 080808672f900040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f900040
runtest -sec 0.002
sdr 64 -tdi 8da000003f900040
runtest -sec 0.002
sdr 64 -tdi 3680000500500040
runtest -sec 0.002
sdr 64 -tdi 1a20040820500040
runtest -sec 0.002
sdr 64 -tdi 6800802810500040
runtest -sec 0.002
sdr 64 -tdi a000000030500040
runtest -sec 0.002
sdr 64 -tdi 8000000908500040
runtest -sec 0.002
sdr 64 -tdi 0086101628500040
runtest -sec 0.002
sdr 64 -tdi 0000000018500040
runtest -sec 0.002
sdr 64 -tdi 0000880038500040
runtest -sec 0.002
sdr 64 -tdi 1a05200004500040
runtest -sec 0.002
sdr 64 -tdi 9004820024500040
runtest -sec 0.002
sdr 64 -tdi 4040424214500040
runtest -sec 0.002
sdr 64 -tdi 0000208a34500040
runtest -sec 0.002
sdr 64 -tdi 0101084f0c500040
runtest -sec 0.002
sdr 64 -tdi 000000002c500040
runtest -sec 0.002
sdr 64 -tdi 000000001c500040
runtest -sec 0.002
sdr 64 -tdi 0000027f3c500040
runtest -sec 0.002
sdr 64 -tdi 26a0000002500040
runtest -sec 0.002
sdr 64 -tdi 0000141022500040
runtest -sec 0.002
sdr 64 -tdi 6400102012500040
runtest -sec 0.002
sdr 64 -tdi 8002410332500040
runtest -sec 0.002
sdr 64 -tdi 0028090f0a500040
runtest -sec 0.002
sdr 64 -tdi 000000002a500040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a500040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a500040
runtest -sec 0.002
sdr 64 -tdi 3600000006500040
runtest -sec 0.002
sdr 64 -tdi 0080000126500040
runtest -sec 0.002
sdr 64 -tdi 0000180016500040
runtest -sec 0.002
sdr 64 -tdi 0000600736500040
runtest -sec 0.002
sdr 64 -tdi 0000800c0e500040
runtest -sec 0.002
sdr 64 -tdi 008000002e500040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e500040
runtest -sec 0.002
sdr 64 -tdi 01a000013e500040
runtest -sec 0.002
sdr 64 -tdi 3680000001500040
runtest -sec 0.002
sdr 64 -tdi 9b00440821500040
runtest -sec 0.002
sdr 64 -tdi 6800405811500040
runtest -sec 0.002
sdr 64 -tdi a004024031500040
runtest -sec 0.002
sdr 64 -tdi 8000098d09500040
runtest -sec 0.002
sdr 64 -tdi 0400000629500040
runtest -sec 0.002
sdr 64 -tdi 0000004019500040
runtest -sec 0.002
sdr 64 -tdi 0000000039500040
runtest -sec 0.002
sdr 64 -tdi 3000000005500040
runtest -sec 0.002
sdr 64 -tdi e881021025500040
runtest -sec 0.002
sdr 64 -tdi 0002012115500040
runtest -sec 0.002
sdr 64 -tdi 9000119235500040
runtest -sec 0.002
sdr 64 -tdi 0000084f0d500040
runtest -sec 0.002
sdr 64 -tdi 001000002d500040
runtest -sec 0.002
sdr 64 -tdi 000000011d500040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d500040
runtest -sec 0.002
sdr 64 -tdi 1e00000003500040
runtest -sec 0.002
sdr 64 -tdi c900800923500040
runtest -sec 0.002
sdr 64 -tdi e020008013500040
runtest -sec 0.002
sdr 64 -tdi 8202400133500040
runtest -sec 0.002
sdr 64 -tdi 0000090f0b500040
runtest -sec 0.002
sdr 64 -tdi 200800002b500040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b500040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b500040
runtest -sec 0.002
sdr 64 -tdi b000000007500040
runtest -sec 0.002
sdr 64 -tdi de00002027500040
runtest -sec 0.002
sdr 64 -tdi 4108020817500040
runtest -sec 0.002
sdr 64 -tdi 8000000637500040
runtest -sec 0.002
sdr 64 -tdi 0000800c0f500040
runtest -sec 0.002
sdr 64 -tdi 000000002f500040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f500040
runtest -sec 0.002
sdr 64 -tdi 01a000013f500040
runtest -sec 0.002
sdr 64 -tdi 0680000000d00040
runtest -sec 0.002
sdr 64 -tdi df40001820d00040
runtest -sec 0.002
sdr 64 -tdi 6c02009010d00040
runtest -sec 0.002
sdr 64 -tdi a000228230d00040
runtest -sec 0.002
sdr 64 -tdi 8000098d08d00040
runtest -sec 0.002
sdr 64 -tdi 0000000628d00040
runtest -sec 0.002
sdr 64 -tdi 0000004018d00040
runtest -sec 0.002
sdr 64 -tdi 0000000a38d00040
runtest -sec 0.002
sdr 64 -tdi 3e82000004d00040
runtest -sec 0.002
sdr 64 -tdi ea04820024d00040
runtest -sec 0.002
sdr 64 -tdi 0000020814d00040
runtest -sec 0.002
sdr 64 -tdi 9000080034d00040
runtest -sec 0.002
sdr 64 -tdi 008400030cd00040
runtest -sec 0.002
sdr 64 -tdi 800800002cd00040
runtest -sec 0.002
sdr 64 -tdi 000000001cd00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3cd00040
runtest -sec 0.002
sdr 64 -tdi 6380400002d00040
runtest -sec 0.002
sdr 64 -tdi e000141822d00040
runtest -sec 0.002
sdr 64 -tdi e000905012d00040
runtest -sec 0.002
sdr 64 -tdi 8100016332d00040
runtest -sec 0.002
sdr 64 -tdi 004200030ad00040
runtest -sec 0.002
sdr 64 -tdi 000400002ad00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ad00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ad00040
runtest -sec 0.002
sdr 64 -tdi 1700000006d00040
runtest -sec 0.002
sdr 64 -tdi d400084026d00040
runtest -sec 0.002
sdr 64 -tdi 0000322016d00040
runtest -sec 0.002
sdr 64 -tdi 8000101336d00040
runtest -sec 0.002
sdr 64 -tdi 0000008d0ed00040
runtest -sec 0.002
sdr 64 -tdi 008400002ed00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ed00040
runtest -sec 0.002
sdr 64 -tdi 01a000013ed00040
runtest -sec 0.002
sdr 64 -tdi 3780000001d00040
runtest -sec 0.002
sdr 64 -tdi de00042021d00040
runtest -sec 0.002
sdr 64 -tdi 6800008411d00040
runtest -sec 0.002
sdr 64 -tdi a000014031d00040
runtest -sec 0.002
sdr 64 -tdi 80001a0d09d00040
runtest -sec 0.002
sdr 64 -tdi 0810000629d00040
runtest -sec 0.002
sdr 64 -tdi 0000004019d00040
runtest -sec 0.002
sdr 64 -tdi 0000000039d00040
runtest -sec 0.002
sdr 64 -tdi 4800000005d00040
runtest -sec 0.002
sdr 64 -tdi 7800803825d00040
runtest -sec 0.002
sdr 64 -tdi 8004000015d00040
runtest -sec 0.002
sdr 64 -tdi 0000094235d00040
runtest -sec 0.002
sdr 64 -tdi 0000020e0dd00040
runtest -sec 0.002
sdr 64 -tdi 8000043e2dd00040
runtest -sec 0.002
sdr 64 -tdi 000000001dd00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3dd00040
runtest -sec 0.002
sdr 64 -tdi 3e00000003d00040
runtest -sec 0.002
sdr 64 -tdi d8a4000023d00040
runtest -sec 0.002
sdr 64 -tdi 8282019413d00040
runtest -sec 0.002
sdr 64 -tdi 9200004133d00040
runtest -sec 0.002
sdr 64 -tdi 0000008f0bd00040
runtest -sec 0.002
sdr 64 -tdi 0000083e2bd00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1bd00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3bd00040
runtest -sec 0.002
sdr 64 -tdi 8200000007d00040
runtest -sec 0.002
sdr 64 -tdi d201001027d00040
runtest -sec 0.002
sdr 64 -tdi 0002080017d00040
runtest -sec 0.002
sdr 64 -tdi 9880018337d00040
runtest -sec 0.002
sdr 64 -tdi 0800001d0fd00040
runtest -sec 0.002
sdr 64 -tdi 000001062fd00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fd00040
runtest -sec 0.002
sdr 64 -tdi 01a000003fd00040
runtest -sec 0.002
sdr 64 -tdi 2680000000300040
runtest -sec 0.002
sdr 64 -tdi 5b20820820300040
runtest -sec 0.002
sdr 64 -tdi 6810005210300040
runtest -sec 0.002
sdr 64 -tdi a008201330300040
runtest -sec 0.002
sdr 64 -tdi c0002a0d08300040
runtest -sec 0.002
sdr 64 -tdi 1001283628300040
runtest -sec 0.002
sdr 64 -tdi 0000004018300040
runtest -sec 0.002
sdr 64 -tdi 0000022838300040
runtest -sec 0.002
sdr 64 -tdi 3e00200004300040
runtest -sec 0.002
sdr 64 -tdi 9000000024300040
runtest -sec 0.002
sdr 64 -tdi a200308014300040
runtest -sec 0.002
sdr 64 -tdi 8000901134300040
runtest -sec 0.002
sdr 64 -tdi 000400030c300040
runtest -sec 0.002
sdr 64 -tdi 00008a3e2c300040
runtest -sec 0.002
sdr 64 -tdi 000000001c300040
runtest -sec 0.002
sdr 64 -tdi 0000007f3c300040
runtest -sec 0.002
sdr 64 -tdi 3e01000002300040
runtest -sec 0.002
sdr 64 -tdi 7000000022300040
runtest -sec 0.002
sdr 64 -tdi f400009112300040
runtest -sec 0.002
sdr 64 -tdi 8000414332300040
runtest -sec 0.002
sdr 64 -tdi 000200030a300040
runtest -sec 0.002
sdr 64 -tdi 0000103e2a300040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a300040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a300040
runtest -sec 0.002
sdr 64 -tdi 0600000006300040
runtest -sec 0.002
sdr 64 -tdi c800002026300040
runtest -sec 0.002
sdr 64 -tdi 1806540016300040
runtest -sec 0.002
sdr 64 -tdi 8000400336300040
runtest -sec 0.002
sdr 64 -tdi 0105008d0e300040
runtest -sec 0.002
sdr 64 -tdi 000000b62e300040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e300040
runtest -sec 0.002
sdr 64 -tdi 01a000013e300040
runtest -sec 0.002
sdr 64 -tdi 0680000001300040
runtest -sec 0.002
sdr 64 -tdi 9a00002a21300040
runtest -sec 0.002
sdr 64 -tdi 7800006411300040
runtest -sec 0.002
sdr 64 -tdi a001058431300040
runtest -sec 0.002
sdr 64 -tdi 80204a0d09300040
runtest -sec 0.002
sdr 64 -tdi 0000641629300040
runtest -sec 0.002
sdr 64 -tdi 0000004019300040
runtest -sec 0.002
sdr 64 -tdi 0000000039300040
runtest -sec 0.002
sdr 64 -tdi 1e00000005300040
runtest -sec 0.002
sdr 64 -tdi 8000020025300040
runtest -sec 0.002
sdr 64 -tdi 8400008015300040
runtest -sec 0.002
sdr 64 -tdi 9100110135300040
runtest -sec 0.002
sdr 64 -tdi 0809400f0d300040
runtest -sec 0.002
sdr 64 -tdi 2002013e2d300040
runtest -sec 0.002
sdr 64 -tdi 000000011d300040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d300040
runtest -sec 0.002
sdr 64 -tdi 2a80000003300040
runtest -sec 0.002
sdr 64 -tdi d000002023300040
runtest -sec 0.002
sdr 64 -tdi 810090a413300040
runtest -sec 0.002
sdr 64 -tdi 0000008633300040
runtest -sec 0.002
sdr 64 -tdi 4000098e0b300040
runtest -sec 0.002
sdr 64 -tdi 0000243e2b300040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b300040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b300040
runtest -sec 0.002
sdr 64 -tdi 3402000007300040
runtest -sec 0.002
sdr 64 -tdi c000000027300040
runtest -sec 0.002
sdr 64 -tdi 0002042017300040
runtest -sec 0.002
sdr 64 -tdi 9002418337300040
runtest -sec 0.002
sdr 64 -tdi 0081808c0f300040
runtest -sec 0.002
sdr 64 -tdi 002404162f300040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f300040
runtest -sec 0.002
sdr 64 -tdi 01a000003f300040
runtest -sec 0.002
sdr 64 -tdi 3680400000b00040
runtest -sec 0.002
sdr 64 -tdi 9a00011a20b00040
runtest -sec 0.002
sdr 64 -tdi 6820004810b00040
runtest -sec 0.002
sdr 64 -tdi a200201330b00040
runtest -sec 0.002
sdr 64 -tdi 8048060908b00040
runtest -sec 0.002
sdr 64 -tdi 0000983628b00040
runtest -sec 0.002
sdr 64 -tdi 0000004018b00040
runtest -sec 0.002
sdr 64 -tdi 0000000038b00040
runtest -sec 0.002
sdr 64 -tdi 0800000004b00040
runtest -sec 0.002
sdr 64 -tdi c000010c24b00040
runtest -sec 0.002
sdr 64 -tdi c000040014b00040
runtest -sec 0.002
sdr 64 -tdi 8002504234b00040
runtest -sec 0.002
sdr 64 -tdi 0105000f0cb00040
runtest -sec 0.002
sdr 64 -tdi 0000003e2cb00040
runtest -sec 0.002
sdr 64 -tdi 000000001cb00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3cb00040
runtest -sec 0.002
sdr 64 -tdi 2500000002b00040
runtest -sec 0.002
sdr 64 -tdi d140001022b00040
runtest -sec 0.002
sdr 64 -tdi 9480006412b00040
runtest -sec 0.002
sdr 64 -tdi 0000018332b00040
runtest -sec 0.002
sdr 64 -tdi 0020000e0ab00040
runtest -sec 0.002
sdr 64 -tdi 000008b82ab00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ab00040
runtest -sec 0.002
sdr 64 -tdi 0008003f3ab00040
runtest -sec 0.002
sdr 64 -tdi 3206200006b00040
runtest -sec 0.002
sdr 64 -tdi c000080026b00040
runtest -sec 0.002
sdr 64 -tdi 1802808016b00040
runtest -sec 0.002
sdr 64 -tdi 0001401036b00040
runtest -sec 0.002
sdr 64 -tdi 440100000eb00040
runtest -sec 0.002
sdr 64 -tdi 000409062eb00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1eb00040
runtest -sec 0.002
sdr 64 -tdi 01b000013eb00040
runtest -sec 0.002
sdr 64 -tdi 3ea0000001b00040
runtest -sec 0.002
sdr 64 -tdi da00062921b00040
runtest -sec 0.002
sdr 64 -tdi 781010a111b00040
runtest -sec 0.002
sdr 64 -tdi a048094031b00040
runtest -sec 0.002
sdr 64 -tdi 8010011109b00040
runtest -sec 0.002
sdr 64 -tdi 1040003629b00040
runtest -sec 0.002
sdr 64 -tdi 0000004019b00040
runtest -sec 0.002
sdr 64 -tdi 0000000039b00040
runtest -sec 0.002
sdr 64 -tdi 0800000005b00040
runtest -sec 0.002
sdr 64 -tdi f810801825b00040
runtest -sec 0.002
sdr 64 -tdi c200000015b00040
runtest -sec 0.002
sdr 64 -tdi 8018102235b00040
runtest -sec 0.002
sdr 64 -tdi 0081000d0db00040
runtest -sec 0.002
sdr 64 -tdi 000200082db00040
runtest -sec 0.002
sdr 64 -tdi 000000001db00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3db00040
runtest -sec 0.002
sdr 64 -tdi be00000003b00040
runtest -sec 0.002
sdr 64 -tdi 2102008023b00040
runtest -sec 0.002
sdr 64 -tdi 9400002213b00040
runtest -sec 0.002
sdr 64 -tdi 8000018333b00040
runtest -sec 0.002
sdr 64 -tdi 005025870bb00040
runtest -sec 0.002
sdr 64 -tdi 000026062bb00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1bb00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3bb00040
runtest -sec 0.002
sdr 64 -tdi 8200000007b00040
runtest -sec 0.002
sdr 64 -tdi d800001027b00040
runtest -sec 0.002
sdr 64 -tdi 1800080017b00040
runtest -sec 0.002
sdr 64 -tdi 9000001037b00040
runtest -sec 0.002
sdr 64 -tdi 4000004d0fb00040
runtest -sec 0.002
sdr 64 -tdi 000118002fb00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fb00040
runtest -sec 0.002
sdr 64 -tdi 01a000003fb00040
runtest -sec 0.002
sdr 64 -tdi 2680000000700040
runtest -sec 0.002
sdr 64 -tdi db10004820700040
runtest -sec 0.002
sdr 64 -tdi 7814005210700040
runtest -sec 0.002
sdr 64 -tdi a248214030700040
runtest -sec 0.002
sdr 64 -tdi 8400010d08700040
runtest -sec 0.002
sdr 64 -tdi 1000004628700040
runtest -sec 0.002
sdr 64 -tdi 0000004018700040
runtest -sec 0.002
sdr 64 -tdi 001ffc3f38700040
runtest -sec 0.002
sdr 64 -tdi 025ffe0004700040
runtest -sec 0.002
sdr 64 -tdi 217ff82024700040
runtest -sec 0.002
sdr 64 -tdi 25ffe00014700040
runtest -sec 0.002
sdr 64 -tdi 17ff900034700040
runtest -sec 0.002
sdr 64 -tdi 5ffe14000c700040
runtest -sec 0.002
sdr 64 -tdi 7ff800002c700040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c700040
runtest -sec 0.002
sdr 64 -tdi 001fffff3c700040
runtest -sec 0.002
sdr 64 -tdi 045ffe0002700040
runtest -sec 0.002
sdr 64 -tdi 117ffd0022700040
runtest -sec 0.002
sdr 64 -tdi 05ffe00012700040
runtest -sec 0.002
sdr 64 -tdi 17ff829332700040
runtest -sec 0.002
sdr 64 -tdi 5ffe000a0a700040
runtest -sec 0.002
sdr 64 -tdi fff800242a700040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a700040
runtest -sec 0.002
sdr 64 -tdi 001fffff3a700040
runtest -sec 0.002
sdr 64 -tdi 435ffe0006700040
runtest -sec 0.002
sdr 64 -tdi 8d7ffc0026700040
runtest -sec 0.002
sdr 64 -tdi 15fff00416700040
runtest -sec 0.002
sdr 64 -tdi 1fff800036700040
runtest -sec 0.002
sdr 64 -tdi 7ffe00000e700040
runtest -sec 0.002
sdr 64 -tdi fff800002e700040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e700040
runtest -sec 0.002
sdr 64 -tdi 001ffc3f3e700040
runtest -sec 0.002
sdr 64 -tdi 25dffe0001700040
runtest -sec 0.002
sdr 64 -tdi 077ffc0421700040
runtest -sec 0.002
sdr 64 -tdi 5dfff19011700040
runtest -sec 0.002
sdr 64 -tdi 5fff800031700040
runtest -sec 0.002
sdr 64 -tdi 7ffe000009700040
runtest -sec 0.002
sdr 64 -tdi fff8000129700040
runtest -sec 0.002
sdr 64 -tdi 0000007f19700040
runtest -sec 0.002
sdr 64 -tdi 0000000039700040
runtest -sec 0.002
sdr 64 -tdi 3e00000005700040
runtest -sec 0.002
sdr 64 -tdi f800240025700040
runtest -sec 0.002
sdr 64 -tdi a000000015700040
runtest -sec 0.002
sdr 64 -tdi 8000610035700040
runtest -sec 0.002
sdr 64 -tdi 0000000c0d700040
runtest -sec 0.002
sdr 64 -tdi 0004013e2d700040
runtest -sec 0.002
sdr 64 -tdi 000000011d700040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d700040
runtest -sec 0.002
sdr 64 -tdi 3e80000003700040
runtest -sec 0.002
sdr 64 -tdi f000000023700040
runtest -sec 0.002
sdr 64 -tdi 2000049413700040
runtest -sec 0.002
sdr 64 -tdi 0004000033700040
runtest -sec 0.002
sdr 64 -tdi 000a298c0b700040
runtest -sec 0.002
sdr 64 -tdi 1020083e2b700040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b700040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b700040
runtest -sec 0.002
sdr 64 -tdi 0620400007700040
runtest -sec 0.002
sdr 64 -tdi d000820027700040
runtest -sec 0.002
sdr 64 -tdi 4800000017700040
runtest -sec 0.002
sdr 64 -tdi 0002401337700040
runtest -sec 0.002
sdr 64 -tdi 0000108c0f700040
runtest -sec 0.002
sdr 64 -tdi 000201062f700040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f700040
runtest -sec 0.002
sdr 64 -tdi 01a000013f700040
runtest -sec 0.002
sdr 64 -tdi 06c0200000f00040
runtest -sec 0.002
sdr 64 -tdi 1a08002a20f00040
runtest -sec 0.002
sdr 64 -tdi 6800016210f00040
runtest -sec 0.002
sdr 64 -tdi a000218330f00040
runtest -sec 0.002
sdr 64 -tdi 80110a0d08f00040
runtest -sec 0.002
sdr 64 -tdi 0000243628f00040
runtest -sec 0.002
sdr 64 -tdi 0000004018f00040
runtest -sec 0.002
sdr 64 -tdi 0000000038f00040
runtest -sec 0.002
sdr 64 -tdi 8002000004f00040
runtest -sec 0.002
sdr 64 -tdi 0000010824f00040
runtest -sec 0.002
sdr 64 -tdi e400000214f00040
runtest -sec 0.002
sdr 64 -tdi 9200480134f00040
runtest -sec 0.002
sdr 64 -tdi 0000062f0cf00040
runtest -sec 0.002
sdr 64 -tdi 0482003e2cf00040
runtest -sec 0.002
sdr 64 -tdi 000000001cf00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3cf00040
runtest -sec 0.002
sdr 64 -tdi 1e004a0002f00040
runtest -sec 0.002
sdr 64 -tdi 0000281022f00040
runtest -sec 0.002
sdr 64 -tdi 0100002012f00040
runtest -sec 0.002
sdr 64 -tdi 8002016232f00040
runtest -sec 0.002
sdr 64 -tdi 014080080af00040
runtest -sec 0.002
sdr 64 -tdi 0000289e2af00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1af00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3af00040
runtest -sec 0.002
sdr 64 -tdi 1600000006f00040
runtest -sec 0.002
sdr 64 -tdi 0000005826f00040
runtest -sec 0.002
sdr 64 -tdi 6000046816f00040
runtest -sec 0.002
sdr 64 -tdi a004501036f00040
runtest -sec 0.002
sdr 64 -tdi 0801860d0ef00040
runtest -sec 0.002
sdr 64 -tdi 000e08062ef00040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ef00040
runtest -sec 0.002
sdr 64 -tdi 01a000003ef00040
runtest -sec 0.002
sdr 64 -tdi 1680000001f00040
runtest -sec 0.002
sdr 64 -tdi da00240221f00040
runtest -sec 0.002
sdr 64 -tdi 6800000011f00040
runtest -sec 0.002
sdr 64 -tdi b200014331f00040
runtest -sec 0.002
sdr 64 -tdi c010001d09f00040
runtest -sec 0.002
sdr 64 -tdi 2000107629f00040
runtest -sec 0.002
sdr 64 -tdi 0000004019f00040
runtest -sec 0.002
sdr 64 -tdi 0001000039f00040
runtest -sec 0.002
sdr 64 -tdi 3e00400005f00040
runtest -sec 0.002
sdr 64 -tdi f914800025f00040
runtest -sec 0.002
sdr 64 -tdi 0000101015f00040
runtest -sec 0.002
sdr 64 -tdi 8000820235f00040
runtest -sec 0.002
sdr 64 -tdi 022882070df00040
runtest -sec 0.002
sdr 64 -tdi 0000043c2df00040
runtest -sec 0.002
sdr 64 -tdi 000000001df00040
runtest -sec 0.002
sdr 64 -tdi 0008003f3df00040
runtest -sec 0.002
sdr 64 -tdi 3880200003f00040
runtest -sec 0.002
sdr 64 -tdi e600000023f00040
runtest -sec 0.002
sdr 64 -tdi 8000402013f00040
runtest -sec 0.002
sdr 64 -tdi 8000426133f00040
runtest -sec 0.002
sdr 64 -tdi 000108880bf00040
runtest -sec 0.002
sdr 64 -tdi 0500983e2bf00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1bf00040
runtest -sec 0.002
sdr 64 -tdi 0000003f3bf00040
runtest -sec 0.002
sdr 64 -tdi 0180000007f00040
runtest -sec 0.002
sdr 64 -tdi 1800000227f00040
runtest -sec 0.002
sdr 64 -tdi 0000010117f00040
runtest -sec 0.002
sdr 64 -tdi 0000041037f00040
runtest -sec 0.002
sdr 64 -tdi 000000850ff00040
runtest -sec 0.002
sdr 64 -tdi 104400a62ff00040
runtest -sec 0.002
sdr 64 -tdi 0000007e1ff00040
runtest -sec 0.002
sdr 64 -tdi 01a000013ff00040
runtest -sec 0.002
sdr 64 -tdi 0780000000080040
runtest -sec 0.002
sdr 64 -tdi da00000420080040
runtest -sec 0.002
sdr 64 -tdi 6800006010080040
runtest -sec 0.002
sdr 64 -tdi a000024030080040
runtest -sec 0.002
sdr 64 -tdi 80002a0508080040
runtest -sec 0.002
sdr 64 -tdi 0000643628080040
runtest -sec 0.002
sdr 64 -tdi 0000004118080040
runtest -sec 0.002
sdr 64 -tdi 0008000038080040
runtest -sec 0.002
sdr 64 -tdi 1e00000004080040
runtest -sec 0.002
sdr 64 -tdi 6800008024080040
runtest -sec 0.002
sdr 64 -tdi 4400042014080040
runtest -sec 0.002
sdr 64 -tdi a200000434080040
runtest -sec 0.002
sdr 64 -tdi 000002060c080040
runtest -sec 0.002
sdr 64 -tdi 1000043e2c080040
runtest -sec 0.002
sdr 64 -tdi 000000011c080040
runtest -sec 0.002
sdr 64 -tdi 0010003f3c080040
runtest -sec 0.002
sdr 64 -tdi 2a80000002080040
runtest -sec 0.002
sdr 64 -tdi f400002022080040
runtest -sec 0.002
sdr 64 -tdi 0112004412080040
runtest -sec 0.002
sdr 64 -tdi 90000a4332080040
runtest -sec 0.002
sdr 64 -tdi 280084190a080040
runtest -sec 0.002
sdr 64 -tdi 0000083e2a080040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a080040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a080040
runtest -sec 0.002
sdr 64 -tdi 3400000006080040
runtest -sec 0.002
sdr 64 -tdi c800000026080040
runtest -sec 0.002
sdr 64 -tdi 2102000016080040
runtest -sec 0.002
sdr 64 -tdi 0804410336080040
runtest -sec 0.002
sdr 64 -tdi 0000000c0e080040
runtest -sec 0.002
sdr 64 -tdi 000001062e080040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e080040
runtest -sec 0.002
sdr 64 -tdi 01a000003e080040
runtest -sec 0.002
sdr 64 -tdi 3680000001080040
runtest -sec 0.002
sdr 64 -tdi fb15011a21080040
runtest -sec 0.002
sdr 64 -tdi 6c08046411080040
runtest -sec 0.002
sdr 64 -tdi b000084731080040
runtest -sec 0.002
sdr 64 -tdi 8000028109080040
runtest -sec 0.002
sdr 64 -tdi 0000943629080040
runtest -sec 0.002
sdr 64 -tdi 0000004019080040
runtest -sec 0.002
sdr 64 -tdi 0000000039080040
runtest -sec 0.002
sdr 64 -tdi 0e80000005080040
runtest -sec 0.002
sdr 64 -tdi fa00240025080040
runtest -sec 0.002
sdr 64 -tdi 0000000115080040
runtest -sec 0.002
sdr 64 -tdi 9100800535080040
runtest -sec 0.002
sdr 64 -tdi 0001110f0d080040
runtest -sec 0.002
sdr 64 -tdi 0480003e2d080040
runtest -sec 0.002
sdr 64 -tdi 000000001d080040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d080040
runtest -sec 0.002
sdr 64 -tdi 0e80000003080040
runtest -sec 0.002
sdr 64 -tdi f800000023080040
runtest -sec 0.002
sdr 64 -tdi c480002013080040
runtest -sec 0.002
sdr 64 -tdi 8000514133080040
runtest -sec 0.002
sdr 64 -tdi 0008060f0b080040
runtest -sec 0.002
sdr 64 -tdi 0000003e2b080040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b080040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b080040
runtest -sec 0.002
sdr 64 -tdi 0700000007080040
runtest -sec 0.002
sdr 64 -tdi c000008027080040
runtest -sec 0.002
sdr 64 -tdi 2010501017080040
runtest -sec 0.002
sdr 64 -tdi 0004040637080040
runtest -sec 0.002
sdr 64 -tdi 000840250f080040
runtest -sec 0.002
sdr 64 -tdi 000080862f080040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f080040
runtest -sec 0.002
sdr 64 -tdi 01a000013f080040
runtest -sec 0.002
sdr 64 -tdi 0780000000880040
runtest -sec 0.002
sdr 64 -tdi 1a00241020880040
runtest -sec 0.002
sdr 64 -tdi 6a82002010880040
runtest -sec 0.002
sdr 64 -tdi a000418330880040
runtest -sec 0.002
sdr 64 -tdi 8001060508880040
runtest -sec 0.002
sdr 64 -tdi 0000180628880040
runtest -sec 0.002
sdr 64 -tdi 0000004018880040
runtest -sec 0.002
sdr 64 -tdi 0000000038880040
runtest -sec 0.002
sdr 64 -tdi 0800000004880040
runtest -sec 0.002
sdr 64 -tdi f800010824880040
runtest -sec 0.002
sdr 64 -tdi e902001014880040
runtest -sec 0.002
sdr 64 -tdi 0008000234880040
runtest -sec 0.002
sdr 64 -tdi 0820000e0c880040
runtest -sec 0.002
sdr 64 -tdi 000058bc2c880040
runtest -sec 0.002
sdr 64 -tdi 000000011c880040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c880040
runtest -sec 0.002
sdr 64 -tdi 2500000002880040
runtest -sec 0.002
sdr 64 -tdi 1200001122880040
runtest -sec 0.002
sdr 64 -tdi e41004a012880040
runtest -sec 0.002
sdr 64 -tdi 924021a332880040
runtest -sec 0.002
sdr 64 -tdi 4200018f0a880040
runtest -sec 0.002
sdr 64 -tdi 4000003e2a880040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a880040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a880040
runtest -sec 0.002
sdr 64 -tdi 3200000006880040
runtest -sec 0.002
sdr 64 -tdi d800000026880040
runtest -sec 0.002
sdr 64 -tdi 6000080016880040
runtest -sec 0.002
sdr 64 -tdi 8000108036880040
runtest -sec 0.002
sdr 64 -tdi 0000104d0e880040
runtest -sec 0.002
sdr 64 -tdi 048000b62e880040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e880040
runtest -sec 0.002
sdr 64 -tdi 01a000003e880040
runtest -sec 0.002
sdr 64 -tdi 3e800a0001880040
runtest -sec 0.002
sdr 64 -tdi da0000a921880040
runtest -sec 0.002
sdr 64 -tdi 6800005411880040
runtest -sec 0.002
sdr 64 -tdi aa00021231880040
runtest -sec 0.002
sdr 64 -tdi 8140090d09880040
runtest -sec 0.002
sdr 64 -tdi 0000643629880040
runtest -sec 0.002
sdr 64 -tdi 0000004019880040
runtest -sec 0.002
sdr 64 -tdi 0000001939880040
runtest -sec 0.002
sdr 64 -tdi 0e00000005880040
runtest -sec 0.002
sdr 64 -tdi f800000025880040
runtest -sec 0.002
sdr 64 -tdi 0002201015880040
runtest -sec 0.002
sdr 64 -tdi 8088080735880040
runtest -sec 0.002
sdr 64 -tdi 0000000e0d880040
runtest -sec 0.002
sdr 64 -tdi 00801c202d880040
runtest -sec 0.002
sdr 64 -tdi 0000004c1d880040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d880040
runtest -sec 0.002
sdr 64 -tdi 0e80000003880040
runtest -sec 0.002
sdr 64 -tdi 2000000023880040
runtest -sec 0.002
sdr 64 -tdi 6020102013880040
runtest -sec 0.002
sdr 64 -tdi 8000024033880040
runtest -sec 0.002
sdr 64 -tdi 000015890b880040
runtest -sec 0.002
sdr 64 -tdi 040080302b880040
runtest -sec 0.002
sdr 64 -tdi 0000007e1b880040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b880040
runtest -sec 0.002
sdr 64 -tdi 3602200007880040
runtest -sec 0.002
sdr 64 -tdi d810002127880040
runtest -sec 0.002
sdr 64 -tdi 2000400017880040
runtest -sec 0.002
sdr 64 -tdi 008c608b37880040
runtest -sec 0.002
sdr 64 -tdi 8020001d0f880040
runtest -sec 0.002
sdr 64 -tdi 000002342f880040
runtest -sec 0.002
sdr 64 -tdi 0000007e1f880040
runtest -sec 0.002
sdr 64 -tdi 01a000033f880040
runtest -sec 0.002
sdr 64 -tdi 3680000000480040
runtest -sec 0.002
sdr 64 -tdi da80282820480040
runtest -sec 0.002
sdr 64 -tdi 6800115210480040
runtest -sec 0.002
sdr 64 -tdi a000010230480040
runtest -sec 0.002
sdr 64 -tdi 82008a0d08480040
runtest -sec 0.002
sdr 64 -tdi 0028043e28480040
runtest -sec 0.002
sdr 64 -tdi 0000006018480040
runtest -sec 0.002
sdr 64 -tdi 0000000538480040
runtest -sec 0.002
sdr 64 -tdi 3e00000004480040
runtest -sec 0.002
sdr 64 -tdi 7800440024480040
runtest -sec 0.002
sdr 64 -tdi ee02000014480040
runtest -sec 0.002
sdr 64 -tdi a000010334480040
runtest -sec 0.002
sdr 64 -tdi 0000460f0c480040
runtest -sec 0.002
sdr 64 -tdi 1000003e2c480040
runtest -sec 0.002
sdr 64 -tdi 000000491c480040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c480040
runtest -sec 0.002
sdr 64 -tdi 3e80000002480040
runtest -sec 0.002
sdr 64 -tdi a800000022480040
runtest -sec 0.002
sdr 64 -tdi a010018012480040
runtest -sec 0.002
sdr 64 -tdi 800004a332480040
runtest -sec 0.002
sdr 64 -tdi 280000880a480040
runtest -sec 0.002
sdr 64 -tdi 00022a3e2a480040
runtest -sec 0.002
sdr 64 -tdi 0000007e1a480040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a480040
runtest -sec 0.002
sdr 64 -tdi 0600000006480040
runtest -sec 0.002
sdr 64 -tdi d100008026480040
runtest -sec 0.002
sdr 64 -tdi 0100080016480040
runtest -sec 0.002
sdr 64 -tdi 9002000136480040
runtest -sec 0.002
sdr 64 -tdi 4400860d0e480040
runtest -sec 0.002
sdr 64 -tdi 002480b22e480040
runtest -sec 0.002
sdr 64 -tdi 0000007e1e480040
runtest -sec 0.002
sdr 64 -tdi 01a000233e480040
runtest -sec 0.002
sdr 64 -tdi 0680000001480040
runtest -sec 0.002
sdr 64 -tdi da40002a21480040
runtest -sec 0.002
sdr 64 -tdi 6c00005211480040
runtest -sec 0.002
sdr 64 -tdi a400524b31480040
runtest -sec 0.002
sdr 64 -tdi 8000001d09480040
runtest -sec 0.002
sdr 64 -tdi 0000183629480040
runtest -sec 0.002
sdr 64 -tdi 0000006219480040
runtest -sec 0.002
sdr 64 -tdi 0000000039480040
runtest -sec 0.002
sdr 64 -tdi 1200000005480040
runtest -sec 0.002
sdr 64 -tdi d8000e1825480040
runtest -sec 0.002
sdr 64 -tdi 0022000015480040
runtest -sec 0.002
sdr 64 -tdi a000000035480040
runtest -sec 0.002
sdr 64 -tdi 8000ffff0d480040
runtest -sec 0.002
sdr 64 -tdi 008010032d480040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d480040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d480040
runtest -sec 0.002
sdr 64 -tdi 1e80000003480040
runtest -sec 0.002
sdr 64 -tdi 1808800223480040
runtest -sec 0.002
sdr 64 -tdi 0000002113480040
runtest -sec 0.002
sdr 64 -tdi e000000033480040
runtest -sec 0.002
sdr 64 -tdi c021ffff0b480040
runtest -sec 0.002
sdr 64 -tdi 008438072b480040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b480040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b480040
runtest -sec 0.002
sdr 64 -tdi 3200000007480040
runtest -sec 0.002
sdr 64 -tdi da00000027480040
runtest -sec 0.002
sdr 64 -tdi 0000000117480040
runtest -sec 0.002
sdr 64 -tdi e000000037480040
runtest -sec 0.002
sdr 64 -tdi c0210c0f0f480040
runtest -sec 0.002
sdr 64 -tdi 008438072f480040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f480040
runtest -sec 0.002
sdr 64 -tdi 01a000013f480040
runtest -sec 0.002
sdr 64 -tdi 2680000000c80040
runtest -sec 0.002
sdr 64 -tdi da00000020c80040
runtest -sec 0.002
sdr 64 -tdi 6800001010c80040
runtest -sec 0.002
sdr 64 -tdi e000000030c80040
runtest -sec 0.002
sdr 64 -tdi 8000040f08c80040
runtest -sec 0.002
sdr 64 -tdi 0084380728c80040
runtest -sec 0.002
sdr 64 -tdi 0000007f18c80040
runtest -sec 0.002
sdr 64 -tdi 0000000038c80040
runtest -sec 0.002
sdr 64 -tdi 0600000004c80040
runtest -sec 0.002
sdr 64 -tdi fa00000824c80040
runtest -sec 0.002
sdr 64 -tdi 0000020014c80040
runtest -sec 0.002
sdr 64 -tdi e000000034c80040
runtest -sec 0.002
sdr 64 -tdi f9efffff0cc80040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2cc80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1cc80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3cc80040
runtest -sec 0.002
sdr 64 -tdi 7080000002c80040
runtest -sec 0.002
sdr 64 -tdi b800000022c80040
runtest -sec 0.002
sdr 64 -tdi 0000005112c80040
runtest -sec 0.002
sdr 64 -tdi e000000032c80040
runtest -sec 0.002
sdr 64 -tdi f9efffff0ac80040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2ac80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ac80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ac80040
runtest -sec 0.002
sdr 64 -tdi 0e00000006c80040
runtest -sec 0.002
sdr 64 -tdi dc00000026c80040
runtest -sec 0.002
sdr 64 -tdi 0000008816c80040
runtest -sec 0.002
sdr 64 -tdi e100000036c80040
runtest -sec 0.002
sdr 64 -tdi f9ef7fff0ec80040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f2ec80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ec80040
runtest -sec 0.002
sdr 64 -tdi 01a000003ec80040
runtest -sec 0.002
sdr 64 -tdi 0680000001c80040
runtest -sec 0.002
sdr 64 -tdi de00000021c80040
runtest -sec 0.002
sdr 64 -tdi 6800005011c80040
runtest -sec 0.002
sdr 64 -tdi f000000031c80040
runtest -sec 0.002
sdr 64 -tdi f9ef7fff09c80040
runtest -sec 0.002
sdr 64 -tdi e7bdff3f29c80040
runtest -sec 0.002
sdr 64 -tdi 0000007f19c80040
runtest -sec 0.002
sdr 64 -tdi 0000100039c80040
runtest -sec 0.002
sdr 64 -tdi 3801000005c80040
runtest -sec 0.002
sdr 64 -tdi f800000825c80040
runtest -sec 0.002
sdr 64 -tdi 0000020015c80040
runtest -sec 0.002
sdr 64 -tdi e000000035c80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0dc80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2dc80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1dc80040
runtest -sec 0.002
sdr 64 -tdi 0000103f3dc80040
runtest -sec 0.002
sdr 64 -tdi 4e80200003c80040
runtest -sec 0.002
sdr 64 -tdi f800000023c80040
runtest -sec 0.002
sdr 64 -tdi 0000005113c80040
runtest -sec 0.002
sdr 64 -tdi e000000033c80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0bc80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2bc80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1bc80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3bc80040
runtest -sec 0.002
sdr 64 -tdi 3e00000007c80040
runtest -sec 0.002
sdr 64 -tdi df00000027c80040
runtest -sec 0.002
sdr 64 -tdi 0480008817c80040
runtest -sec 0.002
sdr 64 -tdi e000000037c80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0fc80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2fc80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fc80040
runtest -sec 0.002
sdr 64 -tdi 01a000013fc80040
runtest -sec 0.002
sdr 64 -tdi 0680000000280040
runtest -sec 0.002
sdr 64 -tdi 9e18800020280040
runtest -sec 0.002
sdr 64 -tdi 6800005010280040
runtest -sec 0.002
sdr 64 -tdi e088000030280040
runtest -sec 0.002
sdr 64 -tdi ffffffff08280040
runtest -sec 0.002
sdr 64 -tdi ffffffff28280040
runtest -sec 0.002
sdr 64 -tdi 0000007f18280040
runtest -sec 0.002
sdr 64 -tdi 0000000038280040
runtest -sec 0.002
sdr 64 -tdi 8600000004280040
runtest -sec 0.002
sdr 64 -tdi f800000824280040
runtest -sec 0.002
sdr 64 -tdi 0600120014280040
runtest -sec 0.002
sdr 64 -tdi e104000034280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0c280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2c280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c280040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c280040
runtest -sec 0.002
sdr 64 -tdi 3080000002280040
runtest -sec 0.002
sdr 64 -tdi d800000022280040
runtest -sec 0.002
sdr 64 -tdi 0000805112280040
runtest -sec 0.002
sdr 64 -tdi f000400032280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0a280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2a280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a280040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a280040
runtest -sec 0.002
sdr 64 -tdi 0e00020006280040
runtest -sec 0.002
sdr 64 -tdi de00000026280040
runtest -sec 0.002
sdr 64 -tdi 0000008816280040
runtest -sec 0.002
sdr 64 -tdi f800000036280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0e280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2e280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e280040
runtest -sec 0.002
sdr 64 -tdi 01a000003e280040
runtest -sec 0.002
sdr 64 -tdi 0680010001280040
runtest -sec 0.002
sdr 64 -tdi de00000021280040
runtest -sec 0.002
sdr 64 -tdi 6800005011280040
runtest -sec 0.002
sdr 64 -tdi e000000031280040
runtest -sec 0.002
sdr 64 -tdi ffffffff09280040
runtest -sec 0.002
sdr 64 -tdi ffffffff29280040
runtest -sec 0.002
sdr 64 -tdi 0000007f19280040
runtest -sec 0.002
sdr 64 -tdi 0f80880039280040
runtest -sec 0.002
sdr 64 -tdi b800000005280040
runtest -sec 0.002
sdr 64 -tdi fa00000825280040
runtest -sec 0.002
sdr 64 -tdi 0000020015280040
runtest -sec 0.002
sdr 64 -tdi e000000035280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0d280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2d280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d280040
runtest -sec 0.002
sdr 64 -tdi 8f80003f3d280040
runtest -sec 0.002
sdr 64 -tdi 0e80004903280040
runtest -sec 0.002
sdr 64 -tdi 7800000023280040
runtest -sec 0.002
sdr 64 -tdi 0000005113280040
runtest -sec 0.002
sdr 64 -tdi e000000033280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0b280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2b280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b280040
runtest -sec 0.002
sdr 64 -tdi 4580003f3b280040
runtest -sec 0.002
sdr 64 -tdi 3e00000407280040
runtest -sec 0.002
sdr 64 -tdi dc00000027280040
runtest -sec 0.002
sdr 64 -tdi 0000008817280040
runtest -sec 0.002
sdr 64 -tdi e000000037280040
runtest -sec 0.002
sdr 64 -tdi ffffffff0f280040
runtest -sec 0.002
sdr 64 -tdi ffffffff2f280040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f280040
runtest -sec 0.002
sdr 64 -tdi 0da000013f280040
runtest -sec 0.002
sdr 64 -tdi 0680001100a80040
runtest -sec 0.002
sdr 64 -tdi de00000020a80040
runtest -sec 0.002
sdr 64 -tdi 6800005010a80040
runtest -sec 0.002
sdr 64 -tdi e000000030a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff08a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff28a80040
runtest -sec 0.002
sdr 64 -tdi 0000007f18a80040
runtest -sec 0.002
sdr 64 -tdi 0000080038a80040
runtest -sec 0.002
sdr 64 -tdi 0600000004a80040
runtest -sec 0.002
sdr 64 -tdi fa00000824a80040
runtest -sec 0.002
sdr 64 -tdi e000000014a80040
runtest -sec 0.002
sdr 64 -tdi e000400b34a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ca80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ca80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ca80040
runtest -sec 0.002
sdr 64 -tdi 0000803f3ca80040
runtest -sec 0.002
sdr 64 -tdi b080000002a80040
runtest -sec 0.002
sdr 64 -tdi f800000022a80040
runtest -sec 0.002
sdr 64 -tdi c000085112a80040
runtest -sec 0.002
sdr 64 -tdi f1040a4332a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0aa80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2aa80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1aa80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3aa80040
runtest -sec 0.002
sdr 64 -tdi 3e02200006a80040
runtest -sec 0.002
sdr 64 -tdi cc04800026a80040
runtest -sec 0.002
sdr 64 -tdi 4840020816a80040
runtest -sec 0.002
sdr 64 -tdi e000080336a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ea80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ea80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ea80040
runtest -sec 0.002
sdr 64 -tdi 01a000003ea80040
runtest -sec 0.002
sdr 64 -tdi 0680000001a80040
runtest -sec 0.002
sdr 64 -tdi de00000021a80040
runtest -sec 0.002
sdr 64 -tdi 6c00005011a80040
runtest -sec 0.002
sdr 64 -tdi e000018431a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff09a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff29a80040
runtest -sec 0.002
sdr 64 -tdi 0000007f19a80040
runtest -sec 0.002
sdr 64 -tdi 0000000039a80040
runtest -sec 0.002
sdr 64 -tdi 3c00000005a80040
runtest -sec 0.002
sdr 64 -tdi db88801825a80040
runtest -sec 0.002
sdr 64 -tdi 0000020015a80040
runtest -sec 0.002
sdr 64 -tdi e000000035a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0da80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2da80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1da80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3da80040
runtest -sec 0.002
sdr 64 -tdi 7e00000003a80040
runtest -sec 0.002
sdr 64 -tdi f800020023a80040
runtest -sec 0.002
sdr 64 -tdi 0000005113a80040
runtest -sec 0.002
sdr 64 -tdi e000000033a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ba80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ba80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ba80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ba80040
runtest -sec 0.002
sdr 64 -tdi b600000007a80040
runtest -sec 0.002
sdr 64 -tdi dc00811827a80040
runtest -sec 0.002
sdr 64 -tdi 0000008817a80040
runtest -sec 0.002
sdr 64 -tdi e000000037a80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0fa80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2fa80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fa80040
runtest -sec 0.002
sdr 64 -tdi 01a000013fa80040
runtest -sec 0.002
sdr 64 -tdi 3680000000680040
runtest -sec 0.002
sdr 64 -tdi de08000020680040
runtest -sec 0.002
sdr 64 -tdi 6800005010680040
runtest -sec 0.002
sdr 64 -tdi e000000030680040
runtest -sec 0.002
sdr 64 -tdi ffffffff08680040
runtest -sec 0.002
sdr 64 -tdi ffffffff28680040
runtest -sec 0.002
sdr 64 -tdi 0000007f18680040
runtest -sec 0.002
sdr 64 -tdi 0000000038680040
runtest -sec 0.002
sdr 64 -tdi 3e00000004680040
runtest -sec 0.002
sdr 64 -tdi 7800000824680040
runtest -sec 0.002
sdr 64 -tdi 0600020014680040
runtest -sec 0.002
sdr 64 -tdi e000000034680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0c680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2c680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c680040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c680040
runtest -sec 0.002
sdr 64 -tdi 7e00000002680040
runtest -sec 0.002
sdr 64 -tdi f800000022680040
runtest -sec 0.002
sdr 64 -tdi 0000005112680040
runtest -sec 0.002
sdr 64 -tdi e000000032680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0a680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2a680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a680040
runtest -sec 0.002
sdr 64 -tdi 0000003f3a680040
runtest -sec 0.002
sdr 64 -tdi 8600000006680040
runtest -sec 0.002
sdr 64 -tdi df80011826680040
runtest -sec 0.002
sdr 64 -tdi 0000108816680040
runtest -sec 0.002
sdr 64 -tdi e000c00036680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0e680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2e680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e680040
runtest -sec 0.002
sdr 64 -tdi 01a000013e680040
runtest -sec 0.002
sdr 64 -tdi 3680000001680040
runtest -sec 0.002
sdr 64 -tdi de00000021680040
runtest -sec 0.002
sdr 64 -tdi 6800805011680040
runtest -sec 0.002
sdr 64 -tdi e000000031680040
runtest -sec 0.002
sdr 64 -tdi ffffffff09680040
runtest -sec 0.002
sdr 64 -tdi ffffffff29680040
runtest -sec 0.002
sdr 64 -tdi 0000007f19680040
runtest -sec 0.002
sdr 64 -tdi 011ffc3f39680040
runtest -sec 0.002
sdr 64 -tdi 025ffe0005680040
runtest -sec 0.002
sdr 64 -tdi 097ff85025680040
runtest -sec 0.002
sdr 64 -tdi 05ffe20015680040
runtest -sec 0.002
sdr 64 -tdi f7ff800035680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0d680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2d680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d680040
runtest -sec 0.002
sdr 64 -tdi 091fffff3d680040
runtest -sec 0.002
sdr 64 -tdi 245ffe0003680040
runtest -sec 0.002
sdr 64 -tdi 117ff80023680040
runtest -sec 0.002
sdr 64 -tdi 45ffe08013680040
runtest -sec 0.002
sdr 64 -tdi f7ff800033680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0b680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2b680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b680040
runtest -sec 0.002
sdr 64 -tdi 001fffff3b680040
runtest -sec 0.002
sdr 64 -tdi 017ffe0207680040
runtest -sec 0.002
sdr 64 -tdi 8dfff80027680040
runtest -sec 0.002
sdr 64 -tdi 05fff18017680040
runtest -sec 0.002
sdr 64 -tdi f7ff8a0237680040
runtest -sec 0.002
sdr 64 -tdi ffffffff0f680040
runtest -sec 0.002
sdr 64 -tdi ffffffff2f680040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f680040
runtest -sec 0.002
sdr 64 -tdi 487ffc3f3f680040
runtest -sec 0.002
sdr 64 -tdi 057ffe4400e80040
runtest -sec 0.002
sdr 64 -tdi 17fff80020e80040
runtest -sec 0.002
sdr 64 -tdi 15fff00010e80040
runtest -sec 0.002
sdr 64 -tdi f7ff800030e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff08e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff28e80040
runtest -sec 0.002
sdr 64 -tdi 0000007f18e80040
runtest -sec 0.002
sdr 64 -tdi 0000000038e80040
runtest -sec 0.002
sdr 64 -tdi 7e00000004e80040
runtest -sec 0.002
sdr 64 -tdi fb00021824e80040
runtest -sec 0.002
sdr 64 -tdi e002020014e80040
runtest -sec 0.002
sdr 64 -tdi e008000134e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ce80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ce80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ce80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ce80040
runtest -sec 0.002
sdr 64 -tdi 3e00000002e80040
runtest -sec 0.002
sdr 64 -tdi f810000022e80040
runtest -sec 0.002
sdr 64 -tdi e020005112e80040
runtest -sec 0.002
sdr 64 -tdi e0200a9032e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ae80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ae80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ae80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3ae80040
runtest -sec 0.002
sdr 64 -tdi 1600000006e80040
runtest -sec 0.002
sdr 64 -tdi 9c00241826e80040
runtest -sec 0.002
sdr 64 -tdi 6800008816e80040
runtest -sec 0.002
sdr 64 -tdi e000000b36e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ee80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ee80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ee80040
runtest -sec 0.002
sdr 64 -tdi 01a000013ee80040
runtest -sec 0.002
sdr 64 -tdi 3680000001e80040
runtest -sec 0.002
sdr 64 -tdi df10020221e80040
runtest -sec 0.002
sdr 64 -tdi 6800005011e80040
runtest -sec 0.002
sdr 64 -tdi e000094231e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff09e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff29e80040
runtest -sec 0.002
sdr 64 -tdi 0000007f19e80040
runtest -sec 0.002
sdr 64 -tdi 0000000039e80040
runtest -sec 0.002
sdr 64 -tdi 2c80490005e80040
runtest -sec 0.002
sdr 64 -tdi b800003825e80040
runtest -sec 0.002
sdr 64 -tdi 0000020015e80040
runtest -sec 0.002
sdr 64 -tdi e018000035e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0de80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2de80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1de80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3de80040
runtest -sec 0.002
sdr 64 -tdi bf80200003e80040
runtest -sec 0.002
sdr 64 -tdi f800000023e80040
runtest -sec 0.002
sdr 64 -tdi 0000005113e80040
runtest -sec 0.002
sdr 64 -tdi e000000033e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0be80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2be80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1be80040
runtest -sec 0.002
sdr 64 -tdi 0000003f3be80040
runtest -sec 0.002
sdr 64 -tdi 3748000007e80040
runtest -sec 0.002
sdr 64 -tdi de00010927e80040
runtest -sec 0.002
sdr 64 -tdi 0000308817e80040
runtest -sec 0.002
sdr 64 -tdi e004400037e80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0fe80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2fe80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fe80040
runtest -sec 0.002
sdr 64 -tdi 01a000013fe80040
runtest -sec 0.002
sdr 64 -tdi 3680000000180040
runtest -sec 0.002
sdr 64 -tdi de00002020180040
runtest -sec 0.002
sdr 64 -tdi 6800005010180040
runtest -sec 0.002
sdr 64 -tdi e000000030180040
runtest -sec 0.002
sdr 64 -tdi ffffffff08180040
runtest -sec 0.002
sdr 64 -tdi ffffffff28180040
runtest -sec 0.002
sdr 64 -tdi 0000007f18180040
runtest -sec 0.002
sdr 64 -tdi 0000000038180040
runtest -sec 0.002
sdr 64 -tdi 06c0000004180040
runtest -sec 0.002
sdr 64 -tdi 6800000924180040
runtest -sec 0.002
sdr 64 -tdi 0000320014180040
runtest -sec 0.002
sdr 64 -tdi e000000034180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0c180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2c180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c180040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c180040
runtest -sec 0.002
sdr 64 -tdi 3084000002180040
runtest -sec 0.002
sdr 64 -tdi 9510000022180040
runtest -sec 0.002
sdr 64 -tdi 0000004012180040
runtest -sec 0.002
sdr 64 -tdi e000000032180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0a180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2a180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a180040
runtest -sec 0.002
sdr 64 -tdi 0010003f3a180040
runtest -sec 0.002
sdr 64 -tdi 3100000006180040
runtest -sec 0.002
sdr 64 -tdi 8e08800026180040
runtest -sec 0.002
sdr 64 -tdi 0082000816180040
runtest -sec 0.002
sdr 64 -tdi e004000036180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0e180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2e180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e180040
runtest -sec 0.002
sdr 64 -tdi 01a200013e180040
runtest -sec 0.002
sdr 64 -tdi 3e80000001180040
runtest -sec 0.002
sdr 64 -tdi 9e00000521180040
runtest -sec 0.002
sdr 64 -tdi 6c10019011180040
runtest -sec 0.002
sdr 64 -tdi e000400031180040
runtest -sec 0.002
sdr 64 -tdi ffffffff09180040
runtest -sec 0.002
sdr 64 -tdi ffffffff29180040
runtest -sec 0.002
sdr 64 -tdi 0000007f19180040
runtest -sec 0.002
sdr 64 -tdi 0000000039180040
runtest -sec 0.002
sdr 64 -tdi 3c40010005180040
runtest -sec 0.002
sdr 64 -tdi f800010825180040
runtest -sec 0.002
sdr 64 -tdi 0002000015180040
runtest -sec 0.002
sdr 64 -tdi e000000035180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0d180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2d180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d180040
runtest -sec 0.002
sdr 64 -tdi 0000003f3d180040
runtest -sec 0.002
sdr 64 -tdi 3e04100003180040
runtest -sec 0.002
sdr 64 -tdi f800001223180040
runtest -sec 0.002
sdr 64 -tdi 0008085113180040
runtest -sec 0.002
sdr 64 -tdi e000000033180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0b180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2b180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b180040
runtest -sec 0.002
sdr 64 -tdi 0000003f3b180040
runtest -sec 0.002
sdr 64 -tdi 7600000007180040
runtest -sec 0.002
sdr 64 -tdi de00021827180040
runtest -sec 0.002
sdr 64 -tdi 0000920817180040
runtest -sec 0.002
sdr 64 -tdi e000000037180040
runtest -sec 0.002
sdr 64 -tdi ffffffff0f180040
runtest -sec 0.002
sdr 64 -tdi ffffffff2f180040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f180040
runtest -sec 0.002
sdr 64 -tdi 01a000013f180040
runtest -sec 0.002
sdr 64 -tdi 3680000000980040
runtest -sec 0.002
sdr 64 -tdi 5e00000020980040
runtest -sec 0.002
sdr 64 -tdi 6800005010980040
runtest -sec 0.002
sdr 64 -tdi e000000030980040
runtest -sec 0.002
sdr 64 -tdi ffffffff08980040
runtest -sec 0.002
sdr 64 -tdi ffffffff28980040
runtest -sec 0.002
sdr 64 -tdi 0000007f18980040
runtest -sec 0.002
sdr 64 -tdi 0380000038980040
runtest -sec 0.002
sdr 64 -tdi 3e02200004980040
runtest -sec 0.002
sdr 64 -tdi f800809824980040
runtest -sec 0.002
sdr 64 -tdi e000020014980040
runtest -sec 0.002
sdr 64 -tdi e004000034980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0c980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2c980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c980040
runtest -sec 0.002
sdr 64 -tdi 03a0003f3c980040
runtest -sec 0.002
sdr 64 -tdi 7e00000002980040
runtest -sec 0.002
sdr 64 -tdi e914000022980040
runtest -sec 0.002
sdr 64 -tdi e000005112980040
runtest -sec 0.002
sdr 64 -tdi e000400032980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0a980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2a980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a980040
runtest -sec 0.002
sdr 64 -tdi 01a0003f3a980040
runtest -sec 0.002
sdr 64 -tdi a600090006980040
runtest -sec 0.002
sdr 64 -tdi de04011826980040
runtest -sec 0.002
sdr 64 -tdi 6822008816980040
runtest -sec 0.002
sdr 64 -tdi e081444336980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0e980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2e980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e980040
runtest -sec 0.002
sdr 64 -tdi 03a000013e980040
runtest -sec 0.002
sdr 64 -tdi 3680000001980040
runtest -sec 0.002
sdr 64 -tdi de00800021980040
runtest -sec 0.002
sdr 64 -tdi 6800005011980040
runtest -sec 0.002
sdr 64 -tdi e008028331980040
runtest -sec 0.002
sdr 64 -tdi ffffffff09980040
runtest -sec 0.002
sdr 64 -tdi ffffffff29980040
runtest -sec 0.002
sdr 64 -tdi 0000007f19980040
runtest -sec 0.002
sdr 64 -tdi 4880080039980040
runtest -sec 0.002
sdr 64 -tdi 0e4a201005980040
runtest -sec 0.002
sdr 64 -tdi f800000025980040
runtest -sec 0.002
sdr 64 -tdi 0000020015980040
runtest -sec 0.002
sdr 64 -tdi e088400035980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0d980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2d980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d980040
runtest -sec 0.002
sdr 64 -tdi 0700403f3d980040
runtest -sec 0.002
sdr 64 -tdi 0e80000903980040
runtest -sec 0.002
sdr 64 -tdi f000000023980040
runtest -sec 0.002
sdr 64 -tdi 0000005113980040
runtest -sec 0.002
sdr 64 -tdi e001000033980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0b980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2b980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b980040
runtest -sec 0.002
sdr 64 -tdi 8880003f3b980040
runtest -sec 0.002
sdr 64 -tdi 0601310207980040
runtest -sec 0.002
sdr 64 -tdi de00000027980040
runtest -sec 0.002
sdr 64 -tdi 0000108817980040
runtest -sec 0.002
sdr 64 -tdi e000000037980040
runtest -sec 0.002
sdr 64 -tdi ffffffff0f980040
runtest -sec 0.002
sdr 64 -tdi ffffffff2f980040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f980040
runtest -sec 0.002
sdr 64 -tdi 09a000003f980040
runtest -sec 0.002
sdr 64 -tdi 0e80004800580040
runtest -sec 0.002
sdr 64 -tdi de00000020580040
runtest -sec 0.002
sdr 64 -tdi 6801005010580040
runtest -sec 0.002
sdr 64 -tdi e000000030580040
runtest -sec 0.002
sdr 64 -tdi ffffffff08580040
runtest -sec 0.002
sdr 64 -tdi ffffffff28580040
runtest -sec 0.002
sdr 64 -tdi 0000007f18580040
runtest -sec 0.002
sdr 64 -tdi 0000000038580040
runtest -sec 0.002
sdr 64 -tdi 0280110004580040
runtest -sec 0.002
sdr 64 -tdi e800841924580040
runtest -sec 0.002
sdr 64 -tdi 0000020014580040
runtest -sec 0.002
sdr 64 -tdi f800000034580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0c580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2c580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1c580040
runtest -sec 0.002
sdr 64 -tdi 0000003f3c580040
runtest -sec 0.002
sdr 64 -tdi 0100000002580040
runtest -sec 0.002
sdr 64 -tdi f804108022580040
runtest -sec 0.002
sdr 64 -tdi 0000005112580040
runtest -sec 0.002
sdr 64 -tdi e000000032580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0a580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2a580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1a580040
runtest -sec 0.002
sdr 64 -tdi 0010003f3a580040
runtest -sec 0.002
sdr 64 -tdi 0104000006580040
runtest -sec 0.002
sdr 64 -tdi de00020026580040
runtest -sec 0.002
sdr 64 -tdi 0000308816580040
runtest -sec 0.002
sdr 64 -tdi e000000036580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0e580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2e580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1e580040
runtest -sec 0.002
sdr 64 -tdi 01a100013e580040
runtest -sec 0.002
sdr 64 -tdi 0ec0000001580040
runtest -sec 0.002
sdr 64 -tdi de00002521580040
runtest -sec 0.002
sdr 64 -tdi 6800005011580040
runtest -sec 0.002
sdr 64 -tdi e000000031580040
runtest -sec 0.002
sdr 64 -tdi ffffffff09580040
runtest -sec 0.002
sdr 64 -tdi ffffffff29580040
runtest -sec 0.002
sdr 64 -tdi 0000007f19580040
runtest -sec 0.002
sdr 64 -tdi 03a0000039580040
runtest -sec 0.002
sdr 64 -tdi 3000000005580040
runtest -sec 0.002
sdr 64 -tdi fa00840025580040
runtest -sec 0.002
sdr 64 -tdi 0600920015580040
runtest -sec 0.002
sdr 64 -tdi e000000035580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0d580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2d580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1d580040
runtest -sec 0.002
sdr 64 -tdi 0380003f3d580040
runtest -sec 0.002
sdr 64 -tdi 3600000003580040
runtest -sec 0.002
sdr 64 -tdi f804200023580040
runtest -sec 0.002
sdr 64 -tdi 0000005113580040
runtest -sec 0.002
sdr 64 -tdi e000000033580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0b580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2b580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1b580040
runtest -sec 0.002
sdr 64 -tdi 01c0003f3b580040
runtest -sec 0.002
sdr 64 -tdi 3600000007580040
runtest -sec 0.002
sdr 64 -tdi d400001827580040
runtest -sec 0.002
sdr 64 -tdi 0006008817580040
runtest -sec 0.002
sdr 64 -tdi e000000037580040
runtest -sec 0.002
sdr 64 -tdi ffffffff0f580040
runtest -sec 0.002
sdr 64 -tdi ffffffff2f580040
runtest -sec 0.002
sdr 64 -tdi 0000007f1f580040
runtest -sec 0.002
sdr 64 -tdi 03e000003f580040
runtest -sec 0.002
sdr 64 -tdi 3680000000d80040
runtest -sec 0.002
sdr 64 -tdi de00010120d80040
runtest -sec 0.002
sdr 64 -tdi 6800005010d80040
runtest -sec 0.002
sdr 64 -tdi e000000030d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff08d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff28d80040
runtest -sec 0.002
sdr 64 -tdi 0000007f18d80040
runtest -sec 0.002
sdr 64 -tdi 00ffffff38d80040
runtest -sec 0.002
sdr 64 -tdi 03c0210c04d80040
runtest -sec 0.002
sdr 64 -tdi 0e00001824d80040
runtest -sec 0.002
sdr 64 -tdi 3800004014d80040
runtest -sec 0.002
sdr 64 -tdi e000010034d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0cd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2cd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1cd80040
runtest -sec 0.002
sdr 64 -tdi 01ffffff3cd80040
runtest -sec 0.002
sdr 64 -tdi 07c0210e02d80040
runtest -sec 0.002
sdr 64 -tdi 1f00843822d80040
runtest -sec 0.002
sdr 64 -tdi 7c0210e012d80040
runtest -sec 0.002
sdr 64 -tdi f008438032d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ad80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ad80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ad80040
runtest -sec 0.002
sdr 64 -tdi 01ffffff3ad80040
runtest -sec 0.002
sdr 64 -tdi 07c0210e06d80040
runtest -sec 0.002
sdr 64 -tdi 1f08a43826d80040
runtest -sec 0.002
sdr 64 -tdi 7c8314e916d80040
runtest -sec 0.002
sdr 64 -tdi f48a43a036d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0ed80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2ed80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1ed80040
runtest -sec 0.002
sdr 64 -tdi 01ffffff3ed80040
runtest -sec 0.002
sdr 64 -tdi 07c0210e01d80040
runtest -sec 0.002
sdr 64 -tdi 3f61967821d80040
runtest -sec 0.002
sdr 64 -tdi 7e2652e411d80040
runtest -sec 0.002
sdr 64 -tdi f228eb8831d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff09d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff29d80040
runtest -sec 0.002
sdr 64 -tdi 0000007f19d80040
runtest -sec 0.002
sdr 64 -tdi cfffffff39d80040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f05d80040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff25d80040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc15d80040
runtest -sec 0.002
sdr 64 -tdi fe7bdff335d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0dd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2dd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1dd80040
runtest -sec 0.002
sdr 64 -tdi cfffffff3dd80040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f03d80040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff23d80040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc13d80040
runtest -sec 0.002
sdr 64 -tdi fe7bdff333d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0bd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2bd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1bd80040
runtest -sec 0.002
sdr 64 -tdi cfffffff3bd80040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f07d80040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff27d80040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc17d80040
runtest -sec 0.002
sdr 64 -tdi fe7bdff337d80040
runtest -sec 0.002
sdr 64 -tdi ffffffff0fd80040
runtest -sec 0.002
sdr 64 -tdi ffffffff2fd80040
runtest -sec 0.002
sdr 64 -tdi 0000007f1fd80040
runtest -sec 0.002
sdr 64 -tdi cfffffff3fd80040
runtest -sec 0.002
sdr 64 -tdi 3ff9ef7f00380040
runtest -sec 0.002
sdr 64 -tdi ffe7bdff20380040
runtest -sec 0.002
sdr 64 -tdi ff9ef7fc10380040
runtest -sec 0.002
sdr 64 -tdi fe7bdff330380040
runtest -sec 0.002
sdr 64 -tdi ffffffff08380040
runtest -sec 0.002
sdr 64 -tdi ffffffff28380040
runtest -sec 0.002
sdr 64 -tdi 0000007f18380040
runtest -sec 0.002
sdr 64 -tdi 403f005438380040
runtest -sec 0.002
sdr 64 -tdi f1f0000004380040
runtest -sec 0.002
sir 10 -tdi 3fc
runtest -tck 100
sdr 8 -tdi f0
sir 10 -tdi 3fd
runtest -tck 100
sdr 64 -tdi 00000000000000c0 -tdo 086a400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000200000c0 -tdo ffff000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000100000c0 -tdo 0400004500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000300000c0 -tdo 04f0200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000080000c0 -tdo e20f107800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000280000c0 -tdo 07883c4100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000180000c0 -tdo c41e20f100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000380000c0 -tdo 0f10788300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000040000c0 -tdo 883c41e200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000240000c0 -tdo 1e20f10700000000 -mask ffffffff00000000
sdr 64 -tdi 00000000140000c0 -tdo 107883c400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000340000c0 -tdo 3c41e20f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c0000c0 -tdo 20f1078800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c0000c0 -tdo 7883c41e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c0000c0 -tdo 41e20f1000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c0000c0 -tdo f107883c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000020000c0 -tdo 83c41e2000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000220000c0 -tdo e20f107800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000120000c0 -tdo 07883c4100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000320000c0 -tdo c41e20f100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a0000c0 -tdo 0f10788300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a0000c0 -tdo 883c41e200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a0000c0 -tdo 1e20f10700000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a0000c0 -tdo 107883c400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000060000c0 -tdo 3c41e20f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000260000c0 -tdo 20f1078800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000160000c0 -tdo 7883c41e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000360000c0 -tdo 41e20f1000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e0000c0 -tdo f107883c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e0000c0 -tdo 83c41e2000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e0000c0 -tdo e20f107800000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e0000c0 -tdo 07883c4100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000010000c0 -tdo c41e20f100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000210000c0 -tdo 0f10788300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000110000c0 -tdo 883c41e200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000310000c0 -tdo 1e20f10700000000 -mask ffffffff00000000
sdr 64 -tdi 00000000090000c0 -tdo 000083c400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000290000c0 -tdo 0000004500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000190000c0 -tdo 04ffdb0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000390000c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000050000c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000250000c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000150000c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000350000c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d0000c0 -tdo f9ef7fcf00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d0000c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d0000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d0000c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000030000c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000230000c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000130000c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000330000c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b0000c0 -tdo f9ef7fcf00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b0000c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b0000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b0000c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000070000c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000270000c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000170000c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000370000c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f0000c0 -tdo f9ef7fcf00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f0000c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f0000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f0000c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000008000c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000208000c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000108000c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000308000c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000088000c0 -tdo f9ef7fcf00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000288000c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000188000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000388000c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000048000c0 -tdo 07c0210c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000248000c0 -tdo 1f10ae5100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000148000c0 -tdo 7e1311f400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000348000c0 -tdo e00a8b2800000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c8000c0 -tdo c0210c0000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c8000c0 -tdo 2a84380700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c8000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c8000c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000028000c0 -tdo 07c0210e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000228000c0 -tdo 1f46843a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000128000c0 -tdo 7c4a54e000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000328000c0 -tdo f008538000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a8000c0 -tdo c0210e0100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a8000c0 -tdo 4084380700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a8000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a8000c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000068000c0 -tdo 07c0210e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000268000c0 -tdo 1f00843800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000168000c0 -tdo 7c0210e000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000368000c0 -tdo f008438000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e8000c0 -tdo c0210e0100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e8000c0 -tdo 0084380700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e8000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e8000c0 -tdo 00ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000018000c0 -tdo 0380000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000218000c0 -tdo 0e66301000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000118000c0 -tdo 3998c64c00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000318000c0 -tdo e008010000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000098000c0 -tdo c0210c0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000298000c0 -tdo 6600100300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000198000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000398000c0 -tdo 2480002400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000058000c0 -tdo 2e00001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000258000c0 -tdo 0280003800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000158000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000358000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d8000c0 -tdo 8000000f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d8000c0 -tdo 1000003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d8000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d8000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000038000c0 -tdo 7800000a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000238000c0 -tdo 1900000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000138000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000338000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b8000c0 -tdo 0000000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b8000c0 -tdo 0000044800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b8000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b8000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000078000c0 -tdo 0000000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000278000c0 -tdo d800001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000178000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000378000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f8000c0 -tdo 4409060c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f8000c0 -tdo 800800b100000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f8000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f8000c0 -tdo 85a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000004000c0 -tdo 8680000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000204000c0 -tdo da00010400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000104000c0 -tdo 6800002800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000304000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000084000c0 -tdo 8140804d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000284000c0 -tdo 0504083e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000184000c0 -tdo 0000004200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000384000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000044000c0 -tdo 3e00400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000244000c0 -tdo d001000a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000144000c0 -tdo 0100004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000344000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c4000c0 -tdo c220008f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c4000c0 -tdo 0024003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c4000c0 -tdo 0000001100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c4000c0 -tdo 0000083f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000024000c0 -tdo 3e00200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000224000c0 -tdo f940800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000124000c0 -tdo 0400040000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000324000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a4000c0 -tdo 8800450f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a4000c0 -tdo 2000003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a4000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a4000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000064000c0 -tdo 0600090000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000264000c0 -tdo d800005800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000164000c0 -tdo 0200004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000364000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e4000c0 -tdo 0000144500000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e4000c0 -tdo 0000040000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e4000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e4000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000014000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000214000c0 -tdo da00140100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000114000c0 -tdo 6c00021800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000314000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000094000c0 -tdo c400010d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000294000c0 -tdo 0044080600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000194000c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000394000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000054000c0 -tdo 0080010000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000254000c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000154000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000354000c0 -tdo 0208000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d4000c0 -tdo 4408020e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d4000c0 -tdo 000c18ba00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d4000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d4000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000034000c0 -tdo 0680100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000234000c0 -tdo 0008140000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000134000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000334000c0 -tdo 9080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b4000c0 -tdo 0001001f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b4000c0 -tdo 1000800400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b4000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b4000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000074000c0 -tdo 3600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000274000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000174000c0 -tdo 0002400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000374000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f4000c0 -tdo 00000a0000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f4000c0 -tdo 0008004200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f4000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f4000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000c000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020c000c0 -tdo 1a00000400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010c000c0 -tdo 6810100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030c000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008c000c0 -tdo 8000082100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028c000c0 -tdo 0004983600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018c000c0 -tdo 0000004a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038c000c0 -tdo 0011000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024c000c0 -tdo f900040000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cc000c0 -tdo 8041004700000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cc000c0 -tdo 0040003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cc000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cc000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002c000c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022c000c0 -tdo e020200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032c000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ac000c0 -tdo 80304a0800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ac000c0 -tdo 0008003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ac000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ac000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006c000c0 -tdo 7680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026c000c0 -tdo 0710440000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016c000c0 -tdo 0000201000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036c000c0 -tdo e000800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ec000c0 -tdo 0020870800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ec000c0 -tdo 0000010000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ec000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ec000c0 -tdo 01b4000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001c000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021c000c0 -tdo 1a00000400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011c000c0 -tdo 6800102000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031c000c0 -tdo a000400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009c000c0 -tdo c500000900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029c000c0 -tdo 1000080600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019c000c0 -tdo 0000000500000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005c000c0 -tdo b680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025c000c0 -tdo f800000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015c000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dc000c0 -tdo 0000068500000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dc000c0 -tdo 0000003c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dc000c0 -tdo 0000000a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dc000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003c000c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023c000c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013c000c0 -tdo 000000a800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033c000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bc000c0 -tdo 0000800600000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bc000c0 -tdo 000218be00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bc000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bc000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007c000c0 -tdo 3100000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027c000c0 -tdo d802000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017c000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037c000c0 -tdo 4000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fc000c0 -tdo 0000860900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fc000c0 -tdo 0000403600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fc000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fc000c0 -tdo 01a0001900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000002000c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000202000c0 -tdo 5a0080a000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000102000c0 -tdo 6800019100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000302000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000082000c0 -tdo 8000002500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000282000c0 -tdo 00002a3600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000182000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000382000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000042000c0 -tdo 3800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000242000c0 -tdo f800040800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000142000c0 -tdo 0100100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000342000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c2000c0 -tdo 8020000f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c2000c0 -tdo 2000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c2000c0 -tdo 0000001100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c2000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000022000c0 -tdo 8f80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000222000c0 -tdo e000200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000122000c0 -tdo 0401000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000322000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a2000c0 -tdo 8200000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a2000c0 -tdo 0000003800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a2000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a2000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000062000c0 -tdo 0f00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000262000c0 -tdo 0600002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000162000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000362000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e2000c0 -tdo 0024000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e2000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e2000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000012000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000212000c0 -tdo 1b40002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000112000c0 -tdo 6800001100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000312000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000092000c0 -tdo 8000018100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000292000c0 -tdo 0000048600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000192000c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000392000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000052000c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000252000c0 -tdo 9000000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000152000c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000352000c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d2000c0 -tdo 0000064600000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d2000c0 -tdo 8000007800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d2000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d2000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000032000c0 -tdo b780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000232000c0 -tdo 7800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000132000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000332000c0 -tdo 3000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b2000c0 -tdo 8000100600000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b2000c0 -tdo 0000a81200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b2000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b2000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000072000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000272000c0 -tdo d800001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000172000c0 -tdo 0008500000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000372000c0 -tdo c000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f2000c0 -tdo 0011840900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f2000c0 -tdo 000898a700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f2000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f2000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000a000c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020a000c0 -tdo da00020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010a000c0 -tdo 6802002400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030a000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008a000c0 -tdo a800012500000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028a000c0 -tdo a004000600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018a000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004a000c0 -tdo 3844000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024a000c0 -tdo fa00000900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ca000c0 -tdo 0000024e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ca000c0 -tdo 0000093800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ca000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ca000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002a000c0 -tdo 0f80000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022a000c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032a000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000aa000c0 -tdo 0000000f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002aa000c0 -tdo 0000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001aa000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003aa000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006a000c0 -tdo 0f00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026a000c0 -tdo 0400008000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016a000c0 -tdo 0100000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ea000c0 -tdo 0001080000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ea000c0 -tdo 0000088000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ea000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ea000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001a000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021a000c0 -tdo 1a00002000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011a000c0 -tdo 6c00001200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031a000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009a000c0 -tdo 8010092100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029a000c0 -tdo 0002200600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019a000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039a000c0 -tdo 001ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005a000c0 -tdo 035ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025a000c0 -tdo 097ffe1000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015a000c0 -tdo 05ffe04000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035a000c0 -tdo 97ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000da000c0 -tdo 5ffe000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002da000c0 -tdo 7ff8000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001da000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003da000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003a000c0 -tdo 245ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023a000c0 -tdo 91fff80000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013a000c0 -tdo 07fff40000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033a000c0 -tdo 17ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ba000c0 -tdo 7ffe000900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ba000c0 -tdo fff8002400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ba000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ba000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007a000c0 -tdo 215ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027a000c0 -tdo 85fff86000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017a000c0 -tdo 07ffe04000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037a000c0 -tdo 17ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fa000c0 -tdo 7fff004000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fa000c0 -tdo fff8002000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fa000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fa000c0 -tdo 001ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000006000c0 -tdo 01dffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000206000c0 -tdo 15fff80000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000106000c0 -tdo 07ffe80000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000306000c0 -tdo 57ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000086000c0 -tdo 7fff010800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000286000c0 -tdo fff9100100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000186000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000386000c0 -tdo 0000002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000046000c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000246000c0 -tdo 7800000900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000146000c0 -tdo 0000240400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000346000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c6000c0 -tdo 2000000f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c6000c0 -tdo 0294903400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c6000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000026000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000226000c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000126000c0 -tdo 0000106000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000326000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a6000c0 -tdo 4000000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a6000c0 -tdo 0000003c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a6000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a6000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000066000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000266000c0 -tdo d800001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000166000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000366000c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e6000c0 -tdo 0000002000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e6000c0 -tdo 0000080200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e6000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e6000c0 -tdo 01a0000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000016000c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000216000c0 -tdo da00004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000116000c0 -tdo 6800029200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000316000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000096000c0 -tdo 8000020100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000296000c0 -tdo 1002204600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000196000c0 -tdo 0000005500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000396000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000056000c0 -tdo 3800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000256000c0 -tdo 0380000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000156000c0 -tdo 0100000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000356000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d6000c0 -tdo 4401440a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d6000c0 -tdo 2480000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d6000c0 -tdo 0000001100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d6000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000036000c0 -tdo 0f80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000236000c0 -tdo 0400000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000136000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000336000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b6000c0 -tdo 0010024e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b6000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b6000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000076000c0 -tdo 0f00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000276000c0 -tdo 2200240000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000176000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000376000c0 -tdo 0018000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f6000c0 -tdo 4220062100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f6000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f6000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f6000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000e000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020e000c0 -tdo 1b40006000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010e000c0 -tdo 6820028000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030e000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008e000c0 -tdo 8800800900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028e000c0 -tdo 0000000600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018e000c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004e000c0 -tdo 0640000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024e000c0 -tdo fb80000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014e000c0 -tdo 0200400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034e000c0 -tdo 8800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ce000c0 -tdo 0000000b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ce000c0 -tdo 0084000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ce000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ce000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002e000c0 -tdo 3790000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022e000c0 -tdo e000000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012e000c0 -tdo 0400100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032e000c0 -tdo 1000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ae000c0 -tdo 0000252000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ae000c0 -tdo 0810000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ae000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ae000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006e000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026e000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036e000c0 -tdo 8100000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ee000c0 -tdo 0000060400000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ee000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ee000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ee000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001e000c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021e000c0 -tdo 1a00009000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011e000c0 -tdo 6800002200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031e000c0 -tdo b000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009e000c0 -tdo 8000402d00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029e000c0 -tdo 0000000600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019e000c0 -tdo 0000005200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005e000c0 -tdo 3800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025e000c0 -tdo f800000a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015e000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035e000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000de000c0 -tdo 4400024d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002de000c0 -tdo 0180082600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001de000c0 -tdo 0000001100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003de000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003e000c0 -tdo 0f80000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023e000c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013e000c0 -tdo 0000800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033e000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000be000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002be000c0 -tdo 400090b800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001be000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003be000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007e000c0 -tdo 0900000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027e000c0 -tdo 0700008000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017e000c0 -tdo 0000200400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037e000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fe000c0 -tdo 0002000c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fe000c0 -tdo 0080189400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fe000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fe000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000001000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000201000c0 -tdo 1a10001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000101000c0 -tdo 6800102000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000301000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000081000c0 -tdo 8001000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000281000c0 -tdo 0201000600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000181000c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000381000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000041000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000241000c0 -tdo 0200040000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000141000c0 -tdo 0000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000341000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c1000c0 -tdo 0000040500000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c1000c0 -tdo 0004086e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c1000c0 -tdo 0000000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c1000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000021000c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000221000c0 -tdo 1800400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000121000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000321000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a1000c0 -tdo 0000200b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a1000c0 -tdo 0010900000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a1000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a1000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000061000c0 -tdo 3680090000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000261000c0 -tdo d800000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000161000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000361000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e1000c0 -tdo 0000000700000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e1000c0 -tdo 01141c1200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e1000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e1000c0 -tdo 01a0020100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000011000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000211000c0 -tdo da00000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000111000c0 -tdo 6808001100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000311000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000091000c0 -tdo 8000000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000291000c0 -tdo 0080403600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000191000c0 -tdo 0000004800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000391000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000051000c0 -tdo 0040010000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000251000c0 -tdo 3804c40000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000151000c0 -tdo 0102000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000351000c0 -tdo 8010000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d1000c0 -tdo 0810004100000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d1000c0 -tdo 0000103400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d1000c0 -tdo 0000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d1000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000031000c0 -tdo 0608080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000231000c0 -tdo 3800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000131000c0 -tdo 0420000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000331000c0 -tdo 8008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b1000c0 -tdo 4001010d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b1000c0 -tdo 0000403c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b1000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b1000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000071000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000271000c0 -tdo 1e00040400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000171000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000371000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f1000c0 -tdo 0121000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f1000c0 -tdo 0480084200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f1000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f1000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000009000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000209000c0 -tdo 1b40400400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000109000c0 -tdo 6800028000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000309000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000089000c0 -tdo 8010000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000289000c0 -tdo 0002200600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000189000c0 -tdo 0000000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000389000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000049000c0 -tdo be00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000249000c0 -tdo fa02001800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000149000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000349000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c9000c0 -tdo 0000008e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c9000c0 -tdo 0180080200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c9000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000029000c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000229000c0 -tdo e140810000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000129000c0 -tdo 0492000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000329000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a9000c0 -tdo 0000010300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a9000c0 -tdo 0001104000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a9000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a9000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000069000c0 -tdo 1600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000269000c0 -tdo 0400009800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000169000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000369000c0 -tdo 8000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e9000c0 -tdo 0011000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e9000c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e9000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e9000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000019000c0 -tdo b680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000219000c0 -tdo 1a00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000119000c0 -tdo 6800001800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000319000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000099000c0 -tdo 8000000d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000299000c0 -tdo 00001a0600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000199000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000399000c0 -tdo 2b80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000059000c0 -tdo 0080001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000259000c0 -tdo f910440000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000159000c0 -tdo 0200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000359000c0 -tdo 8000800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d9000c0 -tdo 0122000a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d9000c0 -tdo 01800a0c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d9000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d9000c0 -tdo 0f80003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000039000c0 -tdo 0601200a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000239000c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000139000c0 -tdo 0400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000339000c0 -tdo 8000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b9000c0 -tdo 8001440400000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b9000c0 -tdo 0001203000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b9000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b9000c0 -tdo 0d80003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000079000c0 -tdo b680000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000279000c0 -tdo 0700080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000179000c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000379000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f9000c0 -tdo 5005000b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f9000c0 -tdo 0808086700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f9000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f9000c0 -tdo 8da0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000005000c0 -tdo 3680000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000205000c0 -tdo 1a20040800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000105000c0 -tdo 6800802800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000305000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000085000c0 -tdo 8000000900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000285000c0 -tdo 0086101600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000185000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000385000c0 -tdo 0000880000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000045000c0 -tdo 1a05200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000245000c0 -tdo 9004820000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000145000c0 -tdo 4040424200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000345000c0 -tdo 0000208a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c5000c0 -tdo 0101084f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c5000c0 -tdo 0000027f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000025000c0 -tdo 26a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000225000c0 -tdo 0000141000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000125000c0 -tdo 6400102000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000325000c0 -tdo 8002410300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a5000c0 -tdo 0028090f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a5000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a5000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000065000c0 -tdo 3600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000265000c0 -tdo 0080000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000165000c0 -tdo 0000180000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000365000c0 -tdo 0000600700000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e5000c0 -tdo 0000800c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e5000c0 -tdo 0080000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e5000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e5000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000015000c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000215000c0 -tdo 9b00440800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000115000c0 -tdo 6800405800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000315000c0 -tdo a004024000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000095000c0 -tdo 8000098d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000295000c0 -tdo 0400000600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000195000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000395000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000055000c0 -tdo 3000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000255000c0 -tdo e881021000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000155000c0 -tdo 0002012100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000355000c0 -tdo 9000119200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d5000c0 -tdo 0000084f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d5000c0 -tdo 0010000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d5000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d5000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000035000c0 -tdo 1e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000235000c0 -tdo c900800900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000135000c0 -tdo e020008000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000335000c0 -tdo 8202400100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b5000c0 -tdo 0000090f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b5000c0 -tdo 2008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b5000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b5000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000075000c0 -tdo b000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000275000c0 -tdo de00002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000175000c0 -tdo 4108020800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000375000c0 -tdo 8000000600000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f5000c0 -tdo 0000800c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f5000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f5000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f5000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000d000c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020d000c0 -tdo df40001800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010d000c0 -tdo 6c02009000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030d000c0 -tdo a000228200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008d000c0 -tdo 8000098d00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028d000c0 -tdo 0000000600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018d000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038d000c0 -tdo 0000000a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004d000c0 -tdo 3e82000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024d000c0 -tdo ea04820000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014d000c0 -tdo 0000020800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034d000c0 -tdo 9000080000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cd000c0 -tdo 0084000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cd000c0 -tdo 8008000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cd000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002d000c0 -tdo 6380400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022d000c0 -tdo e000141800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012d000c0 -tdo e000905000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032d000c0 -tdo 8100016300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ad000c0 -tdo 0042000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ad000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ad000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ad000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006d000c0 -tdo 1700000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026d000c0 -tdo d400084000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016d000c0 -tdo 0000322000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036d000c0 -tdo 8000101300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ed000c0 -tdo 0000008d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ed000c0 -tdo 0084000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ed000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ed000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001d000c0 -tdo 3780000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021d000c0 -tdo de00042000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011d000c0 -tdo 6800008400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031d000c0 -tdo a000014000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009d000c0 -tdo 80001a0d00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029d000c0 -tdo 0810000600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019d000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039d000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005d000c0 -tdo 4800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025d000c0 -tdo 7800803800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015d000c0 -tdo 8004000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035d000c0 -tdo 0000094200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dd000c0 -tdo 0000020e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dd000c0 -tdo 8000043e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dd000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dd000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003d000c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023d000c0 -tdo d8a4000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013d000c0 -tdo 8282019400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033d000c0 -tdo 9200004100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bd000c0 -tdo 0000008f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bd000c0 -tdo 0000083e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bd000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bd000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007d000c0 -tdo 8200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027d000c0 -tdo d201001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017d000c0 -tdo 0002080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037d000c0 -tdo 9880018300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fd000c0 -tdo 0800001d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fd000c0 -tdo 0000010600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fd000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fd000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000003000c0 -tdo 2680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000203000c0 -tdo 5b20820800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000103000c0 -tdo 6810005200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000303000c0 -tdo a008201300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000083000c0 -tdo c0002a0d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000283000c0 -tdo 1001283600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000183000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000383000c0 -tdo 0000022800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000043000c0 -tdo 3e00200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000243000c0 -tdo 9000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000143000c0 -tdo a200308000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000343000c0 -tdo 8000901100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c3000c0 -tdo 0004000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c3000c0 -tdo 00008a3e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c3000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c3000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000023000c0 -tdo 3e01000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000223000c0 -tdo 7000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000123000c0 -tdo f400009100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000323000c0 -tdo 8000414300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a3000c0 -tdo 0002000300000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a3000c0 -tdo 0000103e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a3000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a3000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000063000c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000263000c0 -tdo c800002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000163000c0 -tdo 1806540000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000363000c0 -tdo 8000400300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e3000c0 -tdo 0105008d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e3000c0 -tdo 000000b600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e3000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e3000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000013000c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000213000c0 -tdo 9a00002a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000113000c0 -tdo 7800006400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000313000c0 -tdo a001058400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000093000c0 -tdo 80204a0d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000293000c0 -tdo 0000641600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000193000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000393000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000053000c0 -tdo 1e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000253000c0 -tdo 8000020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000153000c0 -tdo 8400008000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000353000c0 -tdo 9100110100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d3000c0 -tdo 0809400f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d3000c0 -tdo 2002013e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d3000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d3000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000033000c0 -tdo 2a80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000233000c0 -tdo d000002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000133000c0 -tdo 810090a400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000333000c0 -tdo 0000008600000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b3000c0 -tdo 4000098e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b3000c0 -tdo 0000243e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b3000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b3000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000073000c0 -tdo 3402000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000273000c0 -tdo c000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000173000c0 -tdo 0002042000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000373000c0 -tdo 9002418300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f3000c0 -tdo 0081808c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f3000c0 -tdo 0024041600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f3000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f3000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000b000c0 -tdo 3680400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020b000c0 -tdo 9a00011a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010b000c0 -tdo 6820004800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030b000c0 -tdo a200201300000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008b000c0 -tdo 8048060900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028b000c0 -tdo 0000983600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018b000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004b000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024b000c0 -tdo c000010c00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014b000c0 -tdo c000040000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034b000c0 -tdo 8002504200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cb000c0 -tdo 0105000f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cb000c0 -tdo 0000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cb000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cb000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002b000c0 -tdo 2500000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022b000c0 -tdo d140001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012b000c0 -tdo 9480006400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032b000c0 -tdo 0000018300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ab000c0 -tdo 0020000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ab000c0 -tdo 000008b800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ab000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ab000c0 -tdo 0008003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006b000c0 -tdo 3206200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026b000c0 -tdo c000080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016b000c0 -tdo 1802808000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036b000c0 -tdo 0001401000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000eb000c0 -tdo 4401000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002eb000c0 -tdo 0004090600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001eb000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003eb000c0 -tdo 01b0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001b000c0 -tdo 3ea0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021b000c0 -tdo da00062900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011b000c0 -tdo 781010a100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031b000c0 -tdo a048094000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009b000c0 -tdo 8010011100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029b000c0 -tdo 1040003600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019b000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039b000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005b000c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025b000c0 -tdo f810801800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015b000c0 -tdo c200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035b000c0 -tdo 8018102200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000db000c0 -tdo 0081000d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002db000c0 -tdo 0002000800000000 -mask ffffffff00000000
sdr 64 -tdi 000000001db000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003db000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003b000c0 -tdo be00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023b000c0 -tdo 2102008000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013b000c0 -tdo 9400002200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033b000c0 -tdo 8000018300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bb000c0 -tdo 0050258700000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bb000c0 -tdo 0000260600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bb000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bb000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007b000c0 -tdo 8200000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027b000c0 -tdo d800001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017b000c0 -tdo 1800080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037b000c0 -tdo 9000001000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fb000c0 -tdo 4000004d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fb000c0 -tdo 0001180000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fb000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fb000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000007000c0 -tdo 2680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000207000c0 -tdo db10004800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000107000c0 -tdo 7814005200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000307000c0 -tdo a248214000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000087000c0 -tdo 8400010d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000287000c0 -tdo 1000004600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000187000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000387000c0 -tdo 001ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000047000c0 -tdo 025ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000247000c0 -tdo 217ff82000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000147000c0 -tdo 25ffe00000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000347000c0 -tdo 17ff900000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c7000c0 -tdo 5ffe140000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c7000c0 -tdo 7ff8000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c7000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c7000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000027000c0 -tdo 045ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000227000c0 -tdo 117ffd0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000127000c0 -tdo 05ffe00000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000327000c0 -tdo 17ff829300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a7000c0 -tdo 5ffe000a00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a7000c0 -tdo fff8002400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a7000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a7000c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000067000c0 -tdo 435ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000267000c0 -tdo 8d7ffc0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000167000c0 -tdo 15fff00400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000367000c0 -tdo 1fff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e7000c0 -tdo 7ffe000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e7000c0 -tdo fff8000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e7000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e7000c0 -tdo 001ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000017000c0 -tdo 25dffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000217000c0 -tdo 077ffc0400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000117000c0 -tdo 5dfff19000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000317000c0 -tdo 5fff800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000097000c0 -tdo 7ffe000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000297000c0 -tdo fff8000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000197000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000397000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000057000c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000257000c0 -tdo f800240000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000157000c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000357000c0 -tdo 8000610000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d7000c0 -tdo 0000000c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d7000c0 -tdo 0004013e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d7000c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d7000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000037000c0 -tdo 3e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000237000c0 -tdo f000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000137000c0 -tdo 2000049400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000337000c0 -tdo 0004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b7000c0 -tdo 000a298c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b7000c0 -tdo 1020083e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b7000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b7000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000077000c0 -tdo 0620400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000277000c0 -tdo d000820000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000177000c0 -tdo 4800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000377000c0 -tdo 0002401300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f7000c0 -tdo 0000108c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f7000c0 -tdo 0002010600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f7000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f7000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000f000c0 -tdo 06c0200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020f000c0 -tdo 1a08002a00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010f000c0 -tdo 6800016200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030f000c0 -tdo a000218300000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008f000c0 -tdo 80110a0d00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028f000c0 -tdo 0000243600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018f000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038f000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004f000c0 -tdo 8002000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024f000c0 -tdo 0000010800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014f000c0 -tdo e400000200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034f000c0 -tdo 9200480100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cf000c0 -tdo 0000062f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cf000c0 -tdo 0482003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cf000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cf000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002f000c0 -tdo 1e004a0000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022f000c0 -tdo 0000281000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012f000c0 -tdo 0100002000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032f000c0 -tdo 8002016200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000af000c0 -tdo 0140800800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002af000c0 -tdo 0000289e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001af000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003af000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006f000c0 -tdo 1600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026f000c0 -tdo 0000005800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016f000c0 -tdo 6000046800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036f000c0 -tdo a004501000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ef000c0 -tdo 0801860d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ef000c0 -tdo 000e080600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ef000c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ef000c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001f000c0 -tdo 1680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021f000c0 -tdo da00240200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011f000c0 -tdo 6800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031f000c0 -tdo b200014300000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009f000c0 -tdo c010001d00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029f000c0 -tdo 2000107600000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019f000c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039f000c0 -tdo 0001000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005f000c0 -tdo 3e00400000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025f000c0 -tdo f914800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015f000c0 -tdo 0000101000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035f000c0 -tdo 8000820200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000df000c0 -tdo 0228820700000000 -mask ffffffff00000000
sdr 64 -tdi 000000002df000c0 -tdo 0000043c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001df000c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003df000c0 -tdo 0008003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003f000c0 -tdo 3880200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023f000c0 -tdo e600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013f000c0 -tdo 8000402000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033f000c0 -tdo 8000426100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bf000c0 -tdo 0001088800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bf000c0 -tdo 0500983e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bf000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bf000c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007f000c0 -tdo 0180000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027f000c0 -tdo 1800000200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017f000c0 -tdo 0000010100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037f000c0 -tdo 0000041000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ff000c0 -tdo 0000008500000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ff000c0 -tdo 104400a600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ff000c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ff000c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000000800c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000200800c0 -tdo da00000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000100800c0 -tdo 6800006000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000300800c0 -tdo a000024000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000080800c0 -tdo 80002a0500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000280800c0 -tdo 0000643600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000180800c0 -tdo 0000004100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000380800c0 -tdo 0008000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000040800c0 -tdo 1e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000240800c0 -tdo 6800008000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000140800c0 -tdo 4400042000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000340800c0 -tdo a200000400000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c0800c0 -tdo 0000020600000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c0800c0 -tdo 1000043e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c0800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c0800c0 -tdo 0010003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000020800c0 -tdo 2a80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000220800c0 -tdo f400002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000120800c0 -tdo 0112004400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000320800c0 -tdo 90000a4300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a0800c0 -tdo 2800841900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a0800c0 -tdo 0000083e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a0800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a0800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000060800c0 -tdo 3400000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000260800c0 -tdo c800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000160800c0 -tdo 2102000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000360800c0 -tdo 0804410300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e0800c0 -tdo 0000000c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e0800c0 -tdo 0000010600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e0800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e0800c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000010800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000210800c0 -tdo fb15011a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000110800c0 -tdo 6c08046400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000310800c0 -tdo b000084700000000 -mask ffffffff00000000
sdr 64 -tdi 00000000090800c0 -tdo 8000028100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000290800c0 -tdo 0000943600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000190800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000390800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000050800c0 -tdo 0e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000250800c0 -tdo fa00240000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000150800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000350800c0 -tdo 9100800500000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d0800c0 -tdo 0001110f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d0800c0 -tdo 0480003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d0800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d0800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000030800c0 -tdo 0e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000230800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000130800c0 -tdo c480002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000330800c0 -tdo 8000514100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b0800c0 -tdo 0008060f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b0800c0 -tdo 0000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b0800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b0800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000070800c0 -tdo 0700000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000270800c0 -tdo c000008000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000170800c0 -tdo 2010501000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000370800c0 -tdo 0004040600000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f0800c0 -tdo 0008402500000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f0800c0 -tdo 0000808600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f0800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f0800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000008800c0 -tdo 0780000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000208800c0 -tdo 1a00241000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000108800c0 -tdo 6a82002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000308800c0 -tdo a000418300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000088800c0 -tdo 8001060500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000288800c0 -tdo 0000180600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000188800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000388800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000048800c0 -tdo 0800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000248800c0 -tdo f800010800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000148800c0 -tdo e902001000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000348800c0 -tdo 0008000200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c8800c0 -tdo 0820000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c8800c0 -tdo 000058bc00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c8800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c8800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000028800c0 -tdo 2500000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000228800c0 -tdo 1200001100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000128800c0 -tdo e41004a000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000328800c0 -tdo 924021a300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a8800c0 -tdo 4200018f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a8800c0 -tdo 4000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a8800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a8800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000068800c0 -tdo 3200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000268800c0 -tdo d800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000168800c0 -tdo 6000080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000368800c0 -tdo 8000108000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e8800c0 -tdo 0000104d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e8800c0 -tdo 048000b600000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e8800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e8800c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000018800c0 -tdo 3e800a0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000218800c0 -tdo da0000a900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000118800c0 -tdo 6800005400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000318800c0 -tdo aa00021200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000098800c0 -tdo 8140090d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000298800c0 -tdo 0000643600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000198800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000398800c0 -tdo 0000001900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000058800c0 -tdo 0e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000258800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000158800c0 -tdo 0002201000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000358800c0 -tdo 8088080700000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d8800c0 -tdo 0000000e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d8800c0 -tdo 00801c2000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d8800c0 -tdo 0000004c00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d8800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000038800c0 -tdo 0e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000238800c0 -tdo 2000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000138800c0 -tdo 6020102000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000338800c0 -tdo 8000024000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b8800c0 -tdo 0000158900000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b8800c0 -tdo 0400803000000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b8800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b8800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000078800c0 -tdo 3602200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000278800c0 -tdo d810002100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000178800c0 -tdo 2000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000378800c0 -tdo 008c608b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f8800c0 -tdo 8020001d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f8800c0 -tdo 0000023400000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f8800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f8800c0 -tdo 01a0000300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000004800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000204800c0 -tdo da80282800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000104800c0 -tdo 6800115200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000304800c0 -tdo a000010200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000084800c0 -tdo 82008a0d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000284800c0 -tdo 0028043e00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000184800c0 -tdo 0000006000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000384800c0 -tdo 0000000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000044800c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000244800c0 -tdo 7800440000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000144800c0 -tdo ee02000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000344800c0 -tdo a000010300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c4800c0 -tdo 0000460f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c4800c0 -tdo 1000003e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c4800c0 -tdo 0000004900000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c4800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000024800c0 -tdo 3e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000224800c0 -tdo a800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000124800c0 -tdo a010018000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000324800c0 -tdo 800004a300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a4800c0 -tdo 2800008800000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a4800c0 -tdo 00022a3e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a4800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a4800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000064800c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000264800c0 -tdo d100008000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000164800c0 -tdo 0100080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000364800c0 -tdo 9002000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e4800c0 -tdo 4400860d00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e4800c0 -tdo 002480b200000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e4800c0 -tdo 0000007e00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e4800c0 -tdo 01a0002300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000014800c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000214800c0 -tdo da40002a00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000114800c0 -tdo 6c00005200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000314800c0 -tdo a400524b00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000094800c0 -tdo 8000001d00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000294800c0 -tdo 0000183600000000 -mask ffffffff00000000
sdr 64 -tdi 00000000194800c0 -tdo 0000006200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000394800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000054800c0 -tdo 1200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000254800c0 -tdo d8000e1800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000154800c0 -tdo 0022000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000354800c0 -tdo a000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d4800c0 -tdo 8000ffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d4800c0 -tdo 0080100300000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d4800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d4800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000034800c0 -tdo 1e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000234800c0 -tdo 1808800200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000134800c0 -tdo 0000002100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000334800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b4800c0 -tdo c021ffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b4800c0 -tdo 0084380700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b4800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b4800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000074800c0 -tdo 3200000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000274800c0 -tdo da00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000174800c0 -tdo 0000000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000374800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f4800c0 -tdo c0210c0f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f4800c0 -tdo 0084380700000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f4800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f4800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000c800c0 -tdo 2680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020c800c0 -tdo da00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010c800c0 -tdo 6800001000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008c800c0 -tdo 8000040f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028c800c0 -tdo 0084380700000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018c800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038c800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004c800c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024c800c0 -tdo fa00000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014c800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cc800c0 -tdo f9efffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cc800c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cc800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cc800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002c800c0 -tdo 7080000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022c800c0 -tdo b800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012c800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ac800c0 -tdo f9efffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ac800c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ac800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ac800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006c800c0 -tdo 0e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026c800c0 -tdo dc00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016c800c0 -tdo 0000008800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036c800c0 -tdo e100000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ec800c0 -tdo f9ef7fff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ec800c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ec800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ec800c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001c800c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021c800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011c800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031c800c0 -tdo f000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009c800c0 -tdo f9ef7fff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029c800c0 -tdo e7bdff3f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019c800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039c800c0 -tdo 0000100000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005c800c0 -tdo 3801000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025c800c0 -tdo f800000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015c800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dc800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dc800c0 -tdo 0000103f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003c800c0 -tdo 4e80200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023c800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013c800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bc800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bc800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007c800c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027c800c0 -tdo df00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017c800c0 -tdo 0480008800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037c800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fc800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fc800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fc800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000002800c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000202800c0 -tdo 9e18800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000102800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000302800c0 -tdo e088000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000082800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000282800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000182800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000382800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000042800c0 -tdo 8600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000242800c0 -tdo f800000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000142800c0 -tdo 0600120000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000342800c0 -tdo e104000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c2800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000022800c0 -tdo 3080000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000222800c0 -tdo d800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000122800c0 -tdo 0000805100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000322800c0 -tdo f000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a2800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000062800c0 -tdo 0e00020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000262800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000162800c0 -tdo 0000008800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000362800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e2800c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000012800c0 -tdo 0680010000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000212800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000112800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000312800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000092800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000292800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000192800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000392800c0 -tdo 0f80880000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000052800c0 -tdo b800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000252800c0 -tdo fa00000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000152800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000352800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d2800c0 -tdo 8f80003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000032800c0 -tdo 0e80004900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000232800c0 -tdo 7800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000132800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000332800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b2800c0 -tdo 4580003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000072800c0 -tdo 3e00000400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000272800c0 -tdo dc00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000172800c0 -tdo 0000008800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000372800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f2800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f2800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f2800c0 -tdo 0da0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000a800c0 -tdo 0680001100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020a800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010a800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030a800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008a800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028a800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018a800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038a800c0 -tdo 0000080000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004a800c0 -tdo 0600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024a800c0 -tdo fa00000800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014a800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034a800c0 -tdo e000400b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ca800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ca800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ca800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ca800c0 -tdo 0000803f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002a800c0 -tdo b080000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022a800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012a800c0 -tdo c000085100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032a800c0 -tdo f1040a4300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000aa800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002aa800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001aa800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003aa800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006a800c0 -tdo 3e02200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026a800c0 -tdo cc04800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016a800c0 -tdo 4840020800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036a800c0 -tdo e000080300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ea800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ea800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ea800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ea800c0 -tdo 01a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001a800c0 -tdo 0680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021a800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011a800c0 -tdo 6c00005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031a800c0 -tdo e000018400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009a800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029a800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019a800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039a800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005a800c0 -tdo 3c00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025a800c0 -tdo db88801800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015a800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035a800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000da800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002da800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001da800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003da800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003a800c0 -tdo 7e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023a800c0 -tdo f800020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013a800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033a800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ba800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ba800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ba800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ba800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007a800c0 -tdo b600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027a800c0 -tdo dc00811800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017a800c0 -tdo 0000008800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037a800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fa800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fa800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fa800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fa800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000006800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000206800c0 -tdo de08000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000106800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000306800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000086800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000286800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000186800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000386800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000046800c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000246800c0 -tdo 7800000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000146800c0 -tdo 0600020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000346800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c6800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000026800c0 -tdo 7e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000226800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000126800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000326800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a6800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000066800c0 -tdo 8600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000266800c0 -tdo df80011800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000166800c0 -tdo 0000108800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000366800c0 -tdo e000c00000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e6800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000016800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000216800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000116800c0 -tdo 6800805000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000316800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000096800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000296800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000196800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000396800c0 -tdo 011ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000056800c0 -tdo 025ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000256800c0 -tdo 097ff85000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000156800c0 -tdo 05ffe20000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000356800c0 -tdo f7ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d6800c0 -tdo 091fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000036800c0 -tdo 245ffe0000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000236800c0 -tdo 117ff80000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000136800c0 -tdo 45ffe08000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000336800c0 -tdo f7ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b6800c0 -tdo 001fffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000076800c0 -tdo 017ffe0200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000276800c0 -tdo 8dfff80000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000176800c0 -tdo 05fff18000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000376800c0 -tdo f7ff8a0200000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f6800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f6800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f6800c0 -tdo 487ffc3f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000e800c0 -tdo 057ffe4400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020e800c0 -tdo 17fff80000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010e800c0 -tdo 15fff00000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030e800c0 -tdo f7ff800000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008e800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028e800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018e800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004e800c0 -tdo 7e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024e800c0 -tdo fb00021800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014e800c0 -tdo e002020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034e800c0 -tdo e008000100000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ce800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ce800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ce800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ce800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002e800c0 -tdo 3e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022e800c0 -tdo f810000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012e800c0 -tdo e020005100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032e800c0 -tdo e0200a9000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ae800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ae800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ae800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ae800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006e800c0 -tdo 1600000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026e800c0 -tdo 9c00241800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016e800c0 -tdo 6800008800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036e800c0 -tdo e000000b00000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ee800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ee800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ee800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ee800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001e800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021e800c0 -tdo df10020200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011e800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031e800c0 -tdo e000094200000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009e800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029e800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019e800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039e800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005e800c0 -tdo 2c80490000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025e800c0 -tdo b800003800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015e800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035e800c0 -tdo e018000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000de800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002de800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001de800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003de800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003e800c0 -tdo bf80200000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023e800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013e800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033e800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000be800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002be800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001be800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003be800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007e800c0 -tdo 3748000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027e800c0 -tdo de00010900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017e800c0 -tdo 0000308800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037e800c0 -tdo e004400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fe800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fe800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fe800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fe800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000001800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000201800c0 -tdo de00002000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000101800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000301800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000081800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000281800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000181800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000381800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000041800c0 -tdo 06c0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000241800c0 -tdo 6800000900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000141800c0 -tdo 0000320000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000341800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c1800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000021800c0 -tdo 3084000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000221800c0 -tdo 9510000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000121800c0 -tdo 0000004000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000321800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a1800c0 -tdo 0010003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000061800c0 -tdo 3100000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000261800c0 -tdo 8e08800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000161800c0 -tdo 0082000800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000361800c0 -tdo e004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e1800c0 -tdo 01a2000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000011800c0 -tdo 3e80000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000211800c0 -tdo 9e00000500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000111800c0 -tdo 6c10019000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000311800c0 -tdo e000400000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000091800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000291800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000191800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000391800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000051800c0 -tdo 3c40010000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000251800c0 -tdo f800010800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000151800c0 -tdo 0002000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000351800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d1800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000031800c0 -tdo 3e04100000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000231800c0 -tdo f800001200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000131800c0 -tdo 0008085100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000331800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b1800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000071800c0 -tdo 7600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000271800c0 -tdo de00021800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000171800c0 -tdo 0000920800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000371800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f1800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f1800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f1800c0 -tdo 01a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000009800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000209800c0 -tdo 5e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000109800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000309800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000089800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000289800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000189800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000389800c0 -tdo 0380000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000049800c0 -tdo 3e02200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000249800c0 -tdo f800809800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000149800c0 -tdo e000020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000349800c0 -tdo e004000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c9800c0 -tdo 03a0003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000029800c0 -tdo 7e00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000229800c0 -tdo e914000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000129800c0 -tdo e000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000329800c0 -tdo e000400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a9800c0 -tdo 01a0003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000069800c0 -tdo a600090000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000269800c0 -tdo de04011800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000169800c0 -tdo 6822008800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000369800c0 -tdo e081444300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e9800c0 -tdo 03a0000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000019800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000219800c0 -tdo de00800000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000119800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000319800c0 -tdo e008028300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000099800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000299800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000199800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000399800c0 -tdo 4880080000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000059800c0 -tdo 0e4a201000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000259800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000159800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000359800c0 -tdo e088400000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d9800c0 -tdo 0700403f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000039800c0 -tdo 0e80000900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000239800c0 -tdo f000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000139800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000339800c0 -tdo e001000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b9800c0 -tdo 8880003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000079800c0 -tdo 0601310200000000 -mask ffffffff00000000
sdr 64 -tdi 00000000279800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000179800c0 -tdo 0000108800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000379800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f9800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f9800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f9800c0 -tdo 09a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000005800c0 -tdo 0e80004800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000205800c0 -tdo de00000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000105800c0 -tdo 6801005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000305800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000085800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000285800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000185800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000385800c0 -tdo 0000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000045800c0 -tdo 0280110000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000245800c0 -tdo e800841900000000 -mask ffffffff00000000
sdr 64 -tdi 00000000145800c0 -tdo 0000020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000345800c0 -tdo f800000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000c5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002c5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001c5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003c5800c0 -tdo 0000003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000025800c0 -tdo 0100000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000225800c0 -tdo f804108000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000125800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000325800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000a5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002a5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001a5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003a5800c0 -tdo 0010003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000065800c0 -tdo 0104000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000265800c0 -tdo de00020000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000165800c0 -tdo 0000308800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000365800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000e5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002e5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001e5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003e5800c0 -tdo 01a1000100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000015800c0 -tdo 0ec0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000215800c0 -tdo de00002500000000 -mask ffffffff00000000
sdr 64 -tdi 00000000115800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000315800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000095800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000295800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000195800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000395800c0 -tdo 03a0000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000055800c0 -tdo 3000000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000255800c0 -tdo fa00840000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000155800c0 -tdo 0600920000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000355800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000d5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002d5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001d5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003d5800c0 -tdo 0380003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000035800c0 -tdo 3600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000235800c0 -tdo f804200000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000135800c0 -tdo 0000005100000000 -mask ffffffff00000000
sdr 64 -tdi 00000000335800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000b5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002b5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001b5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003b5800c0 -tdo 01c0003f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000075800c0 -tdo 3600000000000000 -mask ffffffff00000000
sdr 64 -tdi 00000000275800c0 -tdo d400001800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000175800c0 -tdo 0006008800000000 -mask ffffffff00000000
sdr 64 -tdi 00000000375800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000f5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002f5800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001f5800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003f5800c0 -tdo 03e0000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000000d800c0 -tdo 3680000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000020d800c0 -tdo de00010100000000 -mask ffffffff00000000
sdr 64 -tdi 0000000010d800c0 -tdo 6800005000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000030d800c0 -tdo e000000000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000008d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000028d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000018d800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000038d800c0 -tdo 00ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000004d800c0 -tdo 03c0210c00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000024d800c0 -tdo 0e00001800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000014d800c0 -tdo 3800004000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000034d800c0 -tdo e000010000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000cd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002cd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001cd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003cd800c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000002d800c0 -tdo 07c0210e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000022d800c0 -tdo 1f00843800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000012d800c0 -tdo 7c0210e000000000 -mask ffffffff00000000
sdr 64 -tdi 0000000032d800c0 -tdo f008438000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ad800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ad800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ad800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ad800c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000006d800c0 -tdo 07c0210e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000026d800c0 -tdo 1f08a43800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000016d800c0 -tdo 7c8314e900000000 -mask ffffffff00000000
sdr 64 -tdi 0000000036d800c0 -tdo f48a43a000000000 -mask ffffffff00000000
sdr 64 -tdi 000000000ed800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002ed800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001ed800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003ed800c0 -tdo 01ffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000001d800c0 -tdo 07c0210e00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000021d800c0 -tdo 3f61967800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000011d800c0 -tdo 7e2652e400000000 -mask ffffffff00000000
sdr 64 -tdi 0000000031d800c0 -tdo f228eb8800000000 -mask ffffffff00000000
sdr 64 -tdi 0000000009d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000029d800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000019d800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000039d800c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000005d800c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000025d800c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000015d800c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000035d800c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000dd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002dd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001dd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003dd800c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000003d800c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000023d800c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000013d800c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000033d800c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000bd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002bd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001bd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003bd800c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000007d800c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000027d800c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000017d800c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 0000000037d800c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 000000000fd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000002fd800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 000000001fd800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 000000003fd800c0 -tdo cfffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000003800c0 -tdo 3ff9ef7f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000203800c0 -tdo ffe7bdff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000103800c0 -tdo ff9ef7fc00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000303800c0 -tdo fe7bdff300000000 -mask ffffffff00000000
sdr 64 -tdi 00000000083800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000283800c0 -tdo ffffffff00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000183800c0 -tdo 0000007f00000000 -mask ffffffff00000000
sdr 64 -tdi 00000000383800c0 -tdo 403f005400000000 -mask ffffffff00000000
sdr 64 -tdi 00000000043800c0 -tdo f1f0000000000000 -mask ffffffff00000000
sir 10 -tdi 3f7
runtest -tck 100
usb_close
