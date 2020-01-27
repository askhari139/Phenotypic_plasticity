function dydt = EMT_RACIPE(t, y, Act_of_FOXC2ToZEB1,Num_of_FOXC2ToZEB1,Trd_of_FOXC2ToZEB1,Inh_of_KLF8ToCDH1,Num_of_KLF8ToCDH1,Trd_of_KLF8ToCDH1,Inh_of_miR-101ToKLF8,Num_of_miR-101ToKLF8,Trd_of_miR-101ToKLF8,Inh_of_miR-101ToZEB1,Num_of_miR-101ToZEB1,Trd_of_miR-101ToZEB1,Inh_of_miR-101ToZEB2,Num_of_miR-101ToZEB2,Trd_of_miR-101ToZEB2,Inh_of_miR-101ToSNAI1,Num_of_miR-101ToSNAI1,Trd_of_miR-101ToSNAI1,Inh_of_miR-141ToZEB1,Num_of_miR-141ToZEB1,Trd_of_miR-141ToZEB1,Inh_of_miR-141ToZEB2,Num_of_miR-141ToZEB2,Trd_of_miR-141ToZEB2,Inh_of_miR-141ToTGF-beta,Num_of_miR-141ToTGF-beta,Trd_of_miR-141ToTGF-beta,Inh_of_miR-200aToZEB1,Num_of_miR-200aToZEB1,Trd_of_miR-200aToZEB1,Inh_of_miR-200aToZEB2,Num_of_miR-200aToZEB2,Trd_of_miR-200aToZEB2,Inh_of_miR-200aToTGF-beta,Num_of_miR-200aToTGF-beta,Trd_of_miR-200aToTGF-beta,Inh_of_miR-200bToZEB1,Num_of_miR-200bToZEB1,Trd_of_miR-200bToZEB1,Inh_of_miR-200bToZEB2,Num_of_miR-200bToZEB2,Trd_of_miR-200bToZEB2,Inh_of_miR-200bToTGF-beta,Num_of_miR-200bToTGF-beta,Trd_of_miR-200bToTGF-beta,Inh_of_miR-200cToZEB1,Num_of_miR-200cToZEB1,Trd_of_miR-200cToZEB1,Inh_of_miR-200cToZEB2,Num_of_miR-200cToZEB2,Trd_of_miR-200cToZEB2,Inh_of_miR-200cToTGF-beta,Num_of_miR-200cToTGF-beta,Trd_of_miR-200cToTGF-beta,Inh_of_miR-205ToZEB1,Num_of_miR-205ToZEB1,Trd_of_miR-205ToZEB1,Inh_of_miR-205ToZEB2,Num_of_miR-205ToZEB2,Trd_of_miR-205ToZEB2,Inh_of_miR-30cToSNAI1,Num_of_miR-30cToSNAI1,Trd_of_miR-30cToSNAI1,Inh_of_miR-30cToSNAI2,Num_of_miR-30cToSNAI2,Trd_of_miR-30cToSNAI2,Inh_of_miR-30cToZEB2,Num_of_miR-30cToZEB2,Trd_of_miR-30cToZEB2,Inh_of_miR-34aToSNAI1,Num_of_miR-34aToSNAI1,Trd_of_miR-34aToSNAI1,Inh_of_miR-34aToSNAI2,Num_of_miR-34aToSNAI2,Trd_of_miR-34aToSNAI2,Inh_of_miR-34aToTWIST2,Num_of_miR-34aToTWIST2,Trd_of_miR-34aToTWIST2,Inh_of_miR-34aToZEB1,Num_of_miR-34aToZEB1,Trd_of_miR-34aToZEB1,Inh_of_miR-9ToCDH1,Num_of_miR-9ToCDH1,Trd_of_miR-9ToCDH1,Inh_of_miR-9ToZEB2,Num_of_miR-9ToZEB2,Trd_of_miR-9ToZEB2,Inh_of_SNAI1ToCDH1,Num_of_SNAI1ToCDH1,Trd_of_SNAI1ToCDH1,Act_of_SNAI1ToVIM,Num_of_SNAI1ToVIM,Trd_of_SNAI1ToVIM,Act_of_SNAI1ToFOXC2,Num_of_SNAI1ToFOXC2,Trd_of_SNAI1ToFOXC2,Inh_of_SNAI1ToSNAI1,Num_of_SNAI1ToSNAI1,Trd_of_SNAI1ToSNAI1,Act_of_SNAI1ToSNAI2,Num_of_SNAI1ToSNAI2,Trd_of_SNAI1ToSNAI2,Act_of_SNAI1ToTWIST1,Num_of_SNAI1ToTWIST1,Trd_of_SNAI1ToTWIST1,Act_of_SNAI1ToZEB1,Num_of_SNAI1ToZEB1,Trd_of_SNAI1ToZEB1,Act_of_SNAI1ToZEB2,Num_of_SNAI1ToZEB2,Trd_of_SNAI1ToZEB2,Inh_of_SNAI1TomiR-34a,Num_of_SNAI1TomiR-34a,Trd_of_SNAI1TomiR-34a,Inh_of_SNAI1TomiR-101,Num_of_SNAI1TomiR-101,Trd_of_SNAI1TomiR-101,Inh_of_SNAI2ToCDH1,Num_of_SNAI2ToCDH1,Trd_of_SNAI2ToCDH1,Act_of_SNAI2ToVIM,Num_of_SNAI2ToVIM,Trd_of_SNAI2ToVIM,Act_of_SNAI2ToSNAI2,Num_of_SNAI2ToSNAI2,Trd_of_SNAI2ToSNAI2,Act_of_SNAI2ToTWIST2,Num_of_SNAI2ToTWIST2,Trd_of_SNAI2ToTWIST2,Inh_of_SNAI2TomiR-101,Num_of_SNAI2TomiR-101,Trd_of_SNAI2TomiR-101,Inh_of_SNAI2TomiR-200b,Num_of_SNAI2TomiR-200b,Trd_of_SNAI2TomiR-200b,Inh_of_TCF3ToCDH1,Num_of_TCF3ToCDH1,Trd_of_TCF3ToCDH1,Inh_of_TWIST1ToCDH1,Num_of_TWIST1ToCDH1,Trd_of_TWIST1ToCDH1,Act_of_TWIST1ToVIM,Num_of_TWIST1ToVIM,Trd_of_TWIST1ToVIM,Act_of_TWIST1ToFOXC2,Num_of_TWIST1ToFOXC2,Trd_of_TWIST1ToFOXC2,Act_of_TWIST1ToSNAI1,Num_of_TWIST1ToSNAI1,Trd_of_TWIST1ToSNAI1,Act_of_TWIST1ToSNAI2,Num_of_TWIST1ToSNAI2,Trd_of_TWIST1ToSNAI2,Act_of_TWIST1ToTCF3,Num_of_TWIST1ToTCF3,Trd_of_TWIST1ToTCF3,Act_of_TWIST1ToZEB1,Num_of_TWIST1ToZEB1,Trd_of_TWIST1ToZEB1,Act_of_TWIST1ToZEB2,Num_of_TWIST1ToZEB2,Trd_of_TWIST1ToZEB2,Inh_of_TWIST2ToCDH1,Num_of_TWIST2ToCDH1,Trd_of_TWIST2ToCDH1,Act_of_TWIST2ToSNAI1,Num_of_TWIST2ToSNAI1,Trd_of_TWIST2ToSNAI1,Act_of_TWIST2ToSNAI2,Num_of_TWIST2ToSNAI2,Trd_of_TWIST2ToSNAI2,Act_of_TWIST2ToTWIST1,Num_of_TWIST2ToTWIST1,Trd_of_TWIST2ToTWIST1,Act_of_TWIST2ToZEB1,Num_of_TWIST2ToZEB1,Trd_of_TWIST2ToZEB1,Act_of_TWIST2ToZEB2,Num_of_TWIST2ToZEB2,Trd_of_TWIST2ToZEB2,Inh_of_ZEB1ToCDH1,Num_of_ZEB1ToCDH1,Trd_of_ZEB1ToCDH1,Act_of_ZEB1ToVIM,Num_of_ZEB1ToVIM,Trd_of_ZEB1ToVIM,Inh_of_ZEB1TomiR-141,Num_of_ZEB1TomiR-141,Trd_of_ZEB1TomiR-141,Inh_of_ZEB1TomiR-200b,Num_of_ZEB1TomiR-200b,Trd_of_ZEB1TomiR-200b,Inh_of_ZEB1TomiR-200c,Num_of_ZEB1TomiR-200c,Trd_of_ZEB1TomiR-200c,Inh_of_ZEB1TomiR-200a,Num_of_ZEB1TomiR-200a,Trd_of_ZEB1TomiR-200a,Inh_of_ZEB1TomiR-34a,Num_of_ZEB1TomiR-34a,Trd_of_ZEB1TomiR-34a,Act_of_ZEB1ToZEB1,Num_of_ZEB1ToZEB1,Trd_of_ZEB1ToZEB1,Inh_of_ZEB2ToCDH1,Num_of_ZEB2ToCDH1,Trd_of_ZEB2ToCDH1,Act_of_ZEB2ToVIM,Num_of_ZEB2ToVIM,Trd_of_ZEB2ToVIM,Inh_of_ZEB2TomiR-200b,Num_of_ZEB2TomiR-200b,Trd_of_ZEB2TomiR-200b,Inh_of_ZEB2TomiR-200c,Num_of_ZEB2TomiR-200c,Trd_of_ZEB2TomiR-200c,Inh_of_ZEB2TomiR-200a,Num_of_ZEB2TomiR-200a,Trd_of_ZEB2TomiR-200a,Act_of_ZEB2ToZEB2,Num_of_ZEB2ToZEB2,Trd_of_ZEB2ToZEB2,Act_of_GSCToSNAI1,Num_of_GSCToSNAI1,Trd_of_GSCToSNAI1,Act_of_GSCToTWIST1,Num_of_GSCToTWIST1,Trd_of_GSCToTWIST1,Act_of_GSCToFOXC2,Num_of_GSCToFOXC2,Trd_of_GSCToFOXC2,Act_of_GSCToZEB1,Num_of_GSCToZEB1,Trd_of_GSCToZEB1,Act_of_GSCToZEB2,Num_of_GSCToZEB2,Trd_of_GSCToZEB2,Act_of_TGF-betaToGSC,Num_of_TGF-betaToGSC,Trd_of_TGF-betaToGSC,Act_of_TGF-betaToSNAI1,Num_of_TGF-betaToSNAI1,Trd_of_TGF-betaToSNAI1,Act_of_TGF-betaToSNAI2,Num_of_TGF-betaToSNAI2,Trd_of_TGF-betaToSNAI2,Prod_of_FOXC2,Deg_of_FOXC2,Prod_of_KLF8,Deg_of_KLF8,Prod_of_miR-101,Deg_of_miR-101,Prod_of_miR-141,Deg_of_miR-141,Prod_of_miR-200a,Deg_of_miR-200a,Prod_of_miR-200b,Deg_of_miR-200b,Prod_of_miR-200c,Deg_of_miR-200c,Prod_of_miR-205,Deg_of_miR-205,Prod_of_miR-30c,Deg_of_miR-30c,Prod_of_miR-34a,Deg_of_miR-34a,Prod_of_miR-9,Deg_of_miR-9,Prod_of_SNAI1,Deg_of_SNAI1,Prod_of_SNAI2,Deg_of_SNAI2,Prod_of_TCF3,Deg_of_TCF3,Prod_of_TWIST1,Deg_of_TWIST1,Prod_of_TWIST2,Deg_of_TWIST2,Prod_of_ZEB1,Deg_of_ZEB1,Prod_of_ZEB2,Deg_of_ZEB2,Prod_of_GSC,Deg_of_GSC,Prod_of_TGF-beta,Deg_of_TGF-beta,Prod_of_CDH1,Deg_of_CDH1,Prod_of_VIM,Deg_of_VIM)
FOXC2 = y(1);
KLF8 = y(2);
miR-101 = y(3);
miR-141 = y(4);
miR-200a = y(5);
miR-200b = y(6);
miR-200c = y(7);
miR-205 = y(8);
miR-30c = y(9);
miR-34a = y(10);
miR-9 = y(11);
SNAI1 = y(12);
SNAI2 = y(13);
TCF3 = y(14);
TWIST1 = y(15);
TWIST2 = y(16);
ZEB1 = y(17);
ZEB2 = y(18);
GSC = y(19);
TGF-beta = y(20);
CDH1 = y(21);
VIM = y(22);
HillsFOXC2_ZEB1 = (1 + (Act_of_FOXC2ToZEB1 - 1)*FOXC2^Num_of_FOXC2ToZEB1/(FOXC2^Num_of_FOXC2ToZEB1 + Trd_of_FOXC2ToZEB1^Num_of_FOXC2ToZEB1))/Act_of_FOXC2ToZEB1;
HillsKLF8_CDH1 = 1 + (Inh_of_KLF8ToCDH1 - 1)*KLF8^Num_of_KLF8ToCDH1/(KLF8^Num_of_KLF8ToCDH1 + Trd_of_KLF8ToCDH1^Num_of_KLF8ToCDH1);
HillsmiR-101_KLF8 = 1 + (Inh_of_miR-101ToKLF8 - 1)*miR-101^Num_of_miR-101ToKLF8/(miR-101^Num_of_miR-101ToKLF8 + Trd_of_miR-101ToKLF8^Num_of_miR-101ToKLF8);
HillsmiR-101_ZEB1 = 1 + (Inh_of_miR-101ToZEB1 - 1)*miR-101^Num_of_miR-101ToZEB1/(miR-101^Num_of_miR-101ToZEB1 + Trd_of_miR-101ToZEB1^Num_of_miR-101ToZEB1);
HillsmiR-101_ZEB2 = 1 + (Inh_of_miR-101ToZEB2 - 1)*miR-101^Num_of_miR-101ToZEB2/(miR-101^Num_of_miR-101ToZEB2 + Trd_of_miR-101ToZEB2^Num_of_miR-101ToZEB2);
HillsmiR-101_SNAI1 = 1 + (Inh_of_miR-101ToSNAI1 - 1)*miR-101^Num_of_miR-101ToSNAI1/(miR-101^Num_of_miR-101ToSNAI1 + Trd_of_miR-101ToSNAI1^Num_of_miR-101ToSNAI1);
HillsmiR-141_ZEB1 = 1 + (Inh_of_miR-141ToZEB1 - 1)*miR-141^Num_of_miR-141ToZEB1/(miR-141^Num_of_miR-141ToZEB1 + Trd_of_miR-141ToZEB1^Num_of_miR-141ToZEB1);
HillsmiR-141_ZEB2 = 1 + (Inh_of_miR-141ToZEB2 - 1)*miR-141^Num_of_miR-141ToZEB2/(miR-141^Num_of_miR-141ToZEB2 + Trd_of_miR-141ToZEB2^Num_of_miR-141ToZEB2);
HillsmiR-141_TGF-beta = 1 + (Inh_of_miR-141ToTGF-beta - 1)*miR-141^Num_of_miR-141ToTGF-beta/(miR-141^Num_of_miR-141ToTGF-beta + Trd_of_miR-141ToTGF-beta^Num_of_miR-141ToTGF-beta);
HillsmiR-200a_ZEB1 = 1 + (Inh_of_miR-200aToZEB1 - 1)*miR-200a^Num_of_miR-200aToZEB1/(miR-200a^Num_of_miR-200aToZEB1 + Trd_of_miR-200aToZEB1^Num_of_miR-200aToZEB1);
HillsmiR-200a_ZEB2 = 1 + (Inh_of_miR-200aToZEB2 - 1)*miR-200a^Num_of_miR-200aToZEB2/(miR-200a^Num_of_miR-200aToZEB2 + Trd_of_miR-200aToZEB2^Num_of_miR-200aToZEB2);
HillsmiR-200a_TGF-beta = 1 + (Inh_of_miR-200aToTGF-beta - 1)*miR-200a^Num_of_miR-200aToTGF-beta/(miR-200a^Num_of_miR-200aToTGF-beta + Trd_of_miR-200aToTGF-beta^Num_of_miR-200aToTGF-beta);
HillsmiR-200b_ZEB1 = 1 + (Inh_of_miR-200bToZEB1 - 1)*miR-200b^Num_of_miR-200bToZEB1/(miR-200b^Num_of_miR-200bToZEB1 + Trd_of_miR-200bToZEB1^Num_of_miR-200bToZEB1);
HillsmiR-200b_ZEB2 = 1 + (Inh_of_miR-200bToZEB2 - 1)*miR-200b^Num_of_miR-200bToZEB2/(miR-200b^Num_of_miR-200bToZEB2 + Trd_of_miR-200bToZEB2^Num_of_miR-200bToZEB2);
HillsmiR-200b_TGF-beta = 1 + (Inh_of_miR-200bToTGF-beta - 1)*miR-200b^Num_of_miR-200bToTGF-beta/(miR-200b^Num_of_miR-200bToTGF-beta + Trd_of_miR-200bToTGF-beta^Num_of_miR-200bToTGF-beta);
HillsmiR-200c_ZEB1 = 1 + (Inh_of_miR-200cToZEB1 - 1)*miR-200c^Num_of_miR-200cToZEB1/(miR-200c^Num_of_miR-200cToZEB1 + Trd_of_miR-200cToZEB1^Num_of_miR-200cToZEB1);
HillsmiR-200c_ZEB2 = 1 + (Inh_of_miR-200cToZEB2 - 1)*miR-200c^Num_of_miR-200cToZEB2/(miR-200c^Num_of_miR-200cToZEB2 + Trd_of_miR-200cToZEB2^Num_of_miR-200cToZEB2);
HillsmiR-200c_TGF-beta = 1 + (Inh_of_miR-200cToTGF-beta - 1)*miR-200c^Num_of_miR-200cToTGF-beta/(miR-200c^Num_of_miR-200cToTGF-beta + Trd_of_miR-200cToTGF-beta^Num_of_miR-200cToTGF-beta);
HillsmiR-205_ZEB1 = 1 + (Inh_of_miR-205ToZEB1 - 1)*miR-205^Num_of_miR-205ToZEB1/(miR-205^Num_of_miR-205ToZEB1 + Trd_of_miR-205ToZEB1^Num_of_miR-205ToZEB1);
HillsmiR-205_ZEB2 = 1 + (Inh_of_miR-205ToZEB2 - 1)*miR-205^Num_of_miR-205ToZEB2/(miR-205^Num_of_miR-205ToZEB2 + Trd_of_miR-205ToZEB2^Num_of_miR-205ToZEB2);
HillsmiR-30c_SNAI1 = 1 + (Inh_of_miR-30cToSNAI1 - 1)*miR-30c^Num_of_miR-30cToSNAI1/(miR-30c^Num_of_miR-30cToSNAI1 + Trd_of_miR-30cToSNAI1^Num_of_miR-30cToSNAI1);
HillsmiR-30c_SNAI2 = 1 + (Inh_of_miR-30cToSNAI2 - 1)*miR-30c^Num_of_miR-30cToSNAI2/(miR-30c^Num_of_miR-30cToSNAI2 + Trd_of_miR-30cToSNAI2^Num_of_miR-30cToSNAI2);
HillsmiR-30c_ZEB2 = 1 + (Inh_of_miR-30cToZEB2 - 1)*miR-30c^Num_of_miR-30cToZEB2/(miR-30c^Num_of_miR-30cToZEB2 + Trd_of_miR-30cToZEB2^Num_of_miR-30cToZEB2);
HillsmiR-34a_SNAI1 = 1 + (Inh_of_miR-34aToSNAI1 - 1)*miR-34a^Num_of_miR-34aToSNAI1/(miR-34a^Num_of_miR-34aToSNAI1 + Trd_of_miR-34aToSNAI1^Num_of_miR-34aToSNAI1);
HillsmiR-34a_SNAI2 = 1 + (Inh_of_miR-34aToSNAI2 - 1)*miR-34a^Num_of_miR-34aToSNAI2/(miR-34a^Num_of_miR-34aToSNAI2 + Trd_of_miR-34aToSNAI2^Num_of_miR-34aToSNAI2);
HillsmiR-34a_TWIST2 = 1 + (Inh_of_miR-34aToTWIST2 - 1)*miR-34a^Num_of_miR-34aToTWIST2/(miR-34a^Num_of_miR-34aToTWIST2 + Trd_of_miR-34aToTWIST2^Num_of_miR-34aToTWIST2);
HillsmiR-34a_ZEB1 = 1 + (Inh_of_miR-34aToZEB1 - 1)*miR-34a^Num_of_miR-34aToZEB1/(miR-34a^Num_of_miR-34aToZEB1 + Trd_of_miR-34aToZEB1^Num_of_miR-34aToZEB1);
HillsmiR-9_CDH1 = 1 + (Inh_of_miR-9ToCDH1 - 1)*miR-9^Num_of_miR-9ToCDH1/(miR-9^Num_of_miR-9ToCDH1 + Trd_of_miR-9ToCDH1^Num_of_miR-9ToCDH1);
HillsmiR-9_ZEB2 = 1 + (Inh_of_miR-9ToZEB2 - 1)*miR-9^Num_of_miR-9ToZEB2/(miR-9^Num_of_miR-9ToZEB2 + Trd_of_miR-9ToZEB2^Num_of_miR-9ToZEB2);
HillsSNAI1_CDH1 = 1 + (Inh_of_SNAI1ToCDH1 - 1)*SNAI1^Num_of_SNAI1ToCDH1/(SNAI1^Num_of_SNAI1ToCDH1 + Trd_of_SNAI1ToCDH1^Num_of_SNAI1ToCDH1);
HillsSNAI1_VIM = (1 + (Act_of_SNAI1ToVIM - 1)*SNAI1^Num_of_SNAI1ToVIM/(SNAI1^Num_of_SNAI1ToVIM + Trd_of_SNAI1ToVIM^Num_of_SNAI1ToVIM))/Act_of_SNAI1ToVIM;
HillsSNAI1_FOXC2 = (1 + (Act_of_SNAI1ToFOXC2 - 1)*SNAI1^Num_of_SNAI1ToFOXC2/(SNAI1^Num_of_SNAI1ToFOXC2 + Trd_of_SNAI1ToFOXC2^Num_of_SNAI1ToFOXC2))/Act_of_SNAI1ToFOXC2;
HillsSNAI1_SNAI1 = 1 + (Inh_of_SNAI1ToSNAI1 - 1)*SNAI1^Num_of_SNAI1ToSNAI1/(SNAI1^Num_of_SNAI1ToSNAI1 + Trd_of_SNAI1ToSNAI1^Num_of_SNAI1ToSNAI1);
HillsSNAI1_SNAI2 = (1 + (Act_of_SNAI1ToSNAI2 - 1)*SNAI1^Num_of_SNAI1ToSNAI2/(SNAI1^Num_of_SNAI1ToSNAI2 + Trd_of_SNAI1ToSNAI2^Num_of_SNAI1ToSNAI2))/Act_of_SNAI1ToSNAI2;
HillsSNAI1_TWIST1 = (1 + (Act_of_SNAI1ToTWIST1 - 1)*SNAI1^Num_of_SNAI1ToTWIST1/(SNAI1^Num_of_SNAI1ToTWIST1 + Trd_of_SNAI1ToTWIST1^Num_of_SNAI1ToTWIST1))/Act_of_SNAI1ToTWIST1;
HillsSNAI1_ZEB1 = (1 + (Act_of_SNAI1ToZEB1 - 1)*SNAI1^Num_of_SNAI1ToZEB1/(SNAI1^Num_of_SNAI1ToZEB1 + Trd_of_SNAI1ToZEB1^Num_of_SNAI1ToZEB1))/Act_of_SNAI1ToZEB1;
HillsSNAI1_ZEB2 = (1 + (Act_of_SNAI1ToZEB2 - 1)*SNAI1^Num_of_SNAI1ToZEB2/(SNAI1^Num_of_SNAI1ToZEB2 + Trd_of_SNAI1ToZEB2^Num_of_SNAI1ToZEB2))/Act_of_SNAI1ToZEB2;
HillsSNAI1_miR-34a = 1 + (Inh_of_SNAI1TomiR-34a - 1)*SNAI1^Num_of_SNAI1TomiR-34a/(SNAI1^Num_of_SNAI1TomiR-34a + Trd_of_SNAI1TomiR-34a^Num_of_SNAI1TomiR-34a);
HillsSNAI1_miR-101 = 1 + (Inh_of_SNAI1TomiR-101 - 1)*SNAI1^Num_of_SNAI1TomiR-101/(SNAI1^Num_of_SNAI1TomiR-101 + Trd_of_SNAI1TomiR-101^Num_of_SNAI1TomiR-101);
HillsSNAI2_CDH1 = 1 + (Inh_of_SNAI2ToCDH1 - 1)*SNAI2^Num_of_SNAI2ToCDH1/(SNAI2^Num_of_SNAI2ToCDH1 + Trd_of_SNAI2ToCDH1^Num_of_SNAI2ToCDH1);
HillsSNAI2_VIM = (1 + (Act_of_SNAI2ToVIM - 1)*SNAI2^Num_of_SNAI2ToVIM/(SNAI2^Num_of_SNAI2ToVIM + Trd_of_SNAI2ToVIM^Num_of_SNAI2ToVIM))/Act_of_SNAI2ToVIM;
HillsSNAI2_SNAI2 = (1 + (Act_of_SNAI2ToSNAI2 - 1)*SNAI2^Num_of_SNAI2ToSNAI2/(SNAI2^Num_of_SNAI2ToSNAI2 + Trd_of_SNAI2ToSNAI2^Num_of_SNAI2ToSNAI2))/Act_of_SNAI2ToSNAI2;
HillsSNAI2_TWIST2 = (1 + (Act_of_SNAI2ToTWIST2 - 1)*SNAI2^Num_of_SNAI2ToTWIST2/(SNAI2^Num_of_SNAI2ToTWIST2 + Trd_of_SNAI2ToTWIST2^Num_of_SNAI2ToTWIST2))/Act_of_SNAI2ToTWIST2;
HillsSNAI2_miR-101 = 1 + (Inh_of_SNAI2TomiR-101 - 1)*SNAI2^Num_of_SNAI2TomiR-101/(SNAI2^Num_of_SNAI2TomiR-101 + Trd_of_SNAI2TomiR-101^Num_of_SNAI2TomiR-101);
HillsSNAI2_miR-200b = 1 + (Inh_of_SNAI2TomiR-200b - 1)*SNAI2^Num_of_SNAI2TomiR-200b/(SNAI2^Num_of_SNAI2TomiR-200b + Trd_of_SNAI2TomiR-200b^Num_of_SNAI2TomiR-200b);
HillsTCF3_CDH1 = 1 + (Inh_of_TCF3ToCDH1 - 1)*TCF3^Num_of_TCF3ToCDH1/(TCF3^Num_of_TCF3ToCDH1 + Trd_of_TCF3ToCDH1^Num_of_TCF3ToCDH1);
HillsTWIST1_CDH1 = 1 + (Inh_of_TWIST1ToCDH1 - 1)*TWIST1^Num_of_TWIST1ToCDH1/(TWIST1^Num_of_TWIST1ToCDH1 + Trd_of_TWIST1ToCDH1^Num_of_TWIST1ToCDH1);
HillsTWIST1_VIM = (1 + (Act_of_TWIST1ToVIM - 1)*TWIST1^Num_of_TWIST1ToVIM/(TWIST1^Num_of_TWIST1ToVIM + Trd_of_TWIST1ToVIM^Num_of_TWIST1ToVIM))/Act_of_TWIST1ToVIM;
HillsTWIST1_FOXC2 = (1 + (Act_of_TWIST1ToFOXC2 - 1)*TWIST1^Num_of_TWIST1ToFOXC2/(TWIST1^Num_of_TWIST1ToFOXC2 + Trd_of_TWIST1ToFOXC2^Num_of_TWIST1ToFOXC2))/Act_of_TWIST1ToFOXC2;
HillsTWIST1_SNAI1 = (1 + (Act_of_TWIST1ToSNAI1 - 1)*TWIST1^Num_of_TWIST1ToSNAI1/(TWIST1^Num_of_TWIST1ToSNAI1 + Trd_of_TWIST1ToSNAI1^Num_of_TWIST1ToSNAI1))/Act_of_TWIST1ToSNAI1;
HillsTWIST1_SNAI2 = (1 + (Act_of_TWIST1ToSNAI2 - 1)*TWIST1^Num_of_TWIST1ToSNAI2/(TWIST1^Num_of_TWIST1ToSNAI2 + Trd_of_TWIST1ToSNAI2^Num_of_TWIST1ToSNAI2))/Act_of_TWIST1ToSNAI2;
HillsTWIST1_TCF3 = (1 + (Act_of_TWIST1ToTCF3 - 1)*TWIST1^Num_of_TWIST1ToTCF3/(TWIST1^Num_of_TWIST1ToTCF3 + Trd_of_TWIST1ToTCF3^Num_of_TWIST1ToTCF3))/Act_of_TWIST1ToTCF3;
HillsTWIST1_ZEB1 = (1 + (Act_of_TWIST1ToZEB1 - 1)*TWIST1^Num_of_TWIST1ToZEB1/(TWIST1^Num_of_TWIST1ToZEB1 + Trd_of_TWIST1ToZEB1^Num_of_TWIST1ToZEB1))/Act_of_TWIST1ToZEB1;
HillsTWIST1_ZEB2 = (1 + (Act_of_TWIST1ToZEB2 - 1)*TWIST1^Num_of_TWIST1ToZEB2/(TWIST1^Num_of_TWIST1ToZEB2 + Trd_of_TWIST1ToZEB2^Num_of_TWIST1ToZEB2))/Act_of_TWIST1ToZEB2;
HillsTWIST2_CDH1 = 1 + (Inh_of_TWIST2ToCDH1 - 1)*TWIST2^Num_of_TWIST2ToCDH1/(TWIST2^Num_of_TWIST2ToCDH1 + Trd_of_TWIST2ToCDH1^Num_of_TWIST2ToCDH1);
HillsTWIST2_SNAI1 = (1 + (Act_of_TWIST2ToSNAI1 - 1)*TWIST2^Num_of_TWIST2ToSNAI1/(TWIST2^Num_of_TWIST2ToSNAI1 + Trd_of_TWIST2ToSNAI1^Num_of_TWIST2ToSNAI1))/Act_of_TWIST2ToSNAI1;
HillsTWIST2_SNAI2 = (1 + (Act_of_TWIST2ToSNAI2 - 1)*TWIST2^Num_of_TWIST2ToSNAI2/(TWIST2^Num_of_TWIST2ToSNAI2 + Trd_of_TWIST2ToSNAI2^Num_of_TWIST2ToSNAI2))/Act_of_TWIST2ToSNAI2;
HillsTWIST2_TWIST1 = (1 + (Act_of_TWIST2ToTWIST1 - 1)*TWIST2^Num_of_TWIST2ToTWIST1/(TWIST2^Num_of_TWIST2ToTWIST1 + Trd_of_TWIST2ToTWIST1^Num_of_TWIST2ToTWIST1))/Act_of_TWIST2ToTWIST1;
HillsTWIST2_ZEB1 = (1 + (Act_of_TWIST2ToZEB1 - 1)*TWIST2^Num_of_TWIST2ToZEB1/(TWIST2^Num_of_TWIST2ToZEB1 + Trd_of_TWIST2ToZEB1^Num_of_TWIST2ToZEB1))/Act_of_TWIST2ToZEB1;
HillsTWIST2_ZEB2 = (1 + (Act_of_TWIST2ToZEB2 - 1)*TWIST2^Num_of_TWIST2ToZEB2/(TWIST2^Num_of_TWIST2ToZEB2 + Trd_of_TWIST2ToZEB2^Num_of_TWIST2ToZEB2))/Act_of_TWIST2ToZEB2;
HillsZEB1_CDH1 = 1 + (Inh_of_ZEB1ToCDH1 - 1)*ZEB1^Num_of_ZEB1ToCDH1/(ZEB1^Num_of_ZEB1ToCDH1 + Trd_of_ZEB1ToCDH1^Num_of_ZEB1ToCDH1);
HillsZEB1_VIM = (1 + (Act_of_ZEB1ToVIM - 1)*ZEB1^Num_of_ZEB1ToVIM/(ZEB1^Num_of_ZEB1ToVIM + Trd_of_ZEB1ToVIM^Num_of_ZEB1ToVIM))/Act_of_ZEB1ToVIM;
HillsZEB1_miR-141 = 1 + (Inh_of_ZEB1TomiR-141 - 1)*ZEB1^Num_of_ZEB1TomiR-141/(ZEB1^Num_of_ZEB1TomiR-141 + Trd_of_ZEB1TomiR-141^Num_of_ZEB1TomiR-141);
HillsZEB1_miR-200b = 1 + (Inh_of_ZEB1TomiR-200b - 1)*ZEB1^Num_of_ZEB1TomiR-200b/(ZEB1^Num_of_ZEB1TomiR-200b + Trd_of_ZEB1TomiR-200b^Num_of_ZEB1TomiR-200b);
HillsZEB1_miR-200c = 1 + (Inh_of_ZEB1TomiR-200c - 1)*ZEB1^Num_of_ZEB1TomiR-200c/(ZEB1^Num_of_ZEB1TomiR-200c + Trd_of_ZEB1TomiR-200c^Num_of_ZEB1TomiR-200c);
HillsZEB1_miR-200a = 1 + (Inh_of_ZEB1TomiR-200a - 1)*ZEB1^Num_of_ZEB1TomiR-200a/(ZEB1^Num_of_ZEB1TomiR-200a + Trd_of_ZEB1TomiR-200a^Num_of_ZEB1TomiR-200a);
HillsZEB1_miR-34a = 1 + (Inh_of_ZEB1TomiR-34a - 1)*ZEB1^Num_of_ZEB1TomiR-34a/(ZEB1^Num_of_ZEB1TomiR-34a + Trd_of_ZEB1TomiR-34a^Num_of_ZEB1TomiR-34a);
HillsZEB1_ZEB1 = (1 + (Act_of_ZEB1ToZEB1 - 1)*ZEB1^Num_of_ZEB1ToZEB1/(ZEB1^Num_of_ZEB1ToZEB1 + Trd_of_ZEB1ToZEB1^Num_of_ZEB1ToZEB1))/Act_of_ZEB1ToZEB1;
HillsZEB2_CDH1 = 1 + (Inh_of_ZEB2ToCDH1 - 1)*ZEB2^Num_of_ZEB2ToCDH1/(ZEB2^Num_of_ZEB2ToCDH1 + Trd_of_ZEB2ToCDH1^Num_of_ZEB2ToCDH1);
HillsZEB2_VIM = (1 + (Act_of_ZEB2ToVIM - 1)*ZEB2^Num_of_ZEB2ToVIM/(ZEB2^Num_of_ZEB2ToVIM + Trd_of_ZEB2ToVIM^Num_of_ZEB2ToVIM))/Act_of_ZEB2ToVIM;
HillsZEB2_miR-200b = 1 + (Inh_of_ZEB2TomiR-200b - 1)*ZEB2^Num_of_ZEB2TomiR-200b/(ZEB2^Num_of_ZEB2TomiR-200b + Trd_of_ZEB2TomiR-200b^Num_of_ZEB2TomiR-200b);
HillsZEB2_miR-200c = 1 + (Inh_of_ZEB2TomiR-200c - 1)*ZEB2^Num_of_ZEB2TomiR-200c/(ZEB2^Num_of_ZEB2TomiR-200c + Trd_of_ZEB2TomiR-200c^Num_of_ZEB2TomiR-200c);
HillsZEB2_miR-200a = 1 + (Inh_of_ZEB2TomiR-200a - 1)*ZEB2^Num_of_ZEB2TomiR-200a/(ZEB2^Num_of_ZEB2TomiR-200a + Trd_of_ZEB2TomiR-200a^Num_of_ZEB2TomiR-200a);
HillsZEB2_ZEB2 = (1 + (Act_of_ZEB2ToZEB2 - 1)*ZEB2^Num_of_ZEB2ToZEB2/(ZEB2^Num_of_ZEB2ToZEB2 + Trd_of_ZEB2ToZEB2^Num_of_ZEB2ToZEB2))/Act_of_ZEB2ToZEB2;
HillsGSC_SNAI1 = (1 + (Act_of_GSCToSNAI1 - 1)*GSC^Num_of_GSCToSNAI1/(GSC^Num_of_GSCToSNAI1 + Trd_of_GSCToSNAI1^Num_of_GSCToSNAI1))/Act_of_GSCToSNAI1;
HillsGSC_TWIST1 = (1 + (Act_of_GSCToTWIST1 - 1)*GSC^Num_of_GSCToTWIST1/(GSC^Num_of_GSCToTWIST1 + Trd_of_GSCToTWIST1^Num_of_GSCToTWIST1))/Act_of_GSCToTWIST1;
HillsGSC_FOXC2 = (1 + (Act_of_GSCToFOXC2 - 1)*GSC^Num_of_GSCToFOXC2/(GSC^Num_of_GSCToFOXC2 + Trd_of_GSCToFOXC2^Num_of_GSCToFOXC2))/Act_of_GSCToFOXC2;
HillsGSC_ZEB1 = (1 + (Act_of_GSCToZEB1 - 1)*GSC^Num_of_GSCToZEB1/(GSC^Num_of_GSCToZEB1 + Trd_of_GSCToZEB1^Num_of_GSCToZEB1))/Act_of_GSCToZEB1;
HillsGSC_ZEB2 = (1 + (Act_of_GSCToZEB2 - 1)*GSC^Num_of_GSCToZEB2/(GSC^Num_of_GSCToZEB2 + Trd_of_GSCToZEB2^Num_of_GSCToZEB2))/Act_of_GSCToZEB2;
HillsTGF-beta_GSC = (1 + (Act_of_TGF-betaToGSC - 1)*TGF-beta^Num_of_TGF-betaToGSC/(TGF-beta^Num_of_TGF-betaToGSC + Trd_of_TGF-betaToGSC^Num_of_TGF-betaToGSC))/Act_of_TGF-betaToGSC;
HillsTGF-beta_SNAI1 = (1 + (Act_of_TGF-betaToSNAI1 - 1)*TGF-beta^Num_of_TGF-betaToSNAI1/(TGF-beta^Num_of_TGF-betaToSNAI1 + Trd_of_TGF-betaToSNAI1^Num_of_TGF-betaToSNAI1))/Act_of_TGF-betaToSNAI1;
HillsTGF-beta_SNAI2 = (1 + (Act_of_TGF-betaToSNAI2 - 1)*TGF-beta^Num_of_TGF-betaToSNAI2/(TGF-beta^Num_of_TGF-betaToSNAI2 + Trd_of_TGF-betaToSNAI2^Num_of_TGF-betaToSNAI2))/Act_of_TGF-betaToSNAI2;
dydt = [Prod_of_FOXC2*HillsSNAI1_FOXC2*HillsTWIST1_FOXC2*HillsGSC_FOXC2 - Deg_of_FOXC2*FOXC2
Prod_of_KLF8*HillsmiR-101_KLF8 - Deg_of_KLF8*KLF8
Prod_of_miR-101*HillsSNAI1_miR-101*HillsSNAI2_miR-101 - Deg_of_miR-101*miR-101
Prod_of_miR-141*HillsZEB1_miR-141 - Deg_of_miR-141*miR-141
Prod_of_miR-200a*HillsZEB1_miR-200a*HillsZEB2_miR-200a - Deg_of_miR-200a*miR-200a
Prod_of_miR-200b*HillsSNAI2_miR-200b*HillsZEB1_miR-200b*HillsZEB2_miR-200b - Deg_of_miR-200b*miR-200b
Prod_of_miR-200c*HillsZEB1_miR-200c*HillsZEB2_miR-200c - Deg_of_miR-200c*miR-200c
Prod_of_miR-205 - Deg_of_miR-205*miR-205
Prod_of_miR-30c - Deg_of_miR-30c*miR-30c
Prod_of_miR-34a*HillsSNAI1_miR-34a*HillsZEB1_miR-34a - Deg_of_miR-34a*miR-34a
Prod_of_miR-9 - Deg_of_miR-9*miR-9
Prod_of_SNAI1*HillsmiR-101_SNAI1*HillsmiR-30c_SNAI1*HillsmiR-34a_SNAI1*HillsSNAI1_SNAI1*HillsTWIST1_SNAI1*HillsTWIST2_SNAI1*HillsGSC_SNAI1*HillsTGF-beta_SNAI1 - Deg_of_SNAI1*SNAI1
Prod_of_SNAI2*HillsmiR-30c_SNAI2*HillsmiR-34a_SNAI2*HillsSNAI1_SNAI2*HillsSNAI2_SNAI2*HillsTWIST1_SNAI2*HillsTWIST2_SNAI2*HillsTGF-beta_SNAI2 - Deg_of_SNAI2*SNAI2
Prod_of_TCF3*HillsTWIST1_TCF3 - Deg_of_TCF3*TCF3
Prod_of_TWIST1*HillsSNAI1_TWIST1*HillsTWIST2_TWIST1*HillsGSC_TWIST1 - Deg_of_TWIST1*TWIST1
Prod_of_TWIST2*HillsmiR-34a_TWIST2*HillsSNAI2_TWIST2 - Deg_of_TWIST2*TWIST2
Prod_of_ZEB1*HillsFOXC2_ZEB1*HillsmiR-101_ZEB1*HillsmiR-141_ZEB1*HillsmiR-200a_ZEB1*HillsmiR-200b_ZEB1*HillsmiR-200c_ZEB1*HillsmiR-205_ZEB1*HillsmiR-34a_ZEB1*HillsSNAI1_ZEB1*HillsTWIST1_ZEB1*HillsTWIST2_ZEB1*HillsZEB1_ZEB1*HillsGSC_ZEB1 - Deg_of_ZEB1*ZEB1
Prod_of_ZEB2*HillsmiR-101_ZEB2*HillsmiR-141_ZEB2*HillsmiR-200a_ZEB2*HillsmiR-200b_ZEB2*HillsmiR-200c_ZEB2*HillsmiR-205_ZEB2*HillsmiR-30c_ZEB2*HillsmiR-9_ZEB2*HillsSNAI1_ZEB2*HillsTWIST1_ZEB2*HillsTWIST2_ZEB2*HillsZEB2_ZEB2*HillsGSC_ZEB2 - Deg_of_ZEB2*ZEB2
Prod_of_GSC*HillsTGF-beta_GSC - Deg_of_GSC*GSC
Prod_of_TGF-beta*HillsmiR-141_TGF-beta*HillsmiR-200a_TGF-beta*HillsmiR-200b_TGF-beta*HillsmiR-200c_TGF-beta - Deg_of_TGF-beta*TGF-beta
Prod_of_CDH1*HillsKLF8_CDH1*HillsmiR-9_CDH1*HillsSNAI1_CDH1*HillsSNAI2_CDH1*HillsTCF3_CDH1*HillsTWIST1_CDH1*HillsTWIST2_CDH1*HillsZEB1_CDH1*HillsZEB2_CDH1 - Deg_of_CDH1*CDH1
Prod_of_VIM*HillsSNAI1_VIM*HillsSNAI2_VIM*HillsTWIST1_VIM*HillsZEB1_VIM*HillsZEB2_VIM - Deg_of_VIM*VIM];
