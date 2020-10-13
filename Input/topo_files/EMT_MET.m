function dydt = EMT_MET(t, y, Act_of_ILKToAKT,Num_of_ILKToAKT,Trd_of_ILKToAKT,Act_of_PI3KToAKT,Num_of_PI3KToAKT,Trd_of_PI3KToAKT,Act_of_AXIN2ToAXIN2,Num_of_AXIN2ToAXIN2,Trd_of_AXIN2ToAXIN2,Act_of_TCFLEFToAXIN2,Num_of_TCFLEFToAXIN2,Trd_of_TCFLEFToAXIN2,Act_of_TCFLEFToCD44,Num_of_TCFLEFToCD44,Trd_of_TCFLEFToCD44,Act_of_TGFRToCDC42,Num_of_TGFRToCDC42,Trd_of_TGFRToCDC42,Act_of_CHD1LToCDC42,Num_of_CHD1LToCDC42,Trd_of_CHD1LToCDC42,Act_of_NOTCHicToCsl,Num_of_NOTCHicToCsl,Trd_of_NOTCHicToCsl,Act_of_NFBToCsn,Num_of_NFBToCsn,Trd_of_NFBToCsn,Act_of_RASToDELTA,Num_of_RASToDELTA,Trd_of_RASToDELTA,Act_of_FrizzledToDSH,Num_of_FrizzledToDSH,Trd_of_FrizzledToDSH,Act_of_cateninnucToDestcompl,Num_of_cateninnucToDestcompl,Trd_of_cateninnucToDestcompl,Act_of_GSK3ToDestcompl,Num_of_GSK3ToDestcompl,Trd_of_GSK3ToDestcompl,Act_of_AXIN2ToDestcompl,Num_of_AXIN2ToDestcompl,Trd_of_AXIN2ToDestcompl,Act_of_DestcomplToDestcompl,Num_of_DestcomplToDestcompl,Trd_of_DestcomplToDestcompl,Act_of_KLF4ToEcadherin,Num_of_KLF4ToEcadherin,Trd_of_KLF4ToEcadherin,Act_of_cateninmembToEcadherin,Num_of_cateninmembToEcadherin,Trd_of_cateninmembToEcadherin,Inh_of_TWIST1ToEcadherin,Num_of_TWIST1ToEcadherin,Trd_of_TWIST1ToEcadherin,Inh_of_SNAI2ToEcadherin,Num_of_SNAI2ToEcadherin,Trd_of_SNAI2ToEcadherin,Inh_of_SNAI1ToEcadherin,Num_of_SNAI1ToEcadherin,Trd_of_SNAI1ToEcadherin,Inh_of_ZEB1ToEcadherin,Num_of_ZEB1ToEcadherin,Trd_of_ZEB1ToEcadherin,Inh_of_FOXC2ToEcadherin,Num_of_FOXC2ToEcadherin,Trd_of_FOXC2ToEcadherin,Inh_of_HEY1ToEcadherin,Num_of_HEY1ToEcadherin,Trd_of_HEY1ToEcadherin,Act_of_EGFToEGFR,Num_of_EGFToEGFR,Trd_of_EGFToEGFR,Act_of_cfosToEGR1,Num_of_cfosToEGR1,Trd_of_cfosToEGR1,Act_of_MEKToERK,Num_of_MEKToERK,Trd_of_MEKToERK,Act_of_FGFToFGFR,Num_of_FGFToFGFR,Trd_of_FGFToFGFR,Act_of_TWIST1ToFOXC2,Num_of_TWIST1ToFOXC2,Trd_of_TWIST1ToFOXC2,Act_of_SNAI1ToFOXC2,Num_of_SNAI1ToFOXC2,Trd_of_SNAI1ToFOXC2,Act_of_GoosecoidToFOXC2,Num_of_GoosecoidToFOXC2,Trd_of_GoosecoidToFOXC2,Act_of_SMOToFUS,Num_of_SMOToFUS,Trd_of_SMOToFUS,Act_of_WntToFrizzled,Num_of_WntToFrizzled,Trd_of_WntToFrizzled,Act_of_TCFLEFToGLI,Num_of_TCFLEFToGLI,Trd_of_TCFLEFToGLI,Inh_of_SUFUToGLI,Num_of_SUFUToGLI,Trd_of_SUFUToGLI,Inh_of_CsnToGSK3,Num_of_CsnToGSK3,Trd_of_CsnToGSK3,Inh_of_ERKToGSK3,Num_of_ERKToGSK3,Trd_of_ERKToGSK3,Inh_of_DestcomplToGSK3,Num_of_DestcomplToGSK3,Trd_of_DestcomplToGSK3,Inh_of_DSHToGSK3,Num_of_DSHToGSK3,Trd_of_DSHToGSK3,Inh_of_AKTToGSK3,Num_of_AKTToGSK3,Trd_of_AKTToGSK3,Act_of_CslToHEY1,Num_of_CslToHEY1,Trd_of_CslToHEY1,Act_of_SMADToHEY1,Num_of_SMADToHEY1,Trd_of_SMADToHEY1,Act_of_HypoxiaToHIF1,Num_of_HypoxiaToHIF1,Trd_of_HypoxiaToHIF1,Act_of_IGF1ToIGF1R,Num_of_IGF1ToIGF1R,Trd_of_IGF1ToIGF1R,Act_of_AKTToIKK,Num_of_AKTToIKK,Trd_of_AKTToIKK,Act_of_SMADToILK,Num_of_SMADToILK,Trd_of_SMADToILK,Act_of_LIFRToJAK,Num_of_LIFRToJAK,Trd_of_LIFRToJAK,Act_of_TCFLEFToJagged,Num_of_TCFLEFToJagged,Trd_of_TCFLEFToJagged,Act_of_SMADToJagged,Num_of_SMADToJagged,Trd_of_SMADToJagged,Act_of_STATToKLF4,Num_of_STATToKLF4,Trd_of_STATToKLF4,Inh_of_ZEB2ToKLF4,Num_of_ZEB2ToKLF4,Trd_of_ZEB2ToKLF4,Act_of_LIFToLIFR,Num_of_LIFToLIFR,Trd_of_LIFToLIFR,Act_of_STATToLIV1,Num_of_STATToLIV1,Trd_of_STATToLIV1,Act_of_HIF1ToLOXL23,Num_of_HIF1ToLOXL23,Trd_of_HIF1ToLOXL23,Act_of_RAFToMEK,Num_of_RAFToMEK,Trd_of_RAFToMEK,Act_of_SOSGRB2ToMEK,Num_of_SOSGRB2ToMEK,Trd_of_SOSGRB2ToMEK,Inh_of_RKIPToMEK,Num_of_RKIPToMEK,Trd_of_RKIPToMEK,Act_of_IKKToNFB,Num_of_IKKToNFB,Trd_of_IKKToNFB,Act_of_JaggedToNOTCH,Num_of_JaggedToNOTCH,Trd_of_JaggedToNOTCH,Act_of_DELTAToNOTCH,Num_of_DELTAToNOTCH,Trd_of_DELTAToNOTCH,Act_of_NOTCHToNOTCHic,Num_of_NOTCHToNOTCHic,Trd_of_NOTCHToNOTCHic,Act_of_CDC42ToPAK1,Num_of_CDC42ToPAK1,Trd_of_CDC42ToPAK1,Act_of_PDGFToPDGFR,Num_of_PDGFToPDGFR,Trd_of_PDGFToPDGFR,Act_of_RASToPI3K,Num_of_RASToPI3K,Trd_of_RASToPI3K,Act_of_LIFRToPI3K,Num_of_LIFRToPI3K,Trd_of_LIFRToPI3K,Inh_of_SHHToPatched,Num_of_SHHToPatched,Trd_of_SHHToPatched,Act_of_RASToRAF,Num_of_RASToRAF,Trd_of_RASToRAF,Act_of_SRCToRAS,Num_of_SRCToRAS,Trd_of_SRCToRAS,Act_of_SOSGRB2ToRAS,Num_of_SOSGRB2ToRAS,Trd_of_SOSGRB2ToRAS,Act_of_TCFLEFToRAS,Num_of_TCFLEFToRAS,Trd_of_TCFLEFToRAS,Inh_of_GSK3ToRAS,Num_of_GSK3ToRAS,Trd_of_GSK3ToRAS,Inh_of_SNAI1ToRKIP,Num_of_SNAI1ToRKIP,Trd_of_SNAI1ToRKIP,Inh_of_ERKToRKIP,Num_of_ERKToRKIP,Trd_of_ERKToRKIP,Act_of_GLIToSHH,Num_of_GLIToSHH,Trd_of_GLIToSHH,Act_of_SMADToSHH,Num_of_SMADToSHH,Trd_of_SMADToSHH,Act_of_TGFRToSMAD,Num_of_TGFRToSMAD,Trd_of_TGFRToSMAD,Act_of_ZEB1ToSMAD,Num_of_ZEB1ToSMAD,Trd_of_ZEB1ToSMAD,Act_of_ERKToSMAD,Num_of_ERKToSMAD,Trd_of_ERKToSMAD,Inh_of_ZEB2ToSMAD,Num_of_ZEB2ToSMAD,Trd_of_ZEB2ToSMAD,Inh_of_PatchedToSMO,Num_of_PatchedToSMO,Trd_of_PatchedToSMO,Act_of_LOXL23ToSNAI1,Num_of_LOXL23ToSNAI1,Trd_of_LOXL23ToSNAI1,Act_of_GLIToSNAI1,Num_of_GLIToSNAI1,Trd_of_GLIToSNAI1,Act_of_GoosecoidToSNAI1,Num_of_GoosecoidToSNAI1,Trd_of_GoosecoidToSNAI1,Act_of_LIV1ToSNAI1,Num_of_LIV1ToSNAI1,Trd_of_LIV1ToSNAI1,Act_of_CslToSNAI1,Num_of_CslToSNAI1,Trd_of_CslToSNAI1,Act_of_EGR1ToSNAI1,Num_of_EGR1ToSNAI1,Trd_of_EGR1ToSNAI1,Act_of_SMADToSNAI1,Num_of_SMADToSNAI1,Trd_of_SMADToSNAI1,Act_of_PAK1ToSNAI1,Num_of_PAK1ToSNAI1,Trd_of_PAK1ToSNAI1,Inh_of_GSK3ToSNAI1,Num_of_GSK3ToSNAI1,Trd_of_GSK3ToSNAI1,Inh_of_TrCPToSNAI1,Num_of_TrCPToSNAI1,Trd_of_TrCPToSNAI1,Act_of_cateninnucToSNAI2,Num_of_cateninnucToSNAI2,Trd_of_cateninnucToSNAI2,Act_of_SNAI2ToSNAI2,Num_of_SNAI2ToSNAI2,Trd_of_SNAI2ToSNAI2,Act_of_TWIST1ToSNAI2,Num_of_TWIST1ToSNAI2,Trd_of_TWIST1ToSNAI2,Act_of_ERKToSNAI2,Num_of_ERKToSNAI2,Trd_of_ERKToSNAI2,Act_of_TGFRToSOSGRB2,Num_of_TGFRToSOSGRB2,Trd_of_TGFRToSOSGRB2,Act_of_FGFRToSOSGRB2,Num_of_FGFRToSOSGRB2,Trd_of_FGFRToSOSGRB2,Act_of_cMetToSOSGRB2,Num_of_cMetToSOSGRB2,Trd_of_cMetToSOSGRB2,Act_of_IGF1RToSOSGRB2,Num_of_IGF1RToSOSGRB2,Trd_of_IGF1RToSOSGRB2,Act_of_PDGFRToSOSGRB2,Num_of_PDGFRToSOSGRB2,Trd_of_PDGFRToSOSGRB2,Act_of_EGFRToSOSGRB2,Num_of_EGFRToSOSGRB2,Trd_of_EGFRToSOSGRB2,Act_of_LIFRToSOSGRB2,Num_of_LIFRToSOSGRB2,Trd_of_LIFRToSOSGRB2,Inh_of_ERKToSOSGRB2,Num_of_ERKToSOSGRB2,Trd_of_ERKToSOSGRB2,Act_of_PDGFRToSRC,Num_of_PDGFRToSRC,Trd_of_PDGFRToSRC,Act_of_cMetToSRC,Num_of_cMetToSRC,Trd_of_cMetToSRC,Act_of_EGFRToSRC,Num_of_EGFRToSRC,Trd_of_EGFRToSRC,Act_of_IGF1RToSRC,Num_of_IGF1RToSRC,Trd_of_IGF1RToSRC,Act_of_FGFRToSRC,Num_of_FGFRToSRC,Trd_of_FGFRToSRC,Act_of_SRCToSTAT,Num_of_SRCToSTAT,Trd_of_SRCToSTAT,Act_of_JAKToSTAT,Num_of_JAKToSTAT,Trd_of_JAKToSTAT,Inh_of_FUSToSUFU,Num_of_FUSToSUFU,Trd_of_FUSToSUFU,Act_of_cateninnucToTCFLEF,Num_of_cateninnucToTCFLEF,Trd_of_cateninnucToTCFLEF,Act_of_TWIST1ToTGF,Num_of_TWIST1ToTGF,Trd_of_TWIST1ToTGF,Act_of_GLIToTGF,Num_of_GLIToTGF,Trd_of_GLIToTGF,Act_of_SNAI1ToTGF,Num_of_SNAI1ToTGF,Trd_of_SNAI1ToTGF,Act_of_GoosecoidToTGF,Num_of_GoosecoidToTGF,Trd_of_GoosecoidToTGF,Act_of_TGFToTGFR,Num_of_TGFToTGFR,Trd_of_TGFToTGFR,Act_of_HIF1ToTWIST1,Num_of_HIF1ToTWIST1,Trd_of_HIF1ToTWIST1,Act_of_SNAI1ToTWIST1,Num_of_SNAI1ToTWIST1,Trd_of_SNAI1ToTWIST1,Act_of_NFBToTWIST1,Num_of_NFBToTWIST1,Trd_of_NFBToTWIST1,Act_of_TCFLEFToTWIST1,Num_of_TCFLEFToTWIST1,Trd_of_TCFLEFToTWIST1,Act_of_GoosecoidToTWIST1,Num_of_GoosecoidToTWIST1,Trd_of_GoosecoidToTWIST1,Act_of_GLIToWnt,Num_of_GLIToWnt,Trd_of_GLIToWnt,Act_of_HIF1ToZEB1,Num_of_HIF1ToZEB1,Trd_of_HIF1ToZEB1,Act_of_SNAI1ToZEB1,Num_of_SNAI1ToZEB1,Trd_of_SNAI1ToZEB1,Act_of_GoosecoidToZEB1,Num_of_GoosecoidToZEB1,Trd_of_GoosecoidToZEB1,Inh_of_miR200ToZEB1,Num_of_miR200ToZEB1,Trd_of_miR200ToZEB1,Act_of_HIF1ToZEB2,Num_of_HIF1ToZEB2,Trd_of_HIF1ToZEB2,Act_of_SNAI1ToZEB2,Num_of_SNAI1ToZEB2,Trd_of_SNAI1ToZEB2,Act_of_GoosecoidToZEB2,Num_of_GoosecoidToZEB2,Trd_of_GoosecoidToZEB2,Inh_of_miR200ToZEB2,Num_of_miR200ToZEB2,Trd_of_miR200ToZEB2,Act_of_ERKTocfos,Num_of_ERKTocfos,Trd_of_ERKTocfos,Act_of_HGFTocMet,Num_of_HGFTocMet,Trd_of_HGFTocMet,Act_of_CD44TocMet,Num_of_CD44TocMet,Trd_of_CD44TocMet,Inh_of_SNAI1TomiR200,Num_of_SNAI1TomiR200,Trd_of_SNAI1TomiR200,Inh_of_ZEB1TomiR200,Num_of_ZEB1TomiR200,Trd_of_ZEB1TomiR200,Inh_of_ZEB2TomiR200,Num_of_ZEB2TomiR200,Trd_of_ZEB2TomiR200,Act_of_EcadherinTocateninmemb,Num_of_EcadherinTocateninmemb,Trd_of_EcadherinTocateninmemb,Inh_of_cateninnucTocateninmemb,Num_of_cateninnucTocateninmemb,Trd_of_cateninnucTocateninmemb,Inh_of_EcadherinTocateninnuc,Num_of_EcadherinTocateninnuc,Trd_of_EcadherinTocateninnuc,Inh_of_cateninmembTocateninnuc,Num_of_cateninmembTocateninnuc,Trd_of_cateninmembTocateninnuc,Inh_of_DestcomplTocateninnuc,Num_of_DestcomplTocateninnuc,Trd_of_DestcomplTocateninnuc,Inh_of_SUFUTocateninnuc,Num_of_SUFUTocateninnuc,Trd_of_SUFUTocateninnuc,Inh_of_CsnToTrCP,Num_of_CsnToTrCP,Trd_of_CsnToTrCP,Prod_of_ILK,Deg_of_ILK,Prod_of_PI3K,Deg_of_PI3K,Prod_of_AXIN2,Deg_of_AXIN2,Prod_of_TCFLEF,Deg_of_TCFLEF,Prod_of_TGFR,Deg_of_TGFR,Prod_of_CHD1L,Deg_of_CHD1L,Prod_of_NOTCHic,Deg_of_NOTCHic,Prod_of_NFB,Deg_of_NFB,Prod_of_RAS,Deg_of_RAS,Prod_of_Frizzled,Deg_of_Frizzled,Prod_of_cateninnuc,Deg_of_cateninnuc,Prod_of_GSK3,Deg_of_GSK3,Prod_of_Destcompl,Deg_of_Destcompl,Prod_of_KLF4,Deg_of_KLF4,Prod_of_cateninmemb,Deg_of_cateninmemb,Prod_of_TWIST1,Deg_of_TWIST1,Prod_of_SNAI2,Deg_of_SNAI2,Prod_of_SNAI1,Deg_of_SNAI1,Prod_of_ZEB1,Deg_of_ZEB1,Prod_of_FOXC2,Deg_of_FOXC2,Prod_of_HEY1,Deg_of_HEY1,Prod_of_EGF,Deg_of_EGF,Prod_of_cfos,Deg_of_cfos,Prod_of_MEK,Deg_of_MEK,Prod_of_FGF,Deg_of_FGF,Prod_of_Goosecoid,Deg_of_Goosecoid,Prod_of_SMO,Deg_of_SMO,Prod_of_Wnt,Deg_of_Wnt,Prod_of_SUFU,Deg_of_SUFU,Prod_of_Csn,Deg_of_Csn,Prod_of_ERK,Deg_of_ERK,Prod_of_DSH,Deg_of_DSH,Prod_of_AKT,Deg_of_AKT,Prod_of_Csl,Deg_of_Csl,Prod_of_SMAD,Deg_of_SMAD,Prod_of_Hypoxia,Deg_of_Hypoxia,Prod_of_IGF1,Deg_of_IGF1,Prod_of_LIFR,Deg_of_LIFR,Prod_of_STAT,Deg_of_STAT,Prod_of_ZEB2,Deg_of_ZEB2,Prod_of_LIF,Deg_of_LIF,Prod_of_HIF1,Deg_of_HIF1,Prod_of_RAF,Deg_of_RAF,Prod_of_SOSGRB2,Deg_of_SOSGRB2,Prod_of_RKIP,Deg_of_RKIP,Prod_of_IKK,Deg_of_IKK,Prod_of_Jagged,Deg_of_Jagged,Prod_of_DELTA,Deg_of_DELTA,Prod_of_NOTCH,Deg_of_NOTCH,Prod_of_CDC42,Deg_of_CDC42,Prod_of_PDGF,Deg_of_PDGF,Prod_of_SHH,Deg_of_SHH,Prod_of_SRC,Deg_of_SRC,Prod_of_GLI,Deg_of_GLI,Prod_of_Patched,Deg_of_Patched,Prod_of_LOXL23,Deg_of_LOXL23,Prod_of_LIV1,Deg_of_LIV1,Prod_of_EGR1,Deg_of_EGR1,Prod_of_PAK1,Deg_of_PAK1,Prod_of_TrCP,Deg_of_TrCP,Prod_of_FGFR,Deg_of_FGFR,Prod_of_cMet,Deg_of_cMet,Prod_of_IGF1R,Deg_of_IGF1R,Prod_of_PDGFR,Deg_of_PDGFR,Prod_of_EGFR,Deg_of_EGFR,Prod_of_JAK,Deg_of_JAK,Prod_of_FUS,Deg_of_FUS,Prod_of_TGF,Deg_of_TGF,Prod_of_miR200,Deg_of_miR200,Prod_of_HGF,Deg_of_HGF,Prod_of_CD44,Deg_of_CD44,Prod_of_Ecadherin,Deg_of_Ecadherin)
ILK = y(1);
PI3K = y(2);
AXIN2 = y(3);
TCFLEF = y(4);
TGFR = y(5);
CHD1L = y(6);
NOTCHic = y(7);
NFB = y(8);
RAS = y(9);
Frizzled = y(10);
cateninnuc = y(11);
GSK3 = y(12);
Destcompl = y(13);
KLF4 = y(14);
cateninmemb = y(15);
TWIST1 = y(16);
SNAI2 = y(17);
SNAI1 = y(18);
ZEB1 = y(19);
FOXC2 = y(20);
HEY1 = y(21);
EGF = y(22);
cfos = y(23);
MEK = y(24);
FGF = y(25);
Goosecoid = y(26);
SMO = y(27);
Wnt = y(28);
SUFU = y(29);
Csn = y(30);
ERK = y(31);
DSH = y(32);
AKT = y(33);
Csl = y(34);
SMAD = y(35);
Hypoxia = y(36);
IGF1 = y(37);
LIFR = y(38);
STAT = y(39);
ZEB2 = y(40);
LIF = y(41);
HIF1 = y(42);
RAF = y(43);
SOSGRB2 = y(44);
RKIP = y(45);
IKK = y(46);
Jagged = y(47);
DELTA = y(48);
NOTCH = y(49);
CDC42 = y(50);
PDGF = y(51);
SHH = y(52);
SRC = y(53);
GLI = y(54);
Patched = y(55);
LOXL23 = y(56);
LIV1 = y(57);
EGR1 = y(58);
PAK1 = y(59);
TrCP = y(60);
FGFR = y(61);
cMet = y(62);
IGF1R = y(63);
PDGFR = y(64);
EGFR = y(65);
JAK = y(66);
FUS = y(67);
TGF = y(68);
miR200 = y(69);
HGF = y(70);
CD44 = y(71);
Ecadherin = y(72);
HillsILK_AKT = (1 + (Act_of_ILKToAKT - 1)*ILK^Num_of_ILKToAKT/(ILK^Num_of_ILKToAKT + Trd_of_ILKToAKT^Num_of_ILKToAKT))/Act_of_ILKToAKT;
HillsPI3K_AKT = (1 + (Act_of_PI3KToAKT - 1)*PI3K^Num_of_PI3KToAKT/(PI3K^Num_of_PI3KToAKT + Trd_of_PI3KToAKT^Num_of_PI3KToAKT))/Act_of_PI3KToAKT;
HillsAXIN2_AXIN2 = (1 + (Act_of_AXIN2ToAXIN2 - 1)*AXIN2^Num_of_AXIN2ToAXIN2/(AXIN2^Num_of_AXIN2ToAXIN2 + Trd_of_AXIN2ToAXIN2^Num_of_AXIN2ToAXIN2))/Act_of_AXIN2ToAXIN2;
HillsTCFLEF_AXIN2 = (1 + (Act_of_TCFLEFToAXIN2 - 1)*TCFLEF^Num_of_TCFLEFToAXIN2/(TCFLEF^Num_of_TCFLEFToAXIN2 + Trd_of_TCFLEFToAXIN2^Num_of_TCFLEFToAXIN2))/Act_of_TCFLEFToAXIN2;
HillsTCFLEF_CD44 = (1 + (Act_of_TCFLEFToCD44 - 1)*TCFLEF^Num_of_TCFLEFToCD44/(TCFLEF^Num_of_TCFLEFToCD44 + Trd_of_TCFLEFToCD44^Num_of_TCFLEFToCD44))/Act_of_TCFLEFToCD44;
HillsTGFR_CDC42 = (1 + (Act_of_TGFRToCDC42 - 1)*TGFR^Num_of_TGFRToCDC42/(TGFR^Num_of_TGFRToCDC42 + Trd_of_TGFRToCDC42^Num_of_TGFRToCDC42))/Act_of_TGFRToCDC42;
HillsCHD1L_CDC42 = (1 + (Act_of_CHD1LToCDC42 - 1)*CHD1L^Num_of_CHD1LToCDC42/(CHD1L^Num_of_CHD1LToCDC42 + Trd_of_CHD1LToCDC42^Num_of_CHD1LToCDC42))/Act_of_CHD1LToCDC42;
HillsNOTCHic_Csl = (1 + (Act_of_NOTCHicToCsl - 1)*NOTCHic^Num_of_NOTCHicToCsl/(NOTCHic^Num_of_NOTCHicToCsl + Trd_of_NOTCHicToCsl^Num_of_NOTCHicToCsl))/Act_of_NOTCHicToCsl;
HillsNFB_Csn = (1 + (Act_of_NFBToCsn - 1)*NFB^Num_of_NFBToCsn/(NFB^Num_of_NFBToCsn + Trd_of_NFBToCsn^Num_of_NFBToCsn))/Act_of_NFBToCsn;
HillsRAS_DELTA = (1 + (Act_of_RASToDELTA - 1)*RAS^Num_of_RASToDELTA/(RAS^Num_of_RASToDELTA + Trd_of_RASToDELTA^Num_of_RASToDELTA))/Act_of_RASToDELTA;
HillsFrizzled_DSH = (1 + (Act_of_FrizzledToDSH - 1)*Frizzled^Num_of_FrizzledToDSH/(Frizzled^Num_of_FrizzledToDSH + Trd_of_FrizzledToDSH^Num_of_FrizzledToDSH))/Act_of_FrizzledToDSH;
Hillscateninnuc_Destcompl = (1 + (Act_of_cateninnucToDestcompl - 1)*cateninnuc^Num_of_cateninnucToDestcompl/(cateninnuc^Num_of_cateninnucToDestcompl + Trd_of_cateninnucToDestcompl^Num_of_cateninnucToDestcompl))/Act_of_cateninnucToDestcompl;
HillsGSK3_Destcompl = (1 + (Act_of_GSK3ToDestcompl - 1)*GSK3^Num_of_GSK3ToDestcompl/(GSK3^Num_of_GSK3ToDestcompl + Trd_of_GSK3ToDestcompl^Num_of_GSK3ToDestcompl))/Act_of_GSK3ToDestcompl;
HillsAXIN2_Destcompl = (1 + (Act_of_AXIN2ToDestcompl - 1)*AXIN2^Num_of_AXIN2ToDestcompl/(AXIN2^Num_of_AXIN2ToDestcompl + Trd_of_AXIN2ToDestcompl^Num_of_AXIN2ToDestcompl))/Act_of_AXIN2ToDestcompl;
HillsDestcompl_Destcompl = (1 + (Act_of_DestcomplToDestcompl - 1)*Destcompl^Num_of_DestcomplToDestcompl/(Destcompl^Num_of_DestcomplToDestcompl + Trd_of_DestcomplToDestcompl^Num_of_DestcomplToDestcompl))/Act_of_DestcomplToDestcompl;
HillsKLF4_Ecadherin = (1 + (Act_of_KLF4ToEcadherin - 1)*KLF4^Num_of_KLF4ToEcadherin/(KLF4^Num_of_KLF4ToEcadherin + Trd_of_KLF4ToEcadherin^Num_of_KLF4ToEcadherin))/Act_of_KLF4ToEcadherin;
Hillscateninmemb_Ecadherin = (1 + (Act_of_cateninmembToEcadherin - 1)*cateninmemb^Num_of_cateninmembToEcadherin/(cateninmemb^Num_of_cateninmembToEcadherin + Trd_of_cateninmembToEcadherin^Num_of_cateninmembToEcadherin))/Act_of_cateninmembToEcadherin;
HillsTWIST1_Ecadherin = 1 + (Inh_of_TWIST1ToEcadherin - 1)*TWIST1^Num_of_TWIST1ToEcadherin/(TWIST1^Num_of_TWIST1ToEcadherin + Trd_of_TWIST1ToEcadherin^Num_of_TWIST1ToEcadherin);
HillsSNAI2_Ecadherin = 1 + (Inh_of_SNAI2ToEcadherin - 1)*SNAI2^Num_of_SNAI2ToEcadherin/(SNAI2^Num_of_SNAI2ToEcadherin + Trd_of_SNAI2ToEcadherin^Num_of_SNAI2ToEcadherin);
HillsSNAI1_Ecadherin = 1 + (Inh_of_SNAI1ToEcadherin - 1)*SNAI1^Num_of_SNAI1ToEcadherin/(SNAI1^Num_of_SNAI1ToEcadherin + Trd_of_SNAI1ToEcadherin^Num_of_SNAI1ToEcadherin);
HillsZEB1_Ecadherin = 1 + (Inh_of_ZEB1ToEcadherin - 1)*ZEB1^Num_of_ZEB1ToEcadherin/(ZEB1^Num_of_ZEB1ToEcadherin + Trd_of_ZEB1ToEcadherin^Num_of_ZEB1ToEcadherin);
HillsFOXC2_Ecadherin = 1 + (Inh_of_FOXC2ToEcadherin - 1)*FOXC2^Num_of_FOXC2ToEcadherin/(FOXC2^Num_of_FOXC2ToEcadherin + Trd_of_FOXC2ToEcadherin^Num_of_FOXC2ToEcadherin);
HillsHEY1_Ecadherin = 1 + (Inh_of_HEY1ToEcadherin - 1)*HEY1^Num_of_HEY1ToEcadherin/(HEY1^Num_of_HEY1ToEcadherin + Trd_of_HEY1ToEcadherin^Num_of_HEY1ToEcadherin);
HillsEGF_EGFR = (1 + (Act_of_EGFToEGFR - 1)*EGF^Num_of_EGFToEGFR/(EGF^Num_of_EGFToEGFR + Trd_of_EGFToEGFR^Num_of_EGFToEGFR))/Act_of_EGFToEGFR;
Hillscfos_EGR1 = (1 + (Act_of_cfosToEGR1 - 1)*cfos^Num_of_cfosToEGR1/(cfos^Num_of_cfosToEGR1 + Trd_of_cfosToEGR1^Num_of_cfosToEGR1))/Act_of_cfosToEGR1;
HillsMEK_ERK = (1 + (Act_of_MEKToERK - 1)*MEK^Num_of_MEKToERK/(MEK^Num_of_MEKToERK + Trd_of_MEKToERK^Num_of_MEKToERK))/Act_of_MEKToERK;
HillsFGF_FGFR = (1 + (Act_of_FGFToFGFR - 1)*FGF^Num_of_FGFToFGFR/(FGF^Num_of_FGFToFGFR + Trd_of_FGFToFGFR^Num_of_FGFToFGFR))/Act_of_FGFToFGFR;
HillsTWIST1_FOXC2 = (1 + (Act_of_TWIST1ToFOXC2 - 1)*TWIST1^Num_of_TWIST1ToFOXC2/(TWIST1^Num_of_TWIST1ToFOXC2 + Trd_of_TWIST1ToFOXC2^Num_of_TWIST1ToFOXC2))/Act_of_TWIST1ToFOXC2;
HillsSNAI1_FOXC2 = (1 + (Act_of_SNAI1ToFOXC2 - 1)*SNAI1^Num_of_SNAI1ToFOXC2/(SNAI1^Num_of_SNAI1ToFOXC2 + Trd_of_SNAI1ToFOXC2^Num_of_SNAI1ToFOXC2))/Act_of_SNAI1ToFOXC2;
HillsGoosecoid_FOXC2 = (1 + (Act_of_GoosecoidToFOXC2 - 1)*Goosecoid^Num_of_GoosecoidToFOXC2/(Goosecoid^Num_of_GoosecoidToFOXC2 + Trd_of_GoosecoidToFOXC2^Num_of_GoosecoidToFOXC2))/Act_of_GoosecoidToFOXC2;
HillsSMO_FUS = (1 + (Act_of_SMOToFUS - 1)*SMO^Num_of_SMOToFUS/(SMO^Num_of_SMOToFUS + Trd_of_SMOToFUS^Num_of_SMOToFUS))/Act_of_SMOToFUS;
HillsWnt_Frizzled = (1 + (Act_of_WntToFrizzled - 1)*Wnt^Num_of_WntToFrizzled/(Wnt^Num_of_WntToFrizzled + Trd_of_WntToFrizzled^Num_of_WntToFrizzled))/Act_of_WntToFrizzled;
HillsTCFLEF_GLI = (1 + (Act_of_TCFLEFToGLI - 1)*TCFLEF^Num_of_TCFLEFToGLI/(TCFLEF^Num_of_TCFLEFToGLI + Trd_of_TCFLEFToGLI^Num_of_TCFLEFToGLI))/Act_of_TCFLEFToGLI;
HillsSUFU_GLI = 1 + (Inh_of_SUFUToGLI - 1)*SUFU^Num_of_SUFUToGLI/(SUFU^Num_of_SUFUToGLI + Trd_of_SUFUToGLI^Num_of_SUFUToGLI);
HillsCsn_GSK3 = 1 + (Inh_of_CsnToGSK3 - 1)*Csn^Num_of_CsnToGSK3/(Csn^Num_of_CsnToGSK3 + Trd_of_CsnToGSK3^Num_of_CsnToGSK3);
HillsERK_GSK3 = 1 + (Inh_of_ERKToGSK3 - 1)*ERK^Num_of_ERKToGSK3/(ERK^Num_of_ERKToGSK3 + Trd_of_ERKToGSK3^Num_of_ERKToGSK3);
HillsDestcompl_GSK3 = 1 + (Inh_of_DestcomplToGSK3 - 1)*Destcompl^Num_of_DestcomplToGSK3/(Destcompl^Num_of_DestcomplToGSK3 + Trd_of_DestcomplToGSK3^Num_of_DestcomplToGSK3);
HillsDSH_GSK3 = 1 + (Inh_of_DSHToGSK3 - 1)*DSH^Num_of_DSHToGSK3/(DSH^Num_of_DSHToGSK3 + Trd_of_DSHToGSK3^Num_of_DSHToGSK3);
HillsAKT_GSK3 = 1 + (Inh_of_AKTToGSK3 - 1)*AKT^Num_of_AKTToGSK3/(AKT^Num_of_AKTToGSK3 + Trd_of_AKTToGSK3^Num_of_AKTToGSK3);
HillsCsl_HEY1 = (1 + (Act_of_CslToHEY1 - 1)*Csl^Num_of_CslToHEY1/(Csl^Num_of_CslToHEY1 + Trd_of_CslToHEY1^Num_of_CslToHEY1))/Act_of_CslToHEY1;
HillsSMAD_HEY1 = (1 + (Act_of_SMADToHEY1 - 1)*SMAD^Num_of_SMADToHEY1/(SMAD^Num_of_SMADToHEY1 + Trd_of_SMADToHEY1^Num_of_SMADToHEY1))/Act_of_SMADToHEY1;
HillsHypoxia_HIF1 = (1 + (Act_of_HypoxiaToHIF1 - 1)*Hypoxia^Num_of_HypoxiaToHIF1/(Hypoxia^Num_of_HypoxiaToHIF1 + Trd_of_HypoxiaToHIF1^Num_of_HypoxiaToHIF1))/Act_of_HypoxiaToHIF1;
HillsIGF1_IGF1R = (1 + (Act_of_IGF1ToIGF1R - 1)*IGF1^Num_of_IGF1ToIGF1R/(IGF1^Num_of_IGF1ToIGF1R + Trd_of_IGF1ToIGF1R^Num_of_IGF1ToIGF1R))/Act_of_IGF1ToIGF1R;
HillsAKT_IKK = (1 + (Act_of_AKTToIKK - 1)*AKT^Num_of_AKTToIKK/(AKT^Num_of_AKTToIKK + Trd_of_AKTToIKK^Num_of_AKTToIKK))/Act_of_AKTToIKK;
HillsSMAD_ILK = (1 + (Act_of_SMADToILK - 1)*SMAD^Num_of_SMADToILK/(SMAD^Num_of_SMADToILK + Trd_of_SMADToILK^Num_of_SMADToILK))/Act_of_SMADToILK;
HillsLIFR_JAK = (1 + (Act_of_LIFRToJAK - 1)*LIFR^Num_of_LIFRToJAK/(LIFR^Num_of_LIFRToJAK + Trd_of_LIFRToJAK^Num_of_LIFRToJAK))/Act_of_LIFRToJAK;
HillsTCFLEF_Jagged = (1 + (Act_of_TCFLEFToJagged - 1)*TCFLEF^Num_of_TCFLEFToJagged/(TCFLEF^Num_of_TCFLEFToJagged + Trd_of_TCFLEFToJagged^Num_of_TCFLEFToJagged))/Act_of_TCFLEFToJagged;
HillsSMAD_Jagged = (1 + (Act_of_SMADToJagged - 1)*SMAD^Num_of_SMADToJagged/(SMAD^Num_of_SMADToJagged + Trd_of_SMADToJagged^Num_of_SMADToJagged))/Act_of_SMADToJagged;
HillsSTAT_KLF4 = (1 + (Act_of_STATToKLF4 - 1)*STAT^Num_of_STATToKLF4/(STAT^Num_of_STATToKLF4 + Trd_of_STATToKLF4^Num_of_STATToKLF4))/Act_of_STATToKLF4;
HillsZEB2_KLF4 = 1 + (Inh_of_ZEB2ToKLF4 - 1)*ZEB2^Num_of_ZEB2ToKLF4/(ZEB2^Num_of_ZEB2ToKLF4 + Trd_of_ZEB2ToKLF4^Num_of_ZEB2ToKLF4);
HillsLIF_LIFR = (1 + (Act_of_LIFToLIFR - 1)*LIF^Num_of_LIFToLIFR/(LIF^Num_of_LIFToLIFR + Trd_of_LIFToLIFR^Num_of_LIFToLIFR))/Act_of_LIFToLIFR;
HillsSTAT_LIV1 = (1 + (Act_of_STATToLIV1 - 1)*STAT^Num_of_STATToLIV1/(STAT^Num_of_STATToLIV1 + Trd_of_STATToLIV1^Num_of_STATToLIV1))/Act_of_STATToLIV1;
HillsHIF1_LOXL23 = (1 + (Act_of_HIF1ToLOXL23 - 1)*HIF1^Num_of_HIF1ToLOXL23/(HIF1^Num_of_HIF1ToLOXL23 + Trd_of_HIF1ToLOXL23^Num_of_HIF1ToLOXL23))/Act_of_HIF1ToLOXL23;
HillsRAF_MEK = (1 + (Act_of_RAFToMEK - 1)*RAF^Num_of_RAFToMEK/(RAF^Num_of_RAFToMEK + Trd_of_RAFToMEK^Num_of_RAFToMEK))/Act_of_RAFToMEK;
HillsSOSGRB2_MEK = (1 + (Act_of_SOSGRB2ToMEK - 1)*SOSGRB2^Num_of_SOSGRB2ToMEK/(SOSGRB2^Num_of_SOSGRB2ToMEK + Trd_of_SOSGRB2ToMEK^Num_of_SOSGRB2ToMEK))/Act_of_SOSGRB2ToMEK;
HillsRKIP_MEK = 1 + (Inh_of_RKIPToMEK - 1)*RKIP^Num_of_RKIPToMEK/(RKIP^Num_of_RKIPToMEK + Trd_of_RKIPToMEK^Num_of_RKIPToMEK);
HillsIKK_NFB = (1 + (Act_of_IKKToNFB - 1)*IKK^Num_of_IKKToNFB/(IKK^Num_of_IKKToNFB + Trd_of_IKKToNFB^Num_of_IKKToNFB))/Act_of_IKKToNFB;
HillsJagged_NOTCH = (1 + (Act_of_JaggedToNOTCH - 1)*Jagged^Num_of_JaggedToNOTCH/(Jagged^Num_of_JaggedToNOTCH + Trd_of_JaggedToNOTCH^Num_of_JaggedToNOTCH))/Act_of_JaggedToNOTCH;
HillsDELTA_NOTCH = (1 + (Act_of_DELTAToNOTCH - 1)*DELTA^Num_of_DELTAToNOTCH/(DELTA^Num_of_DELTAToNOTCH + Trd_of_DELTAToNOTCH^Num_of_DELTAToNOTCH))/Act_of_DELTAToNOTCH;
HillsNOTCH_NOTCHic = (1 + (Act_of_NOTCHToNOTCHic - 1)*NOTCH^Num_of_NOTCHToNOTCHic/(NOTCH^Num_of_NOTCHToNOTCHic + Trd_of_NOTCHToNOTCHic^Num_of_NOTCHToNOTCHic))/Act_of_NOTCHToNOTCHic;
HillsCDC42_PAK1 = (1 + (Act_of_CDC42ToPAK1 - 1)*CDC42^Num_of_CDC42ToPAK1/(CDC42^Num_of_CDC42ToPAK1 + Trd_of_CDC42ToPAK1^Num_of_CDC42ToPAK1))/Act_of_CDC42ToPAK1;
HillsPDGF_PDGFR = (1 + (Act_of_PDGFToPDGFR - 1)*PDGF^Num_of_PDGFToPDGFR/(PDGF^Num_of_PDGFToPDGFR + Trd_of_PDGFToPDGFR^Num_of_PDGFToPDGFR))/Act_of_PDGFToPDGFR;
HillsRAS_PI3K = (1 + (Act_of_RASToPI3K - 1)*RAS^Num_of_RASToPI3K/(RAS^Num_of_RASToPI3K + Trd_of_RASToPI3K^Num_of_RASToPI3K))/Act_of_RASToPI3K;
HillsLIFR_PI3K = (1 + (Act_of_LIFRToPI3K - 1)*LIFR^Num_of_LIFRToPI3K/(LIFR^Num_of_LIFRToPI3K + Trd_of_LIFRToPI3K^Num_of_LIFRToPI3K))/Act_of_LIFRToPI3K;
HillsSHH_Patched = 1 + (Inh_of_SHHToPatched - 1)*SHH^Num_of_SHHToPatched/(SHH^Num_of_SHHToPatched + Trd_of_SHHToPatched^Num_of_SHHToPatched);
HillsRAS_RAF = (1 + (Act_of_RASToRAF - 1)*RAS^Num_of_RASToRAF/(RAS^Num_of_RASToRAF + Trd_of_RASToRAF^Num_of_RASToRAF))/Act_of_RASToRAF;
HillsSRC_RAS = (1 + (Act_of_SRCToRAS - 1)*SRC^Num_of_SRCToRAS/(SRC^Num_of_SRCToRAS + Trd_of_SRCToRAS^Num_of_SRCToRAS))/Act_of_SRCToRAS;
HillsSOSGRB2_RAS = (1 + (Act_of_SOSGRB2ToRAS - 1)*SOSGRB2^Num_of_SOSGRB2ToRAS/(SOSGRB2^Num_of_SOSGRB2ToRAS + Trd_of_SOSGRB2ToRAS^Num_of_SOSGRB2ToRAS))/Act_of_SOSGRB2ToRAS;
HillsTCFLEF_RAS = (1 + (Act_of_TCFLEFToRAS - 1)*TCFLEF^Num_of_TCFLEFToRAS/(TCFLEF^Num_of_TCFLEFToRAS + Trd_of_TCFLEFToRAS^Num_of_TCFLEFToRAS))/Act_of_TCFLEFToRAS;
HillsGSK3_RAS = 1 + (Inh_of_GSK3ToRAS - 1)*GSK3^Num_of_GSK3ToRAS/(GSK3^Num_of_GSK3ToRAS + Trd_of_GSK3ToRAS^Num_of_GSK3ToRAS);
HillsSNAI1_RKIP = 1 + (Inh_of_SNAI1ToRKIP - 1)*SNAI1^Num_of_SNAI1ToRKIP/(SNAI1^Num_of_SNAI1ToRKIP + Trd_of_SNAI1ToRKIP^Num_of_SNAI1ToRKIP);
HillsERK_RKIP = 1 + (Inh_of_ERKToRKIP - 1)*ERK^Num_of_ERKToRKIP/(ERK^Num_of_ERKToRKIP + Trd_of_ERKToRKIP^Num_of_ERKToRKIP);
HillsGLI_SHH = (1 + (Act_of_GLIToSHH - 1)*GLI^Num_of_GLIToSHH/(GLI^Num_of_GLIToSHH + Trd_of_GLIToSHH^Num_of_GLIToSHH))/Act_of_GLIToSHH;
HillsSMAD_SHH = (1 + (Act_of_SMADToSHH - 1)*SMAD^Num_of_SMADToSHH/(SMAD^Num_of_SMADToSHH + Trd_of_SMADToSHH^Num_of_SMADToSHH))/Act_of_SMADToSHH;
HillsTGFR_SMAD = (1 + (Act_of_TGFRToSMAD - 1)*TGFR^Num_of_TGFRToSMAD/(TGFR^Num_of_TGFRToSMAD + Trd_of_TGFRToSMAD^Num_of_TGFRToSMAD))/Act_of_TGFRToSMAD;
HillsZEB1_SMAD = (1 + (Act_of_ZEB1ToSMAD - 1)*ZEB1^Num_of_ZEB1ToSMAD/(ZEB1^Num_of_ZEB1ToSMAD + Trd_of_ZEB1ToSMAD^Num_of_ZEB1ToSMAD))/Act_of_ZEB1ToSMAD;
HillsERK_SMAD = (1 + (Act_of_ERKToSMAD - 1)*ERK^Num_of_ERKToSMAD/(ERK^Num_of_ERKToSMAD + Trd_of_ERKToSMAD^Num_of_ERKToSMAD))/Act_of_ERKToSMAD;
HillsZEB2_SMAD = 1 + (Inh_of_ZEB2ToSMAD - 1)*ZEB2^Num_of_ZEB2ToSMAD/(ZEB2^Num_of_ZEB2ToSMAD + Trd_of_ZEB2ToSMAD^Num_of_ZEB2ToSMAD);
HillsPatched_SMO = 1 + (Inh_of_PatchedToSMO - 1)*Patched^Num_of_PatchedToSMO/(Patched^Num_of_PatchedToSMO + Trd_of_PatchedToSMO^Num_of_PatchedToSMO);
HillsLOXL23_SNAI1 = (1 + (Act_of_LOXL23ToSNAI1 - 1)*LOXL23^Num_of_LOXL23ToSNAI1/(LOXL23^Num_of_LOXL23ToSNAI1 + Trd_of_LOXL23ToSNAI1^Num_of_LOXL23ToSNAI1))/Act_of_LOXL23ToSNAI1;
HillsGLI_SNAI1 = (1 + (Act_of_GLIToSNAI1 - 1)*GLI^Num_of_GLIToSNAI1/(GLI^Num_of_GLIToSNAI1 + Trd_of_GLIToSNAI1^Num_of_GLIToSNAI1))/Act_of_GLIToSNAI1;
HillsGoosecoid_SNAI1 = (1 + (Act_of_GoosecoidToSNAI1 - 1)*Goosecoid^Num_of_GoosecoidToSNAI1/(Goosecoid^Num_of_GoosecoidToSNAI1 + Trd_of_GoosecoidToSNAI1^Num_of_GoosecoidToSNAI1))/Act_of_GoosecoidToSNAI1;
HillsLIV1_SNAI1 = (1 + (Act_of_LIV1ToSNAI1 - 1)*LIV1^Num_of_LIV1ToSNAI1/(LIV1^Num_of_LIV1ToSNAI1 + Trd_of_LIV1ToSNAI1^Num_of_LIV1ToSNAI1))/Act_of_LIV1ToSNAI1;
HillsCsl_SNAI1 = (1 + (Act_of_CslToSNAI1 - 1)*Csl^Num_of_CslToSNAI1/(Csl^Num_of_CslToSNAI1 + Trd_of_CslToSNAI1^Num_of_CslToSNAI1))/Act_of_CslToSNAI1;
HillsEGR1_SNAI1 = (1 + (Act_of_EGR1ToSNAI1 - 1)*EGR1^Num_of_EGR1ToSNAI1/(EGR1^Num_of_EGR1ToSNAI1 + Trd_of_EGR1ToSNAI1^Num_of_EGR1ToSNAI1))/Act_of_EGR1ToSNAI1;
HillsSMAD_SNAI1 = (1 + (Act_of_SMADToSNAI1 - 1)*SMAD^Num_of_SMADToSNAI1/(SMAD^Num_of_SMADToSNAI1 + Trd_of_SMADToSNAI1^Num_of_SMADToSNAI1))/Act_of_SMADToSNAI1;
HillsPAK1_SNAI1 = (1 + (Act_of_PAK1ToSNAI1 - 1)*PAK1^Num_of_PAK1ToSNAI1/(PAK1^Num_of_PAK1ToSNAI1 + Trd_of_PAK1ToSNAI1^Num_of_PAK1ToSNAI1))/Act_of_PAK1ToSNAI1;
HillsGSK3_SNAI1 = 1 + (Inh_of_GSK3ToSNAI1 - 1)*GSK3^Num_of_GSK3ToSNAI1/(GSK3^Num_of_GSK3ToSNAI1 + Trd_of_GSK3ToSNAI1^Num_of_GSK3ToSNAI1);
HillsTrCP_SNAI1 = 1 + (Inh_of_TrCPToSNAI1 - 1)*TrCP^Num_of_TrCPToSNAI1/(TrCP^Num_of_TrCPToSNAI1 + Trd_of_TrCPToSNAI1^Num_of_TrCPToSNAI1);
Hillscateninnuc_SNAI2 = (1 + (Act_of_cateninnucToSNAI2 - 1)*cateninnuc^Num_of_cateninnucToSNAI2/(cateninnuc^Num_of_cateninnucToSNAI2 + Trd_of_cateninnucToSNAI2^Num_of_cateninnucToSNAI2))/Act_of_cateninnucToSNAI2;
HillsSNAI2_SNAI2 = (1 + (Act_of_SNAI2ToSNAI2 - 1)*SNAI2^Num_of_SNAI2ToSNAI2/(SNAI2^Num_of_SNAI2ToSNAI2 + Trd_of_SNAI2ToSNAI2^Num_of_SNAI2ToSNAI2))/Act_of_SNAI2ToSNAI2;
HillsTWIST1_SNAI2 = (1 + (Act_of_TWIST1ToSNAI2 - 1)*TWIST1^Num_of_TWIST1ToSNAI2/(TWIST1^Num_of_TWIST1ToSNAI2 + Trd_of_TWIST1ToSNAI2^Num_of_TWIST1ToSNAI2))/Act_of_TWIST1ToSNAI2;
HillsERK_SNAI2 = (1 + (Act_of_ERKToSNAI2 - 1)*ERK^Num_of_ERKToSNAI2/(ERK^Num_of_ERKToSNAI2 + Trd_of_ERKToSNAI2^Num_of_ERKToSNAI2))/Act_of_ERKToSNAI2;
HillsTGFR_SOSGRB2 = (1 + (Act_of_TGFRToSOSGRB2 - 1)*TGFR^Num_of_TGFRToSOSGRB2/(TGFR^Num_of_TGFRToSOSGRB2 + Trd_of_TGFRToSOSGRB2^Num_of_TGFRToSOSGRB2))/Act_of_TGFRToSOSGRB2;
HillsFGFR_SOSGRB2 = (1 + (Act_of_FGFRToSOSGRB2 - 1)*FGFR^Num_of_FGFRToSOSGRB2/(FGFR^Num_of_FGFRToSOSGRB2 + Trd_of_FGFRToSOSGRB2^Num_of_FGFRToSOSGRB2))/Act_of_FGFRToSOSGRB2;
HillscMet_SOSGRB2 = (1 + (Act_of_cMetToSOSGRB2 - 1)*cMet^Num_of_cMetToSOSGRB2/(cMet^Num_of_cMetToSOSGRB2 + Trd_of_cMetToSOSGRB2^Num_of_cMetToSOSGRB2))/Act_of_cMetToSOSGRB2;
HillsIGF1R_SOSGRB2 = (1 + (Act_of_IGF1RToSOSGRB2 - 1)*IGF1R^Num_of_IGF1RToSOSGRB2/(IGF1R^Num_of_IGF1RToSOSGRB2 + Trd_of_IGF1RToSOSGRB2^Num_of_IGF1RToSOSGRB2))/Act_of_IGF1RToSOSGRB2;
HillsPDGFR_SOSGRB2 = (1 + (Act_of_PDGFRToSOSGRB2 - 1)*PDGFR^Num_of_PDGFRToSOSGRB2/(PDGFR^Num_of_PDGFRToSOSGRB2 + Trd_of_PDGFRToSOSGRB2^Num_of_PDGFRToSOSGRB2))/Act_of_PDGFRToSOSGRB2;
HillsEGFR_SOSGRB2 = (1 + (Act_of_EGFRToSOSGRB2 - 1)*EGFR^Num_of_EGFRToSOSGRB2/(EGFR^Num_of_EGFRToSOSGRB2 + Trd_of_EGFRToSOSGRB2^Num_of_EGFRToSOSGRB2))/Act_of_EGFRToSOSGRB2;
HillsLIFR_SOSGRB2 = (1 + (Act_of_LIFRToSOSGRB2 - 1)*LIFR^Num_of_LIFRToSOSGRB2/(LIFR^Num_of_LIFRToSOSGRB2 + Trd_of_LIFRToSOSGRB2^Num_of_LIFRToSOSGRB2))/Act_of_LIFRToSOSGRB2;
HillsERK_SOSGRB2 = 1 + (Inh_of_ERKToSOSGRB2 - 1)*ERK^Num_of_ERKToSOSGRB2/(ERK^Num_of_ERKToSOSGRB2 + Trd_of_ERKToSOSGRB2^Num_of_ERKToSOSGRB2);
HillsPDGFR_SRC = (1 + (Act_of_PDGFRToSRC - 1)*PDGFR^Num_of_PDGFRToSRC/(PDGFR^Num_of_PDGFRToSRC + Trd_of_PDGFRToSRC^Num_of_PDGFRToSRC))/Act_of_PDGFRToSRC;
HillscMet_SRC = (1 + (Act_of_cMetToSRC - 1)*cMet^Num_of_cMetToSRC/(cMet^Num_of_cMetToSRC + Trd_of_cMetToSRC^Num_of_cMetToSRC))/Act_of_cMetToSRC;
HillsEGFR_SRC = (1 + (Act_of_EGFRToSRC - 1)*EGFR^Num_of_EGFRToSRC/(EGFR^Num_of_EGFRToSRC + Trd_of_EGFRToSRC^Num_of_EGFRToSRC))/Act_of_EGFRToSRC;
HillsIGF1R_SRC = (1 + (Act_of_IGF1RToSRC - 1)*IGF1R^Num_of_IGF1RToSRC/(IGF1R^Num_of_IGF1RToSRC + Trd_of_IGF1RToSRC^Num_of_IGF1RToSRC))/Act_of_IGF1RToSRC;
HillsFGFR_SRC = (1 + (Act_of_FGFRToSRC - 1)*FGFR^Num_of_FGFRToSRC/(FGFR^Num_of_FGFRToSRC + Trd_of_FGFRToSRC^Num_of_FGFRToSRC))/Act_of_FGFRToSRC;
HillsSRC_STAT = (1 + (Act_of_SRCToSTAT - 1)*SRC^Num_of_SRCToSTAT/(SRC^Num_of_SRCToSTAT + Trd_of_SRCToSTAT^Num_of_SRCToSTAT))/Act_of_SRCToSTAT;
HillsJAK_STAT = (1 + (Act_of_JAKToSTAT - 1)*JAK^Num_of_JAKToSTAT/(JAK^Num_of_JAKToSTAT + Trd_of_JAKToSTAT^Num_of_JAKToSTAT))/Act_of_JAKToSTAT;
HillsFUS_SUFU = 1 + (Inh_of_FUSToSUFU - 1)*FUS^Num_of_FUSToSUFU/(FUS^Num_of_FUSToSUFU + Trd_of_FUSToSUFU^Num_of_FUSToSUFU);
Hillscateninnuc_TCFLEF = (1 + (Act_of_cateninnucToTCFLEF - 1)*cateninnuc^Num_of_cateninnucToTCFLEF/(cateninnuc^Num_of_cateninnucToTCFLEF + Trd_of_cateninnucToTCFLEF^Num_of_cateninnucToTCFLEF))/Act_of_cateninnucToTCFLEF;
HillsTWIST1_TGF = (1 + (Act_of_TWIST1ToTGF - 1)*TWIST1^Num_of_TWIST1ToTGF/(TWIST1^Num_of_TWIST1ToTGF + Trd_of_TWIST1ToTGF^Num_of_TWIST1ToTGF))/Act_of_TWIST1ToTGF;
HillsGLI_TGF = (1 + (Act_of_GLIToTGF - 1)*GLI^Num_of_GLIToTGF/(GLI^Num_of_GLIToTGF + Trd_of_GLIToTGF^Num_of_GLIToTGF))/Act_of_GLIToTGF;
HillsSNAI1_TGF = (1 + (Act_of_SNAI1ToTGF - 1)*SNAI1^Num_of_SNAI1ToTGF/(SNAI1^Num_of_SNAI1ToTGF + Trd_of_SNAI1ToTGF^Num_of_SNAI1ToTGF))/Act_of_SNAI1ToTGF;
HillsGoosecoid_TGF = (1 + (Act_of_GoosecoidToTGF - 1)*Goosecoid^Num_of_GoosecoidToTGF/(Goosecoid^Num_of_GoosecoidToTGF + Trd_of_GoosecoidToTGF^Num_of_GoosecoidToTGF))/Act_of_GoosecoidToTGF;
HillsTGF_TGFR = (1 + (Act_of_TGFToTGFR - 1)*TGF^Num_of_TGFToTGFR/(TGF^Num_of_TGFToTGFR + Trd_of_TGFToTGFR^Num_of_TGFToTGFR))/Act_of_TGFToTGFR;
HillsHIF1_TWIST1 = (1 + (Act_of_HIF1ToTWIST1 - 1)*HIF1^Num_of_HIF1ToTWIST1/(HIF1^Num_of_HIF1ToTWIST1 + Trd_of_HIF1ToTWIST1^Num_of_HIF1ToTWIST1))/Act_of_HIF1ToTWIST1;
HillsSNAI1_TWIST1 = (1 + (Act_of_SNAI1ToTWIST1 - 1)*SNAI1^Num_of_SNAI1ToTWIST1/(SNAI1^Num_of_SNAI1ToTWIST1 + Trd_of_SNAI1ToTWIST1^Num_of_SNAI1ToTWIST1))/Act_of_SNAI1ToTWIST1;
HillsNFB_TWIST1 = (1 + (Act_of_NFBToTWIST1 - 1)*NFB^Num_of_NFBToTWIST1/(NFB^Num_of_NFBToTWIST1 + Trd_of_NFBToTWIST1^Num_of_NFBToTWIST1))/Act_of_NFBToTWIST1;
HillsTCFLEF_TWIST1 = (1 + (Act_of_TCFLEFToTWIST1 - 1)*TCFLEF^Num_of_TCFLEFToTWIST1/(TCFLEF^Num_of_TCFLEFToTWIST1 + Trd_of_TCFLEFToTWIST1^Num_of_TCFLEFToTWIST1))/Act_of_TCFLEFToTWIST1;
HillsGoosecoid_TWIST1 = (1 + (Act_of_GoosecoidToTWIST1 - 1)*Goosecoid^Num_of_GoosecoidToTWIST1/(Goosecoid^Num_of_GoosecoidToTWIST1 + Trd_of_GoosecoidToTWIST1^Num_of_GoosecoidToTWIST1))/Act_of_GoosecoidToTWIST1;
HillsGLI_Wnt = (1 + (Act_of_GLIToWnt - 1)*GLI^Num_of_GLIToWnt/(GLI^Num_of_GLIToWnt + Trd_of_GLIToWnt^Num_of_GLIToWnt))/Act_of_GLIToWnt;
HillsHIF1_ZEB1 = (1 + (Act_of_HIF1ToZEB1 - 1)*HIF1^Num_of_HIF1ToZEB1/(HIF1^Num_of_HIF1ToZEB1 + Trd_of_HIF1ToZEB1^Num_of_HIF1ToZEB1))/Act_of_HIF1ToZEB1;
HillsSNAI1_ZEB1 = (1 + (Act_of_SNAI1ToZEB1 - 1)*SNAI1^Num_of_SNAI1ToZEB1/(SNAI1^Num_of_SNAI1ToZEB1 + Trd_of_SNAI1ToZEB1^Num_of_SNAI1ToZEB1))/Act_of_SNAI1ToZEB1;
HillsGoosecoid_ZEB1 = (1 + (Act_of_GoosecoidToZEB1 - 1)*Goosecoid^Num_of_GoosecoidToZEB1/(Goosecoid^Num_of_GoosecoidToZEB1 + Trd_of_GoosecoidToZEB1^Num_of_GoosecoidToZEB1))/Act_of_GoosecoidToZEB1;
HillsmiR200_ZEB1 = 1 + (Inh_of_miR200ToZEB1 - 1)*miR200^Num_of_miR200ToZEB1/(miR200^Num_of_miR200ToZEB1 + Trd_of_miR200ToZEB1^Num_of_miR200ToZEB1);
HillsHIF1_ZEB2 = (1 + (Act_of_HIF1ToZEB2 - 1)*HIF1^Num_of_HIF1ToZEB2/(HIF1^Num_of_HIF1ToZEB2 + Trd_of_HIF1ToZEB2^Num_of_HIF1ToZEB2))/Act_of_HIF1ToZEB2;
HillsSNAI1_ZEB2 = (1 + (Act_of_SNAI1ToZEB2 - 1)*SNAI1^Num_of_SNAI1ToZEB2/(SNAI1^Num_of_SNAI1ToZEB2 + Trd_of_SNAI1ToZEB2^Num_of_SNAI1ToZEB2))/Act_of_SNAI1ToZEB2;
HillsGoosecoid_ZEB2 = (1 + (Act_of_GoosecoidToZEB2 - 1)*Goosecoid^Num_of_GoosecoidToZEB2/(Goosecoid^Num_of_GoosecoidToZEB2 + Trd_of_GoosecoidToZEB2^Num_of_GoosecoidToZEB2))/Act_of_GoosecoidToZEB2;
HillsmiR200_ZEB2 = 1 + (Inh_of_miR200ToZEB2 - 1)*miR200^Num_of_miR200ToZEB2/(miR200^Num_of_miR200ToZEB2 + Trd_of_miR200ToZEB2^Num_of_miR200ToZEB2);
HillsERK_cfos = (1 + (Act_of_ERKTocfos - 1)*ERK^Num_of_ERKTocfos/(ERK^Num_of_ERKTocfos + Trd_of_ERKTocfos^Num_of_ERKTocfos))/Act_of_ERKTocfos;
HillsHGF_cMet = (1 + (Act_of_HGFTocMet - 1)*HGF^Num_of_HGFTocMet/(HGF^Num_of_HGFTocMet + Trd_of_HGFTocMet^Num_of_HGFTocMet))/Act_of_HGFTocMet;
HillsCD44_cMet = (1 + (Act_of_CD44TocMet - 1)*CD44^Num_of_CD44TocMet/(CD44^Num_of_CD44TocMet + Trd_of_CD44TocMet^Num_of_CD44TocMet))/Act_of_CD44TocMet;
HillsSNAI1_miR200 = 1 + (Inh_of_SNAI1TomiR200 - 1)*SNAI1^Num_of_SNAI1TomiR200/(SNAI1^Num_of_SNAI1TomiR200 + Trd_of_SNAI1TomiR200^Num_of_SNAI1TomiR200);
HillsZEB1_miR200 = 1 + (Inh_of_ZEB1TomiR200 - 1)*ZEB1^Num_of_ZEB1TomiR200/(ZEB1^Num_of_ZEB1TomiR200 + Trd_of_ZEB1TomiR200^Num_of_ZEB1TomiR200);
HillsZEB2_miR200 = 1 + (Inh_of_ZEB2TomiR200 - 1)*ZEB2^Num_of_ZEB2TomiR200/(ZEB2^Num_of_ZEB2TomiR200 + Trd_of_ZEB2TomiR200^Num_of_ZEB2TomiR200);
HillsEcadherin_cateninmemb = (1 + (Act_of_EcadherinTocateninmemb - 1)*Ecadherin^Num_of_EcadherinTocateninmemb/(Ecadherin^Num_of_EcadherinTocateninmemb + Trd_of_EcadherinTocateninmemb^Num_of_EcadherinTocateninmemb))/Act_of_EcadherinTocateninmemb;
Hillscateninnuc_cateninmemb = 1 + (Inh_of_cateninnucTocateninmemb - 1)*cateninnuc^Num_of_cateninnucTocateninmemb/(cateninnuc^Num_of_cateninnucTocateninmemb + Trd_of_cateninnucTocateninmemb^Num_of_cateninnucTocateninmemb);
HillsEcadherin_cateninnuc = 1 + (Inh_of_EcadherinTocateninnuc - 1)*Ecadherin^Num_of_EcadherinTocateninnuc/(Ecadherin^Num_of_EcadherinTocateninnuc + Trd_of_EcadherinTocateninnuc^Num_of_EcadherinTocateninnuc);
Hillscateninmemb_cateninnuc = 1 + (Inh_of_cateninmembTocateninnuc - 1)*cateninmemb^Num_of_cateninmembTocateninnuc/(cateninmemb^Num_of_cateninmembTocateninnuc + Trd_of_cateninmembTocateninnuc^Num_of_cateninmembTocateninnuc);
HillsDestcompl_cateninnuc = 1 + (Inh_of_DestcomplTocateninnuc - 1)*Destcompl^Num_of_DestcomplTocateninnuc/(Destcompl^Num_of_DestcomplTocateninnuc + Trd_of_DestcomplTocateninnuc^Num_of_DestcomplTocateninnuc);
HillsSUFU_cateninnuc = 1 + (Inh_of_SUFUTocateninnuc - 1)*SUFU^Num_of_SUFUTocateninnuc/(SUFU^Num_of_SUFUTocateninnuc + Trd_of_SUFUTocateninnuc^Num_of_SUFUTocateninnuc);
HillsCsn_TrCP = 1 + (Inh_of_CsnToTrCP - 1)*Csn^Num_of_CsnToTrCP/(Csn^Num_of_CsnToTrCP + Trd_of_CsnToTrCP^Num_of_CsnToTrCP);
dydt = [Prod_of_ILK*HillsSMAD_ILK - Deg_of_ILK*ILK
Prod_of_PI3K*HillsRAS_PI3K*HillsLIFR_PI3K - Deg_of_PI3K*PI3K
Prod_of_AXIN2*HillsAXIN2_AXIN2*HillsTCFLEF_AXIN2 - Deg_of_AXIN2*AXIN2
Prod_of_TCFLEF*Hillscateninnuc_TCFLEF - Deg_of_TCFLEF*TCFLEF
Prod_of_TGFR*HillsTGF_TGFR - Deg_of_TGFR*TGFR
Prod_of_CHD1L - Deg_of_CHD1L*CHD1L
Prod_of_NOTCHic*HillsNOTCH_NOTCHic - Deg_of_NOTCHic*NOTCHic
Prod_of_NFB*HillsIKK_NFB - Deg_of_NFB*NFB
Prod_of_RAS*HillsSRC_RAS*HillsSOSGRB2_RAS*HillsTCFLEF_RAS*HillsGSK3_RAS - Deg_of_RAS*RAS
Prod_of_Frizzled*HillsWnt_Frizzled - Deg_of_Frizzled*Frizzled
Prod_of_cateninnuc*HillsEcadherin_cateninnuc*Hillscateninmemb_cateninnuc*HillsDestcompl_cateninnuc*HillsSUFU_cateninnuc - Deg_of_cateninnuc*cateninnuc
Prod_of_GSK3*HillsCsn_GSK3*HillsERK_GSK3*HillsDestcompl_GSK3*HillsDSH_GSK3*HillsAKT_GSK3 - Deg_of_GSK3*GSK3
Prod_of_Destcompl*Hillscateninnuc_Destcompl*HillsGSK3_Destcompl*HillsAXIN2_Destcompl*HillsDestcompl_Destcompl - Deg_of_Destcompl*Destcompl
Prod_of_KLF4*HillsSTAT_KLF4*HillsZEB2_KLF4 - Deg_of_KLF4*KLF4
Prod_of_cateninmemb*HillsEcadherin_cateninmemb*Hillscateninnuc_cateninmemb - Deg_of_cateninmemb*cateninmemb
Prod_of_TWIST1*HillsHIF1_TWIST1*HillsSNAI1_TWIST1*HillsNFB_TWIST1*HillsTCFLEF_TWIST1*HillsGoosecoid_TWIST1 - Deg_of_TWIST1*TWIST1
Prod_of_SNAI2*Hillscateninnuc_SNAI2*HillsSNAI2_SNAI2*HillsTWIST1_SNAI2*HillsERK_SNAI2 - Deg_of_SNAI2*SNAI2
Prod_of_SNAI1*HillsLOXL23_SNAI1*HillsGLI_SNAI1*HillsGoosecoid_SNAI1*HillsLIV1_SNAI1*HillsCsl_SNAI1*HillsEGR1_SNAI1*HillsSMAD_SNAI1*HillsPAK1_SNAI1*HillsGSK3_SNAI1*HillsTrCP_SNAI1 - Deg_of_SNAI1*SNAI1
Prod_of_ZEB1*HillsHIF1_ZEB1*HillsSNAI1_ZEB1*HillsGoosecoid_ZEB1*HillsmiR200_ZEB1 - Deg_of_ZEB1*ZEB1
Prod_of_FOXC2*HillsTWIST1_FOXC2*HillsSNAI1_FOXC2*HillsGoosecoid_FOXC2 - Deg_of_FOXC2*FOXC2
Prod_of_HEY1*HillsCsl_HEY1*HillsSMAD_HEY1 - Deg_of_HEY1*HEY1
Prod_of_EGF - Deg_of_EGF*EGF
Prod_of_cfos*HillsERK_cfos - Deg_of_cfos*cfos
Prod_of_MEK*HillsRAF_MEK*HillsSOSGRB2_MEK*HillsRKIP_MEK - Deg_of_MEK*MEK
Prod_of_FGF - Deg_of_FGF*FGF
Prod_of_Goosecoid - Deg_of_Goosecoid*Goosecoid
Prod_of_SMO*HillsPatched_SMO - Deg_of_SMO*SMO
Prod_of_Wnt*HillsGLI_Wnt - Deg_of_Wnt*Wnt
Prod_of_SUFU*HillsFUS_SUFU - Deg_of_SUFU*SUFU
Prod_of_Csn*HillsNFB_Csn - Deg_of_Csn*Csn
Prod_of_ERK*HillsMEK_ERK - Deg_of_ERK*ERK
Prod_of_DSH*HillsFrizzled_DSH - Deg_of_DSH*DSH
Prod_of_AKT*HillsILK_AKT*HillsPI3K_AKT - Deg_of_AKT*AKT
Prod_of_Csl*HillsNOTCHic_Csl - Deg_of_Csl*Csl
Prod_of_SMAD*HillsTGFR_SMAD*HillsZEB1_SMAD*HillsERK_SMAD*HillsZEB2_SMAD - Deg_of_SMAD*SMAD
Prod_of_Hypoxia - Deg_of_Hypoxia*Hypoxia
Prod_of_IGF1 - Deg_of_IGF1*IGF1
Prod_of_LIFR*HillsLIF_LIFR - Deg_of_LIFR*LIFR
Prod_of_STAT*HillsSRC_STAT*HillsJAK_STAT - Deg_of_STAT*STAT
Prod_of_ZEB2*HillsHIF1_ZEB2*HillsSNAI1_ZEB2*HillsGoosecoid_ZEB2*HillsmiR200_ZEB2 - Deg_of_ZEB2*ZEB2
Prod_of_LIF - Deg_of_LIF*LIF
Prod_of_HIF1*HillsHypoxia_HIF1 - Deg_of_HIF1*HIF1
Prod_of_RAF*HillsRAS_RAF - Deg_of_RAF*RAF
Prod_of_SOSGRB2*HillsTGFR_SOSGRB2*HillsFGFR_SOSGRB2*HillscMet_SOSGRB2*HillsIGF1R_SOSGRB2*HillsPDGFR_SOSGRB2*HillsEGFR_SOSGRB2*HillsLIFR_SOSGRB2*HillsERK_SOSGRB2 - Deg_of_SOSGRB2*SOSGRB2
Prod_of_RKIP*HillsSNAI1_RKIP*HillsERK_RKIP - Deg_of_RKIP*RKIP
Prod_of_IKK*HillsAKT_IKK - Deg_of_IKK*IKK
Prod_of_Jagged*HillsTCFLEF_Jagged*HillsSMAD_Jagged - Deg_of_Jagged*Jagged
Prod_of_DELTA*HillsRAS_DELTA - Deg_of_DELTA*DELTA
Prod_of_NOTCH*HillsJagged_NOTCH*HillsDELTA_NOTCH - Deg_of_NOTCH*NOTCH
Prod_of_CDC42*HillsTGFR_CDC42*HillsCHD1L_CDC42 - Deg_of_CDC42*CDC42
Prod_of_PDGF - Deg_of_PDGF*PDGF
Prod_of_SHH*HillsGLI_SHH*HillsSMAD_SHH - Deg_of_SHH*SHH
Prod_of_SRC*HillsPDGFR_SRC*HillscMet_SRC*HillsEGFR_SRC*HillsIGF1R_SRC*HillsFGFR_SRC - Deg_of_SRC*SRC
Prod_of_GLI*HillsTCFLEF_GLI*HillsSUFU_GLI - Deg_of_GLI*GLI
Prod_of_Patched*HillsSHH_Patched - Deg_of_Patched*Patched
Prod_of_LOXL23*HillsHIF1_LOXL23 - Deg_of_LOXL23*LOXL23
Prod_of_LIV1*HillsSTAT_LIV1 - Deg_of_LIV1*LIV1
Prod_of_EGR1*Hillscfos_EGR1 - Deg_of_EGR1*EGR1
Prod_of_PAK1*HillsCDC42_PAK1 - Deg_of_PAK1*PAK1
Prod_of_TrCP*HillsCsn_TrCP - Deg_of_TrCP*TrCP
Prod_of_FGFR*HillsFGF_FGFR - Deg_of_FGFR*FGFR
Prod_of_cMet*HillsHGF_cMet*HillsCD44_cMet - Deg_of_cMet*cMet
Prod_of_IGF1R*HillsIGF1_IGF1R - Deg_of_IGF1R*IGF1R
Prod_of_PDGFR*HillsPDGF_PDGFR - Deg_of_PDGFR*PDGFR
Prod_of_EGFR*HillsEGF_EGFR - Deg_of_EGFR*EGFR
Prod_of_JAK*HillsLIFR_JAK - Deg_of_JAK*JAK
Prod_of_FUS*HillsSMO_FUS - Deg_of_FUS*FUS
Prod_of_TGF*HillsTWIST1_TGF*HillsGLI_TGF*HillsSNAI1_TGF*HillsGoosecoid_TGF - Deg_of_TGF*TGF
Prod_of_miR200*HillsSNAI1_miR200*HillsZEB1_miR200*HillsZEB2_miR200 - Deg_of_miR200*miR200
Prod_of_HGF - Deg_of_HGF*HGF
Prod_of_CD44*HillsTCFLEF_CD44 - Deg_of_CD44*CD44
Prod_of_Ecadherin*HillsKLF4_Ecadherin*Hillscateninmemb_Ecadherin*HillsTWIST1_Ecadherin*HillsSNAI2_Ecadherin*HillsSNAI1_Ecadherin*HillsZEB1_Ecadherin*HillsFOXC2_Ecadherin*HillsHEY1_Ecadherin - Deg_of_Ecadherin*Ecadherin];
