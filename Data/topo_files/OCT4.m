function dydt = OCT4(t, y, Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Act_of_OCT4TomiR200,Num_of_OCT4TomiR200,Trd_of_OCT4TomiR200,Inh_of_miR145ToOCT4,Num_of_miR145ToOCT4,Trd_of_miR145ToOCT4,Inh_of_OCT4TomiR145,Num_of_OCT4TomiR145,Trd_of_OCT4TomiR145,Inh_of_miR145ToZEB,Num_of_miR145ToZEB,Trd_of_miR145ToZEB,Inh_of_ZEBTomiR145,Num_of_ZEBTomiR145,Trd_of_ZEBTomiR145,Prod_of_miR200,Deg_of_miR200,Prod_of_ZEB,Deg_of_ZEB,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_OCT4,Deg_of_OCT4,Prod_of_miR145,Deg_of_miR145)
miR200 = y(1);
ZEB = y(2);
SNAIL = y(3);
OCT4 = y(4);
miR145 = y(5);
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsOCT4_miR200 = (1 + (Act_of_OCT4TomiR200 - 1)*OCT4^Num_of_OCT4TomiR200/(OCT4^Num_of_OCT4TomiR200 + Trd_of_OCT4TomiR200^Num_of_OCT4TomiR200))/Act_of_OCT4TomiR200;
HillsmiR145_OCT4 = 1 + (Inh_of_miR145ToOCT4 - 1)*miR145^Num_of_miR145ToOCT4/(miR145^Num_of_miR145ToOCT4 + Trd_of_miR145ToOCT4^Num_of_miR145ToOCT4);
HillsOCT4_miR145 = 1 + (Inh_of_OCT4TomiR145 - 1)*OCT4^Num_of_OCT4TomiR145/(OCT4^Num_of_OCT4TomiR145 + Trd_of_OCT4TomiR145^Num_of_OCT4TomiR145);
HillsmiR145_ZEB = 1 + (Inh_of_miR145ToZEB - 1)*miR145^Num_of_miR145ToZEB/(miR145^Num_of_miR145ToZEB + Trd_of_miR145ToZEB^Num_of_miR145ToZEB);
HillsZEB_miR145 = 1 + (Inh_of_ZEBTomiR145 - 1)*ZEB^Num_of_ZEBTomiR145/(ZEB^Num_of_ZEBTomiR145 + Trd_of_ZEBTomiR145^Num_of_ZEBTomiR145);
dydt = [Prod_of_miR200*HillsZEB_miR200*HillsSNAIL_miR200*HillsOCT4_miR200 - Deg_of_miR200*miR200
Prod_of_ZEB*HillsmiR200_ZEB*HillsZEB_ZEB*HillsSNAIL_ZEB*HillsmiR145_ZEB - Deg_of_ZEB*ZEB
Prod_of_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_OCT4*HillsmiR145_OCT4 - Deg_of_OCT4*OCT4
Prod_of_miR145*HillsOCT4_miR145*HillsZEB_miR145 - Deg_of_miR145*miR145];
