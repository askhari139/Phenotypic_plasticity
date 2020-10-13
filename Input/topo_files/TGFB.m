function dydt = TGFB(t, y, Act_of_Ex_TGFBToSNAIL1,Num_of_Ex_TGFBToSNAIL1,Trd_of_Ex_TGFBToSNAIL1,Act_of_TGFBToSNAIL1,Num_of_TGFBToSNAIL1,Trd_of_TGFBToSNAIL1,Inh_of_miR190ToTGFB,Num_of_miR190ToTGFB,Trd_of_miR190ToTGFB,Inh_of_SNAIL1ToSNAIL1,Num_of_SNAIL1ToSNAIL1,Trd_of_SNAIL1ToSNAIL1,Inh_of_miR34ToSNAIL1,Num_of_miR34ToSNAIL1,Trd_of_miR34ToSNAIL1,Inh_of_SNAIL1TomiR34,Num_of_SNAIL1TomiR34,Trd_of_SNAIL1TomiR34,Act_of_SNAIL1ToZEB1,Num_of_SNAIL1ToZEB1,Trd_of_SNAIL1ToZEB1,Inh_of_ZEB1TomiR340,Num_of_ZEB1TomiR340,Trd_of_ZEB1TomiR340,Inh_of_miR340ToZEB1,Num_of_miR340ToZEB1,Trd_of_miR340ToZEB1,Inh_of_ZEB1TomiR190,Num_of_ZEB1TomiR190,Trd_of_ZEB1TomiR190,Inh_of_SNAIL1TomiR200,Num_of_SNAIL1TomiR200,Trd_of_SNAIL1TomiR200,Inh_of_miR200ToTGFB,Num_of_miR200ToTGFB,Trd_of_miR200ToTGFB,Inh_of_miR200ToZEB1,Num_of_miR200ToZEB1,Trd_of_miR200ToZEB1,Inh_of_ZEB1TomiR200,Num_of_ZEB1TomiR200,Trd_of_ZEB1TomiR200,Inh_of_SNAIL1ToCDH1,Num_of_SNAIL1ToCDH1,Trd_of_SNAIL1ToCDH1,Inh_of_CD24ToZEB1,Num_of_CD24ToZEB1,Trd_of_CD24ToZEB1,Act_of_GRHL2ToCD24,Num_of_GRHL2ToCD24,Trd_of_GRHL2ToCD24,Inh_of_GRHL2ToZEB1,Num_of_GRHL2ToZEB1,Trd_of_GRHL2ToZEB1,Inh_of_ZEB1ToGRHL2,Num_of_ZEB1ToGRHL2,Trd_of_ZEB1ToGRHL2,Act_of_SNAIL1ToVIM,Num_of_SNAIL1ToVIM,Trd_of_SNAIL1ToVIM,Act_of_ZEB1ToVIM,Num_of_ZEB1ToVIM,Trd_of_ZEB1ToVIM,Inh_of_miR1199ToZEB1,Num_of_miR1199ToZEB1,Trd_of_miR1199ToZEB1,Inh_of_ZEB1TomiR1199,Num_of_ZEB1TomiR1199,Trd_of_ZEB1TomiR1199,Inh_of_ZEB1ToCDH1,Num_of_ZEB1ToCDH1,Trd_of_ZEB1ToCDH1,Inh_of_CDH1ToEMT,Num_of_CDH1ToEMT,Trd_of_CDH1ToEMT,Act_of_VIMToEMT,Num_of_VIMToEMT,Trd_of_VIMToEMT,Inh_of_ZEB1ToHAS2,Num_of_ZEB1ToHAS2,Trd_of_ZEB1ToHAS2,Act_of_HAS2ToHA,Num_of_HAS2ToHA,Trd_of_HAS2ToHA,Inh_of_ZEB1ToESRP1,Num_of_ZEB1ToESRP1,Trd_of_ZEB1ToESRP1,Inh_of_ESRP1ToCD44s,Num_of_ESRP1ToCD44s,Trd_of_ESRP1ToCD44s,Act_of_HAToZEB1,Num_of_HAToZEB1,Trd_of_HAToZEB1,Act_of_CD44sToZEB1,Num_of_CD44sToZEB1,Trd_of_CD44sToZEB1,Prod_of_Ex_TGFB,Deg_of_Ex_TGFB,Prod_of_TGFB,Deg_of_TGFB,Prod_of_miR190,Deg_of_miR190,Prod_of_SNAIL1,Deg_of_SNAIL1,Prod_of_miR34,Deg_of_miR34,Prod_of_ZEB1,Deg_of_ZEB1,Prod_of_miR340,Deg_of_miR340,Prod_of_miR200,Deg_of_miR200,Prod_of_CD24,Deg_of_CD24,Prod_of_GRHL2,Deg_of_GRHL2,Prod_of_miR1199,Deg_of_miR1199,Prod_of_CDH1,Deg_of_CDH1,Prod_of_VIM,Deg_of_VIM,Prod_of_HAS2,Deg_of_HAS2,Prod_of_ESRP1,Deg_of_ESRP1,Prod_of_HA,Deg_of_HA,Prod_of_CD44s,Deg_of_CD44s,Prod_of_EMT,Deg_of_EMT)
Ex_TGFB = y(1);
TGFB = y(2);
miR190 = y(3);
SNAIL1 = y(4);
miR34 = y(5);
ZEB1 = y(6);
miR340 = y(7);
miR200 = y(8);
CD24 = y(9);
GRHL2 = y(10);
miR1199 = y(11);
CDH1 = y(12);
VIM = y(13);
HAS2 = y(14);
ESRP1 = y(15);
HA = y(16);
CD44s = y(17);
EMT = y(18);
HillsEx_TGFB_SNAIL1 = (1 + (Act_of_Ex_TGFBToSNAIL1 - 1)*Ex_TGFB^Num_of_Ex_TGFBToSNAIL1/(Ex_TGFB^Num_of_Ex_TGFBToSNAIL1 + Trd_of_Ex_TGFBToSNAIL1^Num_of_Ex_TGFBToSNAIL1))/Act_of_Ex_TGFBToSNAIL1;
HillsTGFB_SNAIL1 = (1 + (Act_of_TGFBToSNAIL1 - 1)*TGFB^Num_of_TGFBToSNAIL1/(TGFB^Num_of_TGFBToSNAIL1 + Trd_of_TGFBToSNAIL1^Num_of_TGFBToSNAIL1))/Act_of_TGFBToSNAIL1;
HillsmiR190_TGFB = 1 + (Inh_of_miR190ToTGFB - 1)*miR190^Num_of_miR190ToTGFB/(miR190^Num_of_miR190ToTGFB + Trd_of_miR190ToTGFB^Num_of_miR190ToTGFB);
HillsSNAIL1_SNAIL1 = 1 + (Inh_of_SNAIL1ToSNAIL1 - 1)*SNAIL1^Num_of_SNAIL1ToSNAIL1/(SNAIL1^Num_of_SNAIL1ToSNAIL1 + Trd_of_SNAIL1ToSNAIL1^Num_of_SNAIL1ToSNAIL1);
HillsmiR34_SNAIL1 = 1 + (Inh_of_miR34ToSNAIL1 - 1)*miR34^Num_of_miR34ToSNAIL1/(miR34^Num_of_miR34ToSNAIL1 + Trd_of_miR34ToSNAIL1^Num_of_miR34ToSNAIL1);
HillsSNAIL1_miR34 = 1 + (Inh_of_SNAIL1TomiR34 - 1)*SNAIL1^Num_of_SNAIL1TomiR34/(SNAIL1^Num_of_SNAIL1TomiR34 + Trd_of_SNAIL1TomiR34^Num_of_SNAIL1TomiR34);
HillsSNAIL1_ZEB1 = (1 + (Act_of_SNAIL1ToZEB1 - 1)*SNAIL1^Num_of_SNAIL1ToZEB1/(SNAIL1^Num_of_SNAIL1ToZEB1 + Trd_of_SNAIL1ToZEB1^Num_of_SNAIL1ToZEB1))/Act_of_SNAIL1ToZEB1;
HillsZEB1_miR340 = 1 + (Inh_of_ZEB1TomiR340 - 1)*ZEB1^Num_of_ZEB1TomiR340/(ZEB1^Num_of_ZEB1TomiR340 + Trd_of_ZEB1TomiR340^Num_of_ZEB1TomiR340);
HillsmiR340_ZEB1 = 1 + (Inh_of_miR340ToZEB1 - 1)*miR340^Num_of_miR340ToZEB1/(miR340^Num_of_miR340ToZEB1 + Trd_of_miR340ToZEB1^Num_of_miR340ToZEB1);
HillsZEB1_miR190 = 1 + (Inh_of_ZEB1TomiR190 - 1)*ZEB1^Num_of_ZEB1TomiR190/(ZEB1^Num_of_ZEB1TomiR190 + Trd_of_ZEB1TomiR190^Num_of_ZEB1TomiR190);
HillsSNAIL1_miR200 = 1 + (Inh_of_SNAIL1TomiR200 - 1)*SNAIL1^Num_of_SNAIL1TomiR200/(SNAIL1^Num_of_SNAIL1TomiR200 + Trd_of_SNAIL1TomiR200^Num_of_SNAIL1TomiR200);
HillsmiR200_TGFB = 1 + (Inh_of_miR200ToTGFB - 1)*miR200^Num_of_miR200ToTGFB/(miR200^Num_of_miR200ToTGFB + Trd_of_miR200ToTGFB^Num_of_miR200ToTGFB);
HillsmiR200_ZEB1 = 1 + (Inh_of_miR200ToZEB1 - 1)*miR200^Num_of_miR200ToZEB1/(miR200^Num_of_miR200ToZEB1 + Trd_of_miR200ToZEB1^Num_of_miR200ToZEB1);
HillsZEB1_miR200 = 1 + (Inh_of_ZEB1TomiR200 - 1)*ZEB1^Num_of_ZEB1TomiR200/(ZEB1^Num_of_ZEB1TomiR200 + Trd_of_ZEB1TomiR200^Num_of_ZEB1TomiR200);
HillsSNAIL1_CDH1 = 1 + (Inh_of_SNAIL1ToCDH1 - 1)*SNAIL1^Num_of_SNAIL1ToCDH1/(SNAIL1^Num_of_SNAIL1ToCDH1 + Trd_of_SNAIL1ToCDH1^Num_of_SNAIL1ToCDH1);
HillsCD24_ZEB1 = 1 + (Inh_of_CD24ToZEB1 - 1)*CD24^Num_of_CD24ToZEB1/(CD24^Num_of_CD24ToZEB1 + Trd_of_CD24ToZEB1^Num_of_CD24ToZEB1);
HillsGRHL2_CD24 = (1 + (Act_of_GRHL2ToCD24 - 1)*GRHL2^Num_of_GRHL2ToCD24/(GRHL2^Num_of_GRHL2ToCD24 + Trd_of_GRHL2ToCD24^Num_of_GRHL2ToCD24))/Act_of_GRHL2ToCD24;
HillsGRHL2_ZEB1 = 1 + (Inh_of_GRHL2ToZEB1 - 1)*GRHL2^Num_of_GRHL2ToZEB1/(GRHL2^Num_of_GRHL2ToZEB1 + Trd_of_GRHL2ToZEB1^Num_of_GRHL2ToZEB1);
HillsZEB1_GRHL2 = 1 + (Inh_of_ZEB1ToGRHL2 - 1)*ZEB1^Num_of_ZEB1ToGRHL2/(ZEB1^Num_of_ZEB1ToGRHL2 + Trd_of_ZEB1ToGRHL2^Num_of_ZEB1ToGRHL2);
HillsSNAIL1_VIM = (1 + (Act_of_SNAIL1ToVIM - 1)*SNAIL1^Num_of_SNAIL1ToVIM/(SNAIL1^Num_of_SNAIL1ToVIM + Trd_of_SNAIL1ToVIM^Num_of_SNAIL1ToVIM))/Act_of_SNAIL1ToVIM;
HillsZEB1_VIM = (1 + (Act_of_ZEB1ToVIM - 1)*ZEB1^Num_of_ZEB1ToVIM/(ZEB1^Num_of_ZEB1ToVIM + Trd_of_ZEB1ToVIM^Num_of_ZEB1ToVIM))/Act_of_ZEB1ToVIM;
HillsmiR1199_ZEB1 = 1 + (Inh_of_miR1199ToZEB1 - 1)*miR1199^Num_of_miR1199ToZEB1/(miR1199^Num_of_miR1199ToZEB1 + Trd_of_miR1199ToZEB1^Num_of_miR1199ToZEB1);
HillsZEB1_miR1199 = 1 + (Inh_of_ZEB1TomiR1199 - 1)*ZEB1^Num_of_ZEB1TomiR1199/(ZEB1^Num_of_ZEB1TomiR1199 + Trd_of_ZEB1TomiR1199^Num_of_ZEB1TomiR1199);
HillsZEB1_CDH1 = 1 + (Inh_of_ZEB1ToCDH1 - 1)*ZEB1^Num_of_ZEB1ToCDH1/(ZEB1^Num_of_ZEB1ToCDH1 + Trd_of_ZEB1ToCDH1^Num_of_ZEB1ToCDH1);
HillsCDH1_EMT = 1 + (Inh_of_CDH1ToEMT - 1)*CDH1^Num_of_CDH1ToEMT/(CDH1^Num_of_CDH1ToEMT + Trd_of_CDH1ToEMT^Num_of_CDH1ToEMT);
HillsVIM_EMT = (1 + (Act_of_VIMToEMT - 1)*VIM^Num_of_VIMToEMT/(VIM^Num_of_VIMToEMT + Trd_of_VIMToEMT^Num_of_VIMToEMT))/Act_of_VIMToEMT;
HillsZEB1_HAS2 = 1 + (Inh_of_ZEB1ToHAS2 - 1)*ZEB1^Num_of_ZEB1ToHAS2/(ZEB1^Num_of_ZEB1ToHAS2 + Trd_of_ZEB1ToHAS2^Num_of_ZEB1ToHAS2);
HillsHAS2_HA = (1 + (Act_of_HAS2ToHA - 1)*HAS2^Num_of_HAS2ToHA/(HAS2^Num_of_HAS2ToHA + Trd_of_HAS2ToHA^Num_of_HAS2ToHA))/Act_of_HAS2ToHA;
HillsZEB1_ESRP1 = 1 + (Inh_of_ZEB1ToESRP1 - 1)*ZEB1^Num_of_ZEB1ToESRP1/(ZEB1^Num_of_ZEB1ToESRP1 + Trd_of_ZEB1ToESRP1^Num_of_ZEB1ToESRP1);
HillsESRP1_CD44s = 1 + (Inh_of_ESRP1ToCD44s - 1)*ESRP1^Num_of_ESRP1ToCD44s/(ESRP1^Num_of_ESRP1ToCD44s + Trd_of_ESRP1ToCD44s^Num_of_ESRP1ToCD44s);
HillsHA_ZEB1 = (1 + (Act_of_HAToZEB1 - 1)*HA^Num_of_HAToZEB1/(HA^Num_of_HAToZEB1 + Trd_of_HAToZEB1^Num_of_HAToZEB1))/Act_of_HAToZEB1;
HillsCD44s_ZEB1 = (1 + (Act_of_CD44sToZEB1 - 1)*CD44s^Num_of_CD44sToZEB1/(CD44s^Num_of_CD44sToZEB1 + Trd_of_CD44sToZEB1^Num_of_CD44sToZEB1))/Act_of_CD44sToZEB1;
dydt = [Prod_of_Ex_TGFB - Deg_of_Ex_TGFB*Ex_TGFB
Prod_of_TGFB*HillsmiR190_TGFB*HillsmiR200_TGFB - Deg_of_TGFB*TGFB
Prod_of_miR190*HillsZEB1_miR190 - Deg_of_miR190*miR190
Prod_of_SNAIL1*HillsEx_TGFB_SNAIL1*HillsTGFB_SNAIL1*HillsSNAIL1_SNAIL1*HillsmiR34_SNAIL1 - Deg_of_SNAIL1*SNAIL1
Prod_of_miR34*HillsSNAIL1_miR34 - Deg_of_miR34*miR34
Prod_of_ZEB1*HillsSNAIL1_ZEB1*HillsmiR340_ZEB1*HillsmiR200_ZEB1*HillsCD24_ZEB1*HillsGRHL2_ZEB1*HillsmiR1199_ZEB1*HillsHA_ZEB1*HillsCD44s_ZEB1 - Deg_of_ZEB1*ZEB1
Prod_of_miR340*HillsZEB1_miR340 - Deg_of_miR340*miR340
Prod_of_miR200*HillsSNAIL1_miR200*HillsZEB1_miR200 - Deg_of_miR200*miR200
Prod_of_CD24*HillsGRHL2_CD24 - Deg_of_CD24*CD24
Prod_of_GRHL2*HillsZEB1_GRHL2 - Deg_of_GRHL2*GRHL2
Prod_of_miR1199*HillsZEB1_miR1199 - Deg_of_miR1199*miR1199
Prod_of_CDH1*HillsSNAIL1_CDH1*HillsZEB1_CDH1 - Deg_of_CDH1*CDH1
Prod_of_VIM*HillsSNAIL1_VIM*HillsZEB1_VIM - Deg_of_VIM*VIM
Prod_of_HAS2*HillsZEB1_HAS2 - Deg_of_HAS2*HAS2
Prod_of_ESRP1*HillsZEB1_ESRP1 - Deg_of_ESRP1*ESRP1
Prod_of_HA*HillsHAS2_HA - Deg_of_HA*HA
Prod_of_CD44s*HillsESRP1_CD44s - Deg_of_CD44s*CD44s
Prod_of_EMT*HillsCDH1_EMT*HillsVIM_EMT - Deg_of_EMT*EMT];
