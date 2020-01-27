function dydt = OVOL2_Jia_2(t, y, Act_of_TGFBToSNAIL,Num_of_TGFBToSNAIL,Trd_of_TGFBToSNAIL,Inh_of_SNAILToSNAIL,Num_of_SNAILToSNAIL,Trd_of_SNAILToSNAIL,Inh_of_SNAILTomiR34,Num_of_SNAILTomiR34,Trd_of_SNAILTomiR34,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Inh_of_miR34ToSNAIL,Num_of_miR34ToSNAIL,Trd_of_miR34ToSNAIL,Inh_of_ZEBTomiR34,Num_of_ZEBTomiR34,Trd_of_ZEBTomiR34,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Inh_of_ZEBToOVOL,Num_of_ZEBToOVOL,Trd_of_ZEBToOVOL,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_OVOLToZEB,Num_of_OVOLToZEB,Trd_of_OVOLToZEB,Inh_of_OVOLToOVOL,Num_of_OVOLToOVOL,Trd_of_OVOLToOVOL,Inh_of_WgToOVOL,Num_of_WgToOVOL,Trd_of_WgToOVOL,Act_of_SMADToOVOL,Num_of_SMADToOVOL,Trd_of_SMADToOVOL,Prod_of_TGFB,Deg_of_TGFB,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_miR34,Deg_of_miR34,Prod_of_ZEB,Deg_of_ZEB,Prod_of_miR200,Deg_of_miR200,Prod_of_OVOL,Deg_of_OVOL,Prod_of_Wg,Deg_of_Wg,Prod_of_SMAD,Deg_of_SMAD)
TGFB = y(1);
SNAIL = y(2);
miR34 = y(3);
ZEB = y(4);
miR200 = y(5);
OVOL = y(6);
Wg = y(7);
SMAD = y(8);
HillsTGFB_SNAIL = (1 + (Act_of_TGFBToSNAIL - 1)*TGFB^Num_of_TGFBToSNAIL/(TGFB^Num_of_TGFBToSNAIL + Trd_of_TGFBToSNAIL^Num_of_TGFBToSNAIL))/Act_of_TGFBToSNAIL;
HillsSNAIL_SNAIL = 1 + (Inh_of_SNAILToSNAIL - 1)*SNAIL^Num_of_SNAILToSNAIL/(SNAIL^Num_of_SNAILToSNAIL + Trd_of_SNAILToSNAIL^Num_of_SNAILToSNAIL);
HillsSNAIL_miR34 = 1 + (Inh_of_SNAILTomiR34 - 1)*SNAIL^Num_of_SNAILTomiR34/(SNAIL^Num_of_SNAILTomiR34 + Trd_of_SNAILTomiR34^Num_of_SNAILTomiR34);
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsmiR34_SNAIL = 1 + (Inh_of_miR34ToSNAIL - 1)*miR34^Num_of_miR34ToSNAIL/(miR34^Num_of_miR34ToSNAIL + Trd_of_miR34ToSNAIL^Num_of_miR34ToSNAIL);
HillsZEB_miR34 = 1 + (Inh_of_ZEBTomiR34 - 1)*ZEB^Num_of_ZEBTomiR34/(ZEB^Num_of_ZEBTomiR34 + Trd_of_ZEBTomiR34^Num_of_ZEBTomiR34);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsZEB_OVOL = 1 + (Inh_of_ZEBToOVOL - 1)*ZEB^Num_of_ZEBToOVOL/(ZEB^Num_of_ZEBToOVOL + Trd_of_ZEBToOVOL^Num_of_ZEBToOVOL);
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsOVOL_ZEB = 1 + (Inh_of_OVOLToZEB - 1)*OVOL^Num_of_OVOLToZEB/(OVOL^Num_of_OVOLToZEB + Trd_of_OVOLToZEB^Num_of_OVOLToZEB);
HillsOVOL_OVOL = 1 + (Inh_of_OVOLToOVOL - 1)*OVOL^Num_of_OVOLToOVOL/(OVOL^Num_of_OVOLToOVOL + Trd_of_OVOLToOVOL^Num_of_OVOLToOVOL);
HillsWg_OVOL = 1 + (Inh_of_WgToOVOL - 1)*Wg^Num_of_WgToOVOL/(Wg^Num_of_WgToOVOL + Trd_of_WgToOVOL^Num_of_WgToOVOL);
HillsSMAD_OVOL = (1 + (Act_of_SMADToOVOL - 1)*SMAD^Num_of_SMADToOVOL/(SMAD^Num_of_SMADToOVOL + Trd_of_SMADToOVOL^Num_of_SMADToOVOL))/Act_of_SMADToOVOL;
dydt = [Prod_of_TGFB - Deg_of_TGFB*TGFB
Prod_of_SNAIL*HillsTGFB_SNAIL*HillsSNAIL_SNAIL*HillsmiR34_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_miR34*HillsSNAIL_miR34*HillsZEB_miR34 - Deg_of_miR34*miR34
Prod_of_ZEB*HillsSNAIL_ZEB*HillsZEB_ZEB*HillsmiR200_ZEB*HillsOVOL_ZEB - Deg_of_ZEB*ZEB
Prod_of_miR200*HillsSNAIL_miR200*HillsZEB_miR200 - Deg_of_miR200*miR200
Prod_of_OVOL*HillsZEB_OVOL*HillsOVOL_OVOL*HillsWg_OVOL*HillsSMAD_OVOL - Deg_of_OVOL*OVOL
Prod_of_Wg - Deg_of_Wg*Wg
Prod_of_SMAD - Deg_of_SMAD*SMAD];
