function dydt = GRHL2(t, y, Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Inh_of_ZEBToGRHL2,Num_of_ZEBToGRHL2,Trd_of_ZEBToGRHL2,Inh_of_GRHL2ToZEB,Num_of_GRHL2ToZEB,Trd_of_GRHL2ToZEB,Prod_of_miR200,Deg_of_miR200,Prod_of_ZEB,Deg_of_ZEB,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_GRHL2,Deg_of_GRHL2)
miR200 = y(1);
ZEB = y(2);
SNAIL = y(3);
GRHL2 = y(4);
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsZEB_GRHL2 = 1 + (Inh_of_ZEBToGRHL2 - 1)*ZEB^Num_of_ZEBToGRHL2/(ZEB^Num_of_ZEBToGRHL2 + Trd_of_ZEBToGRHL2^Num_of_ZEBToGRHL2);
HillsGRHL2_ZEB = 1 + (Inh_of_GRHL2ToZEB - 1)*GRHL2^Num_of_GRHL2ToZEB/(GRHL2^Num_of_GRHL2ToZEB + Trd_of_GRHL2ToZEB^Num_of_GRHL2ToZEB);
dydt = [Prod_of_miR200*HillsZEB_miR200*HillsSNAIL_miR200 - Deg_of_miR200*miR200
Prod_of_ZEB*HillsmiR200_ZEB*HillsZEB_ZEB*HillsSNAIL_ZEB*HillsGRHL2_ZEB - Deg_of_ZEB*ZEB
Prod_of_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_GRHL2*HillsZEB_GRHL2 - Deg_of_GRHL2*GRHL2];
