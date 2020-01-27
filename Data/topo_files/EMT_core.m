function dydt = EMT_core(t, y, Act_of_exTGFBToSNAIL,Num_of_exTGFBToSNAIL,Trd_of_exTGFBToSNAIL,Act_of_SNAILToZEB1,Num_of_SNAILToZEB1,Trd_of_SNAILToZEB1,Inh_of_SNAILToSNAIL,Num_of_SNAILToSNAIL,Trd_of_SNAILToSNAIL,Act_of_ZEB1ToZEB1,Num_of_ZEB1ToZEB1,Trd_of_ZEB1ToZEB1,Inh_of_ZEB1TomiR200,Num_of_ZEB1TomiR200,Trd_of_ZEB1TomiR200,Inh_of_miR200ToZEB1,Num_of_miR200ToZEB1,Trd_of_miR200ToZEB1,Inh_of_SNAILTomiR200,Num_of_SNAILTomiR200,Trd_of_SNAILTomiR200,Inh_of_ZEB1TomiR34,Num_of_ZEB1TomiR34,Trd_of_ZEB1TomiR34,Inh_of_miR34ToSNAIL,Num_of_miR34ToSNAIL,Trd_of_miR34ToSNAIL,Inh_of_SNAILTomiR34,Num_of_SNAILTomiR34,Trd_of_SNAILTomiR34,Inh_of_miR200ToTGFB,Num_of_miR200ToTGFB,Trd_of_miR200ToTGFB,Act_of_TGFBToSNAIL,Num_of_TGFBToSNAIL,Trd_of_TGFBToSNAIL,Prod_of_exTGFB,Deg_of_exTGFB,Prod_of_SNAIL,Deg_of_SNAIL,Prod_of_ZEB1,Deg_of_ZEB1,Prod_of_miR200,Deg_of_miR200,Prod_of_miR34,Deg_of_miR34,Prod_of_TGFB,Deg_of_TGFB)
exTGFB = y(1);
SNAIL = y(2);
ZEB1 = y(3);
miR200 = y(4);
miR34 = y(5);
TGFB = y(6);
HillsexTGFB_SNAIL = (1 + (Act_of_exTGFBToSNAIL - 1)*exTGFB^Num_of_exTGFBToSNAIL/(exTGFB^Num_of_exTGFBToSNAIL + Trd_of_exTGFBToSNAIL^Num_of_exTGFBToSNAIL))/Act_of_exTGFBToSNAIL;
HillsSNAIL_ZEB1 = (1 + (Act_of_SNAILToZEB1 - 1)*SNAIL^Num_of_SNAILToZEB1/(SNAIL^Num_of_SNAILToZEB1 + Trd_of_SNAILToZEB1^Num_of_SNAILToZEB1))/Act_of_SNAILToZEB1;
HillsSNAIL_SNAIL = 1 + (Inh_of_SNAILToSNAIL - 1)*SNAIL^Num_of_SNAILToSNAIL/(SNAIL^Num_of_SNAILToSNAIL + Trd_of_SNAILToSNAIL^Num_of_SNAILToSNAIL);
HillsZEB1_ZEB1 = (1 + (Act_of_ZEB1ToZEB1 - 1)*ZEB1^Num_of_ZEB1ToZEB1/(ZEB1^Num_of_ZEB1ToZEB1 + Trd_of_ZEB1ToZEB1^Num_of_ZEB1ToZEB1))/Act_of_ZEB1ToZEB1;
HillsZEB1_miR200 = 1 + (Inh_of_ZEB1TomiR200 - 1)*ZEB1^Num_of_ZEB1TomiR200/(ZEB1^Num_of_ZEB1TomiR200 + Trd_of_ZEB1TomiR200^Num_of_ZEB1TomiR200);
HillsmiR200_ZEB1 = 1 + (Inh_of_miR200ToZEB1 - 1)*miR200^Num_of_miR200ToZEB1/(miR200^Num_of_miR200ToZEB1 + Trd_of_miR200ToZEB1^Num_of_miR200ToZEB1);
HillsSNAIL_miR200 = 1 + (Inh_of_SNAILTomiR200 - 1)*SNAIL^Num_of_SNAILTomiR200/(SNAIL^Num_of_SNAILTomiR200 + Trd_of_SNAILTomiR200^Num_of_SNAILTomiR200);
HillsZEB1_miR34 = 1 + (Inh_of_ZEB1TomiR34 - 1)*ZEB1^Num_of_ZEB1TomiR34/(ZEB1^Num_of_ZEB1TomiR34 + Trd_of_ZEB1TomiR34^Num_of_ZEB1TomiR34);
HillsmiR34_SNAIL = 1 + (Inh_of_miR34ToSNAIL - 1)*miR34^Num_of_miR34ToSNAIL/(miR34^Num_of_miR34ToSNAIL + Trd_of_miR34ToSNAIL^Num_of_miR34ToSNAIL);
HillsSNAIL_miR34 = 1 + (Inh_of_SNAILTomiR34 - 1)*SNAIL^Num_of_SNAILTomiR34/(SNAIL^Num_of_SNAILTomiR34 + Trd_of_SNAILTomiR34^Num_of_SNAILTomiR34);
HillsmiR200_TGFB = 1 + (Inh_of_miR200ToTGFB - 1)*miR200^Num_of_miR200ToTGFB/(miR200^Num_of_miR200ToTGFB + Trd_of_miR200ToTGFB^Num_of_miR200ToTGFB);
HillsTGFB_SNAIL = (1 + (Act_of_TGFBToSNAIL - 1)*TGFB^Num_of_TGFBToSNAIL/(TGFB^Num_of_TGFBToSNAIL + Trd_of_TGFBToSNAIL^Num_of_TGFBToSNAIL))/Act_of_TGFBToSNAIL;
dydt = [Prod_of_exTGFB - Deg_of_exTGFB*exTGFB
Prod_of_SNAIL*HillsexTGFB_SNAIL*HillsSNAIL_SNAIL*HillsmiR34_SNAIL*HillsTGFB_SNAIL - Deg_of_SNAIL*SNAIL
Prod_of_ZEB1*HillsSNAIL_ZEB1*HillsZEB1_ZEB1*HillsmiR200_ZEB1 - Deg_of_ZEB1*ZEB1
Prod_of_miR200*HillsZEB1_miR200*HillsSNAIL_miR200 - Deg_of_miR200*miR200
Prod_of_miR34*HillsZEB1_miR34*HillsSNAIL_miR34 - Deg_of_miR34*miR34
Prod_of_TGFB*HillsmiR200_TGFB - Deg_of_TGFB*TGFB];
