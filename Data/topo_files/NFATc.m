function dydt = NFATc(t, y, Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Act_of_NFATcToNFATc,Num_of_NFATcToNFATc,Trd_of_NFATcToNFATc,Act_of_NFATcTomiR200,Num_of_NFATcTomiR200,Trd_of_NFATcTomiR200,Act_of_NFATcToECAD,Num_of_NFATcToECAD,Trd_of_NFATcToECAD,Act_of_NFATcToZEB,Num_of_NFATcToZEB,Trd_of_NFATcToZEB,Inh_of_ECADToZEB,Num_of_ECADToZEB,Trd_of_ECADToZEB,Inh_of_ZEBToECAD,Num_of_ZEBToECAD,Trd_of_ZEBToECAD,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_ZEB,Deg_of_ZEB,Prod_of_miR200,Deg_of_miR200,Prod_of_NFATc,Deg_of_NFATc,Prod_of_ECAD,Deg_of_ECAD)
SNAIL = y(1);
ZEB = y(2);
miR200 = y(3);
NFATc = y(4);
ECAD = y(5);
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsNFATc_NFATc = (1 + (Act_of_NFATcToNFATc - 1)*NFATc^Num_of_NFATcToNFATc/(NFATc^Num_of_NFATcToNFATc + Trd_of_NFATcToNFATc^Num_of_NFATcToNFATc))/Act_of_NFATcToNFATc;
HillsNFATc_miR200 = (1 + (Act_of_NFATcTomiR200 - 1)*NFATc^Num_of_NFATcTomiR200/(NFATc^Num_of_NFATcTomiR200 + Trd_of_NFATcTomiR200^Num_of_NFATcTomiR200))/Act_of_NFATcTomiR200;
HillsNFATc_ECAD = (1 + (Act_of_NFATcToECAD - 1)*NFATc^Num_of_NFATcToECAD/(NFATc^Num_of_NFATcToECAD + Trd_of_NFATcToECAD^Num_of_NFATcToECAD))/Act_of_NFATcToECAD;
HillsNFATc_ZEB = (1 + (Act_of_NFATcToZEB - 1)*NFATc^Num_of_NFATcToZEB/(NFATc^Num_of_NFATcToZEB + Trd_of_NFATcToZEB^Num_of_NFATcToZEB))/Act_of_NFATcToZEB;
HillsECAD_ZEB = 1 + (Inh_of_ECADToZEB - 1)*ECAD^Num_of_ECADToZEB/(ECAD^Num_of_ECADToZEB + Trd_of_ECADToZEB^Num_of_ECADToZEB);
HillsZEB_ECAD = 1 + (Inh_of_ZEBToECAD - 1)*ZEB^Num_of_ZEBToECAD/(ZEB^Num_of_ZEBToECAD + Trd_of_ZEBToECAD^Num_of_ZEBToECAD);
dydt = [Prod_of_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_ZEB*HillsSNAIL_ZEB*HillsZEB_ZEB*HillsmiR200_ZEB*HillsNFATc_ZEB*HillsECAD_ZEB - Deg_of_ZEB*ZEB
Prod_of_miR200*HillsSNAIL_miR200*HillsZEB_miR200*HillsNFATc_miR200 - Deg_of_miR200*miR200
Prod_of_NFATc*HillsNFATc_NFATc - Deg_of_NFATc*NFATc
Prod_of_ECAD*HillsNFATc_ECAD*HillsZEB_ECAD - Deg_of_ECAD*ECAD];
