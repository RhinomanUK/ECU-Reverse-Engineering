#define UNLOADED_FILE   
#include <idc.idc>

static main(void)
{
MakeRptCmt(0XC207 "Throttle closed"  );
MakeRptCmt(0XC20E " throttle fully open"  );
MakeRptCmt(0XC7CE "dMAP comparison "  );
MakeRptCmt(0XC7CF "MAP comp for MT, alt. to C7D1 "  );
MakeRptCmt(0XC7D1 "MAP comp for MT, alt. to C7CF "  );
MakeRptCmt(0XC7D3 "BARO limit High "  );
MakeRptCmt(0XC7D4 "BARO Limit Low "  );
MakeRptCmt(0XC7D5 "MAP comparison "  );
MakeRptCmt(0XC7D7 "timer value for a closed loop function "  );
MakeRptCmt(0XC7D8 "TPS_60deg    "  );
MakeRptCmt(0XC7D9 "related to TIDLE "  );
MakeRptCmt(0XC7DA "init value for WTS_CNT_151 "  );
MakeRptCmt(0XC7DB "WTS_n25  -25C inj related "  );
MakeRptCmt(0XC7DC "WTS_0C  related to inj "  );
MakeRptCmt(0XC7DD "PW_LIM limits the inj_pw to n in two shot mode (0Xword) "  );
MakeRptCmt(0XC7DE "delay between inj pulses in two shot mode "  );
MakeRptCmt(0XC7DF "related to INJ_byte_BE (0Xword?)"  );
MakeRptCmt(0XC7E1 "250us in CPS counts "  );
MakeRptCmt(0XC7E3 "limit for intermediate inj_pw sum  "  );
MakeRptCmt(0XC7E5 "WTS_n15C - a threshold for fuel enrichment "  );
MakeRptCmt(0XC7E6 "this is a multiplier for WTS_CORR_A4 "  );
MakeRptCmt(0XC7E7 "TPS_60degs "  );
MakeRptCmt(0XC7E8 "limit for EGR_B5? "  );
MakeRptCmt(0XC7E9 "WTS_30C  "  );
MakeRptCmt(0XC7EA "IAT_n12C   "  );
MakeRptCmt(0XC7EB "RPM_6500 "  );
MakeRptCmt(0XC7EC "limit for COUNT_14A "  );
MakeRptCmt(0XC7ED "alt. limit for COUNT_14A "  );
MakeRptCmt(0XC7EE "alt. limit for COUNT_14A "  );
MakeRptCmt(0XC7F3 "RPM compare used for BYTE_B5 "  );
MakeRptCmt(0XC7F4 "alternative to C7E7 "  );
MakeRptCmt(0XC7FB "WTS_20C  "  );
MakeRptCmt(0XC7FC "WTS_35C  "  );
MakeRptCmt(0XC7FD "WTS_40C  "  );
MakeRptCmt(0XC7FE "IAT_n12C "  );
MakeRptCmt(0XC7FF "IAT_45C  "  );
MakeRptCmt(0XC800 "RPM_1400 "  );
MakeRptCmt(0XC801 "VSS_6MPH "  );
MakeRptCmt(0XC802 "dle switch status count IS_CNT_14E "  );
MakeRptCmt(0XC803 "TFT related "  );
MakeRptCmt(0XC805 "TFT related "  );
MakeRptCmt(0XC807 "807 and C809 are STFT related switch = "  );
MakeRptCmt(0XC819 "his is a STFT comparison when Evap turns OFF "  );
MakeRptCmt(0XC81A "MAP comparison related to STFT "  );
MakeRptCmt(0XC81B "MAP comparison related to STFT (0Xword?)"  );
MakeRptCmt(0XC81D "WTS_70C  "  );
MakeRptCmt(0XC81E "IAT_60C  "  );
MakeRptCmt(0XC81F "close loop related? "  );
MakeRptCmt(0XC821 "TFS_1M5S "  );
MakeRptCmt(0XC823 "?? "  );
MakeRptCmt(0XC825 "dMAP comparison "  );
MakeRptCmt(0XC827 "dMAP comparison "  );
MakeRptCmt(0XC828 "dMAP comparison "  );
MakeRptCmt(0XC829 "comparison of MAP v IAT? "  );
MakeRptCmt(0XC82A "?? "  );
MakeRptCmt(0XC82B "WTS_40C  "  );
MakeRptCmt(0XC82C "IAT_n20C  "  );
MakeRptCmt(0XC82D "RPM_2800 "  );
MakeRptCmt(0XC82E "dTPS comparison? "  );
MakeRptCmt(0XC82F "dTPS comparison? "  );
MakeRptCmt(0XC830 "dTPS comparison? "  );
MakeRptCmt(0XC831 "dTPS comparison? "  );
MakeRptCmt(0XC832 "multiplier for dTPS? "  );
MakeRptCmt(0XC833 "dTPS scalar (0Xword)"  );
MakeRptCmt(0XC835 "dTPS scalar (0Xword)"  );
MakeRptCmt(0XC837 "RPM_1000  "  );
MakeRptCmt(0XC838 "VSS_06MPH "  );
MakeRptCmt(0XC839 "default inj_pw "  );
MakeRptCmt(0XC83B "dTPS comparison "  );
MakeRptCmt(0XC83D "count value for inj_cnt_15E "  );
MakeRptCmt(0XC83E "count value for INJ_CNT1 "  );
MakeRptCmt(0XC83F "dRPM_n920 - dRPM = -920 (0Xdecelerating) "  );
MakeRptCmt(0XC841 "count value for INJ_IAT_CNT, related to INJ_IAT_CORR "  );
MakeRptCmt(0XC842 "correction for auto in PN "  );
MakeRptCmt(0XC843 "correction for ac on "  );
MakeRptCmt(0XC844 "correction for VSS =?  "  );
MakeRptCmt(0XC845 "correction for auto/manual?  "  );
MakeRptCmt(0XC846 "correction for auto/manual?  "  );
MakeRptCmt(0XC847 "comparison for dTPS "  );
MakeRptCmt(0XC848 "RPM_1200 "  );
MakeRptCmt(0XC849 "auto - related to byte_16C "  );
MakeRptCmt(0XC84A "manual - related to byte_16C "  );
MakeRptCmt(0XC84B "RPM_7000 - rev limiter"  );
MakeRptCmt(0XC84C "RPM_6800 - rev limiter"  );
MakeRptCmt(0XC84D "related to TPS_CNT_14C "  );
MakeRptCmt(0XC84E "TFS_15S ?"  );
MakeRptCmt(0XC850 "related to TPS_CNT_14C "  );
MakeRptCmt(0XC851 "comparison for dTPS_87 related to COUNT_15D "  );
MakeRptCmt(0XC852 "comparison for dTPS_87 related to COUNT_15D "  );
MakeRptCmt(0XC853 "value for related to COUNT_15D compared to RPM? "  );
MakeRptCmt(0XC854 "VSS_06MPH  "  );
MakeRptCmt(0XC855 "WTS_0C  "  );
MakeRptCmt(0XC856 "WTS_81C  "  );
MakeRptCmt(0XC857 "IAT_21C  "  );
MakeRptCmt(0XC858 "dRPM_n440  "  );
MakeRptCmt(0XC85A "value for CTS_CNT_14D "  );
MakeRptCmt(0XC85B "value for COUNT_131 "  );
MakeRptCmt(0XC85C "threshold to switch between WTS_CORR_B8 and WTS_CORR_AD "  );
MakeRptCmt(0XC85D "value for COUNT_160 "  );
MakeRptCmt(0XC85E "start value for one-shot counter F2 "  );
MakeRptCmt(0XC85F "comparison for WTS_CORR_AD "  );
MakeRptCmt(0XC860 "RPM_1500 "  );
MakeRptCmt(0XC861 "dRPM_n440 "  );
MakeRptCmt(0XC863 "Max vlue for COUNT_163 "  );
MakeRptCmt(0XC864 "TPSV threshold "  );
MakeRptCmt(0XC865 "related to word_10B, may be ISC related "  );
MakeRptCmt(0XC866 "value for WTS_CNT_164 "  );
MakeRptCmt(0XC867 "decrement value for "  );
MakeRptCmt(0XC868 "TFS_3A  for post start enrichment "  );
MakeRptCmt(0XC86A "decrement value for post start enrichment "  );
MakeRptCmt(0XC86B "comparison for ISC_F9 "  );
MakeRptCmt(0XC86D "comparison for ISC_F9 "  );
MakeRptCmt(0XC86F "used when determining if we have reached ISC_Target_Pos "  );
MakeRptCmt(0XC870 "used when determining if we have reached ISC_Target_Pos "  );
MakeRptCmt(0XC871 "used when determining if we have reached ISC_Target_Pos "  );
MakeRptCmt(0XC872 "dTPS comparison, signed value "  );
MakeRptCmt(0XC873 "auto, related to ISC "  );
MakeRptCmt(0XC875 "MT, related to ISC "  );
MakeRptCmt(0XC877 "auto, related to ISC "  );
MakeRptCmt(0XC879 "MT, related to ISC "  );
MakeRptCmt(0XC87B "related to ISC "  );
MakeRptCmt(0XC87D "related to ISC "  );
MakeRptCmt(0XC87F "related to target Idle error "  );
MakeRptCmt(0XC880 "related to target Idle error "  );
MakeRptCmt(0XC881 "related to target Idle error "  );
MakeRptCmt(0XC882 "value for CNT_11F "  );
MakeRptCmt(0XC883 "default for CNT_120, other a WTS LUT is used "  );
MakeRptCmt(0XC884 "value for CNT_121 "  );
MakeRptCmt(0XC885 "TFS_1M31S ? "  );
MakeRptCmt(0XC887 "TFS_5S "  );
MakeRptCmt(0XC889 "comparison for ISC_Cnt_11D+1 "  );
MakeRptCmt(0XC88A "value for IS_CNT_119 "  );
MakeRptCmt(0XC88B "offset for WTS_127 if auto in PN "  );
MakeRptCmt(0XC88C "offset for WTS_127 if auto in RDL "  );
MakeRptCmt(0XC88D "value for count_11A "  );
MakeRptCmt(0XC88E "alt. value for count_11A "  );
MakeRptCmt(0XC88F "alt. value for count_11A "  );
MakeRptCmt(0XC890 "alt. value for count_11A "  );
MakeRptCmt(0XC891 "alt. value for count_11A "  );
MakeRptCmt(0XC892 "alt. value for count_11A "  );
MakeRptCmt(0XC893 "alt. value for count_11A "  );
MakeRptCmt(0XC894 "alt. value for count_11A "  );
MakeRptCmt(0XC895 "value added to ISC_103 "  );
MakeRptCmt(0XC897 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC899 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC89B "alt. value added to ISC_103 "  );
MakeRptCmt(0XC89D "alt. value added to ISC_103 "  );
MakeRptCmt(0XC89F "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8A1 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8A3 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8A5 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8A7 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8A9 "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8AB "alt. value added to ISC_103 "  );
MakeRptCmt(0XC8AD "value for ISC_RFAN_CORR "  );
MakeRptCmt(0XC8AF "value for ISC_RFAN_CORR "  );
MakeRptCmt(0XC8B1 "value for ISC_RFAN_CORR "  );
MakeRptCmt(0XC8B3 "ISC related "  );
MakeRptCmt(0XC8B5 "ISC related "  );
MakeRptCmt(0XC8B7 "value for ISC_PS_CORR "  );
MakeRptCmt(0XC8B9 "decrement value for a counter WTS_BARO_FD? "  );
MakeRptCmt(0XC8BB "ISC related MT "  );
MakeRptCmt(0XC8BD "ISC related auto "  );
MakeRptCmt(0XC8BF "init value for  byte_16 MT"  );
MakeRptCmt(0XC8C1 "init value for DEF_ISC_POS_18 MT"  );
MakeRptCmt(0XC8C3 "init value for  byte_16 AT"  );
MakeRptCmt(0XC8C5 "init value for DEF_ISC_POS_18? at "  );
MakeRptCmt(0XC8C7 "init value for  byte_1A"  );
MakeRptCmt(0XC8C9 "init value for byte_1C"  );
MakeRptCmt(0XC8CB "ISC related"  );
MakeRptCmt(0XC8CD "ISC related"  );
MakeRptCmt(0XC8CF "VSS comparison for ISC"  );
MakeRptCmt(0XC8D0 "VSS comparison for ISC"  );
MakeRptCmt(0XC8D1 "VSS_4_35MPH"  );
MakeRptCmt(0XC8D2 "value for byte_122 AT"  );
MakeRptCmt(0XC8D3 "value for byte_122 MT"  );
MakeRptCmt(0XC8D4 "WTS_70C_ISC"  );
MakeRptCmt(0XC8D5 "WTS_FF"  );
MakeRptCmt(0XC8D6 "WTS_70_ISC"  );
MakeRptCmt(0XC8D7 "dTPS comparison ISC related"  );
MakeRptCmt(0XC8D8 "BATT_12V* ISC_MR related"  );
MakeRptCmt(0XC8D9 "WTS_n20C"  );
MakeRptCmt(0XC8DA "IAT_n20C"  );
MakeRptCmt(0XC8DB "WTS_17C"  );
MakeRptCmt(0XC8DC "VSS_3_1MPH"  );
MakeRptCmt(0XC8DD "VSS_8_7MPH"  );
MakeRptCmt(0XC8DE "RPM/VSS comparison for shift light"  );
MakeRptCmt(0XC8DF "MAP_600mB comparison for shift light"  );
MakeRptCmt(0XC8E0 "RPM_1800 comparison for shift light"  );
MakeRptCmt(0XC8E1 "RPM_3000 comparison for shift light"  );
MakeRptCmt(0XC8E2 "RPM_50 hysteresis related to shift light"  );
MakeRptCmt(0XC8E3 "value for count_F3"  );
MakeRptCmt(0XC8E4 "comparison for count_F3"  );
MakeRptCmt(0XC8E5 "comparison for count_14F"  );
MakeRptCmt(0XC8E6 "comparison for count_14F"  );
MakeRptCmt(0XC8E7 "WTS_40C EGR related"  );
MakeRptCmt(0XC8E8 "IAT_10C EGR related"  );
MakeRptCmt(0XC8E9 "RPM_1000 EGR related AT"  );
MakeRptCmt(0XC8EA "RPM_1000 EGR related MT"  );
MakeRptCmt(0XC8EB "RPM comparison EGR related"  );
MakeRptCmt(0XC8EC "RPM comparison EGR related"  );
MakeRptCmt(0XC8ED "RPM comparison EGR related"  );
MakeRptCmt(0XC8EE "RPM comparison EGR related"  );
MakeRptCmt(0XC8EF "TPSA_60 - max TPS for EGR on?"  );
MakeRptCmt(0XC8F0 "BARO threshold for EGR"  );
MakeRptCmt(0XC8F1 "BARO threshold for EGR"  );
MakeRptCmt(0XC8F2 "MAP threshold for EGR AT"  );
MakeRptCmt(0XC8F3 "MAP threshold for EGR MT"  );
MakeRptCmt(0XC8F4 "RPM comparison EGR related"  );
MakeRptCmt(0XC8F5 "RPM comparison EGR related"  );
MakeRptCmt(0XC8F6 "RPM comparison EGR related"  );
MakeRptCmt(0XC8F7 "RPM comparison EGR related"  );
MakeRptCmt(0XC8F8 "MAP comparison EGR related"  );
MakeRptCmt(0XC8F9 "MAP comparison EGR related"  );
MakeRptCmt(0XC8FA "MAP comparison EGR related"  );
MakeRptCmt(0XC8FB "MAP comparison EGR related"  );
MakeRptCmt(0XC8FC "value for EGR_CNT_13A"  );
MakeRptCmt(0XC8FD "value for EGR_CNT_13B, 3C"  );
MakeRptCmt(0XC8FE "value for COUNT_138"  );
MakeRptCmt(0XC8FF "value for EGR_CNT_135"  );
MakeRptCmt(0XC900 "dMAP comparison for EGR"  );
MakeRptCmt(0XC901 "dMAP comparison for EGR"  );
MakeRptCmt(0XC902 "dMAP comparison for EGR"  );
MakeRptCmt(0XC903 "dMAP comparison for EGR"  );
MakeRptCmt(0XC904 "WTS comparison for PTC"  );
MakeRptCmt(0XC905 "RPM comparison for PTC"  );
MakeRptCmt(0XC906 "BATTV comparison for PTC"  );
MakeRptCmt(0XC907 "WTS comparison for Evap Purge"  );
MakeRptCmt(0XC908 "IAT comparison for Evap Purge"  );
MakeRptCmt(0XC909 "value for EVAP_CNT_154"  );
MakeRptCmt(0XC90A "RPM comparison for Evap Purge"  );
MakeRptCmt(0XC90B "RPM comparison for Evap Purge"  );
MakeRptCmt(0XC90C "RPM comparison for Evap Purge"  );
MakeRptCmt(0XC90D "MAP comparison for O2H"  );
MakeRptCmt(0XC90E "RPM comparison for O2H"  );
MakeRptCmt(0XC90F "RPM comparison for O2H"  );
MakeRptCmt(0XC910 "WTS comparison for O2H"  );
MakeRptCmt(0XC912 "WTS comparison for O2H"  );
MakeRptCmt(0XC914 "TPS comparison for O2H"  );
MakeRptCmt(0XC915 "TPS comparison for O2H"  );
MakeRptCmt(0XC916 "value for count_153"  );
MakeRptCmt(0XC917 "value for TPS_CNT_152"  );
MakeRptCmt(0XC918 "alt. value for TPS_CNT_152"  );
MakeRptCmt(0XC919 "WTS threshold for rad fan ON."  );
MakeRptCmt(0XC91B "WTS threshold for rad fan OFF."  );
MakeRptCmt(0XC91D "value for RF_CNT_155"  );
MakeRptCmt(0XC91E "value for RF_CNT_155"  );
MakeRptCmt(0XC91F "MAP threshold for IGN_WTS_CORR"  );
MakeRptCmt(0XC920 "offset value for CPS_CNT_MOD"  );
MakeRptCmt(0XC922 "comparison for WTS_CORR_AD related to IGN_IDLE_CORR"  );
MakeRptCmt(0XC923 "RPM comparison related to IGN_IDLE_CORR"  );
MakeRptCmt(0XC924 "IGN_MAX_ADV"  );
MakeRptCmt(0XC925 "IGN_MIN_ADV"  );
MakeRptCmt(0XC926 "MAP comparison related to IGN_IAT_CORR"  );
MakeRptCmt(0XC927 "WTS comparison related to IGN_v_WTS_IGN8"  );
MakeRptCmt(0XC928 "RPM comparison for CALC_IGN_v_WTS_IGN8"  );
MakeRptCmt(0XC929 "RPM comparison for CALC_IGN_v_WTS_IGN8"  );
MakeRptCmt(0XC92A "dTPS ign correction threshold for idle"  );
MakeRptCmt(0XC92B "correction for dTPS>byte_C92A"  );
MakeRptCmt(0XC92C "decrement value for IGN_v_WTS_IGN8"  );
MakeRptCmt(0XC92D "threshold value for IGN_v_WTS_IGN8"  );
MakeRptCmt(0XC92E "value for IGN_IAT_CORR?"  );
MakeRptCmt(0XC92F "RPM threshold for IGN_IAT_CORR?"  );
MakeRptCmt(0XC930 "decrement value? for IGN_IAT_CORR?"  );
MakeRptCmt(0XC931 "decrement value? for IGN_IAT_CORR?"  );
MakeRptCmt(0XC932 "value for IGN_CNT_165"  );
MakeRptCmt(0XC933 "value for IGN_ELOAD_KICK1?"  );
MakeRptCmt(0XC934 "value for IGN_ELOAD_KICK1?"  );
MakeRptCmt(0XC935 "value for IGN_ELOAD_KICK1?"  );
MakeRptCmt(0XC936 "value for IGN_ELOAD_KICK1?"  );
MakeRptCmt(0XC937 "value for IGN_PSP_KICK"  );
MakeRptCmt(0XC938 "IGN_KICK_CNTR (0Xtaper?)"  );
MakeRptCmt(0XC939 "IGN_PSP_KICK max value"  );
MakeRptCmt(0XC93A "WTS threshold for IGN_WTSH_CORR"  );
MakeRptCmt(0XC93B "IAT threshold for IGN_WTSH_CORR"  );
MakeRptCmt(0XC93C "MAP threshold for IGN_WTSH_CORR"  );
MakeRptCmt(0XC93D "decrement value for IGN_WTSH_CORR"  );
MakeRptCmt(0XC93E "value for IGN_WTSH_CORR"  );
MakeRptCmt(0XC93F "WTS threshold for IGN_WTSH_CORR"  );
MakeRptCmt(0XC940 "MAP threshold for IGN_WTSH_CORR"  );
MakeRptCmt(0XC98D "ECU_CFG"  );
MakeRptCmt(0XC99A " STAT_21?"  );
MakeRptCmt(0XC9A2 "jump to Tx routine"  );
MakeRptCmt(0XC9A5 "first RxByte? disable Tx"  );
MakeRptCmt(0XC9B2 "test	for error flags"  );
MakeRptCmt(0XCC34 " is this 50h? "  );
MakeRptCmt(0XCC3F " =D/X "  );
MakeRptCmt(0XD1AE "  =58h  RPM "  );
MakeRptCmt(0XD7EE " "  );
MakeRptCmt(0XD9CB "RPM - 600"  );
MakeRptCmt(0XD9CE "quit if RPM<600"  );
MakeRptCmt(0XD9D0 "RPM-1100"  );
MakeRptCmt(0XD9D3 "quit if RPM>1100"  );
MakeRptCmt(0XD9D5 "get IGN8"  );
MakeRptCmt(0XD9D7 "quit if not alrerady zero"  );
MakeRptCmt(0XD9DB "WTS-70C"  );
MakeRptCmt(0XD9DE "quit if WTS<70C"  );
MakeRptCmt(0XD9E2 "dTPS-3"  );
MakeRptCmt(0XD9E5 "quit if dTPS<3"  );
MakeRptCmt(0XD9E7 "correction for dTPS>3 ?"  );
MakeRptCmt(0XDA12 " quit if RPM <	1000rpm "  );
MakeRptCmt(0XDA8A "IGN_PSP_KICK_CNT"  );
MakeRptCmt(0XDB12 "WTSH_IGN_CORR"  );
MakeRptCmt(0XE16E "do_PTC"  );
MakeRptCmt(0XE1B3 "set PTC"  );
MakeRptCmt(0XE1B7 "clear PTC"  );
MakeRptCmt(0XE386 "clr ACO"  );
MakeRptCmt(0XE38A "set ACO"  );
MakeRptCmt(0XEC4E "update auto_TPS"  );
MakeRptCmt(0XECE9 "clear IF"  );
MakeRptCmt(0XEEF9 "where is this used? orphan code?"  );
MakeRptCmt(0XEFE0 " increment if not FF "  );
MakeRptCmt(0XEFE2 " update counter "  );
MakeRptCmt(0XF39B " set MIL "  );
MakeRptCmt(0XF59D " Fuel Level - not populated "  );
MakeRptCmt(0XF821 " PH, 5 "  );
MakeRptCmt(0XF829 " decrement count_ed "  );
MakeRptCmt(0XFBB8 "change to 1h to enable RAM read visibility on external bus"  );
MakeRptCmt(0XFC14 "init output shift register"  );
}