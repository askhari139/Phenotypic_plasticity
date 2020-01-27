function dydt = NP63(t, y, Act_of_XToSNAIL,Num_of_XToSNAIL,Trd_of_XToSNAIL,Act_of_Np63ToSNAIL,Num_of_Np63ToSNAIL,Trd_of_Np63ToSNAIL,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Act_of_SNAILToZEB,Num_of_SNAILToZEB,Trd_of_SNAILToZEB,Inh_of_miR200ToZEB,Num_of_miR200ToZEB,Trd_of_miR200ToZEB,Inh_of_ZEBTomiR200,Num_of_ZEBTomiR200,Trd_of_ZEBTomiR200,Act_of_ZEBToZEB,Num_of_ZEBToZEB,Trd_of_ZEBToZEB,Inh_of_miR205ToZEB,Num_of_miR205ToZEB,Trd_of_miR205ToZEB,Act_of_Np63TomiR205,Num_of_Np63TomiR205,Trd_of_Np63TomiR205,Prod_of_X,Deg_of_X,Prod_of_Np63,Deg_of_Np63,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_miR200,Deg_of_miR200,Prod_of_ZEB,Deg_of_ZEB,Prod_of_miR205,Deg_of_miR205)
X = y(1);
Np63 = y(2);
SNAIL = y(3);
miR200 = y(4);
ZEB = y(5);
miR205 = y(6);
HillsX_SNAIL = (1 + (Act_of_XToSNAIL - 1)*X^Num_of_XToSNAIL/(X^Num_of_XToSNAIL + Trd_of_XToSNAIL^Num_of_XToSNAIL))/Act_of_XToSNAIL;
HillsNp63_SNAIL = (1 + (Act_of_Np63ToSNAIL - 1)*Np63^Num_of_Np63ToSNAIL/(Np63^Num_of_Np63ToSNAIL + Trd_of_Np63ToSNAIL^Num_of_Np63ToSNAIL))/Act_of_Np63ToSNAIL;
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsSNAIL_ZEB = (1 + (Act_of_SNAILToZEB - 1)*SNAIL^Num_of_SNAILToZEB/(SNAIL^Num_of_SNAILToZEB + Trd_of_SNAILToZEB^Num_of_SNAILToZEB))/Act_of_SNAILToZEB;
HillsmiR200_ZEB = 1 + (Inh_of_miR200ToZEB - 1)*miR200^Num_of_miR200ToZEB/(miR200^Num_of_miR200ToZEB + Trd_of_miR200ToZEB^Num_of_miR200ToZEB);
HillsZEB_miR200 = 1 + (Inh_of_ZEBTomiR200 - 1)*ZEB^Num_of_ZEBTomiR200/(ZEB^Num_of_ZEBTomiR200 + Trd_of_ZEBTomiR200^Num_of_ZEBTomiR200);
HillsZEB_ZEB = (1 + (Act_of_ZEBToZEB - 1)*ZEB^Num_of_ZEBToZEB/(ZEB^Num_of_ZEBToZEB + Trd_of_ZEBToZEB^Num_of_ZEBToZEB))/Act_of_ZEBToZEB;
HillsmiR205_ZEB = 1 + (Inh_of_miR205ToZEB - 1)*miR205^Num_of_miR205ToZEB/(miR205^Num_of_miR205ToZEB + Trd_of_miR205ToZEB^Num_of_miR205ToZEB);
HillsNp63_miR205 = (1 + (Act_of_Np63TomiR205 - 1)*Np63^Num_of_Np63TomiR205/(Np63^Num_of_Np63TomiR205 + Trd_of_Np63TomiR205^Num_of_Np63TomiR205))/Act_of_Np63TomiR205;
dydt = [Prod_of_X - Deg_of_X*X
Prod_of_Np63 - Deg_of_Np63*Np63
Prod_of_SNAIL*HillsX_SNAIL*HillsNp63_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_miR200*HillsSNAIL_miR200*HillsZEB_miR200 - Deg_of_miR200*miR200
Prod_of_ZEB*HillsSNAIL_ZEB*HillsmiR200_ZEB*HillsZEB_ZEB*HillsmiR205_ZEB - Deg_of_ZEB*ZEB
Prod_of_miR205*HillsNp63_miR205 - Deg_of_miR205*miR205];
