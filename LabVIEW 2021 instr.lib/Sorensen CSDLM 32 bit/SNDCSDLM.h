#include <cvidef.h>

/*=================== Sorensen DCS/DLM Include File =========================*/
     
#ifndef __SNDCSDLM_HEADER
#define __SNDCSDLM_HEADER

#include <vpptype.h>

#if defined(__cplusplus) || defined(__cplusplus__)
extern "C" {
#endif

/*****************************************************************************/
/*= Define Instrument Specific Error/Warning Codes Here =====================*/
/*****************************************************************************/
#define VI_ERROR_INSTR_FILE_OPEN                (_VI_ERROR+0x3FFC0800L)
#define VI_ERROR_INSTR_FILE_WRITE               (_VI_ERROR+0x3FFC0801L)
#define VI_ERROR_INSTR_INTERPRETING_RESPONSE    (_VI_ERROR+0x3FFC0803L)

#define VI_INSTR_WARNING_OFFSET                           (0x3FFC0900L)
#define VI_INSTR_ERROR_OFFSET                   (_VI_ERROR+0x3FFC0900L)

#define SNDCSDLM_ERROR_SYNTAX                       (VI_INSTR_ERROR_OFFSET + 0xF0L)

/*****************************************************************************/
/* Define Status Byte and Service Request Register Bits                      */
/*****************************************************************************/
#define	SNDCSDLM_SB_PROTEVENT	0x02
#define	SNDCSDLM_SB_ERRORQUERY	0x04
#define	SNDCSDLM_SB_MAV			0x10
#define	SNDCSDLM_SB_STANDEVENT	0x20
#define	SNDCSDLM_SB_SRQ			0x40

/*****************************************************************************/
/* Define Standard Event Register Bits                                       */
/*****************************************************************************/
#define	SNDCSDLM_SE_OPC			0x01
#define	SNDCSDLM_SE_ERRORQUERY	0x04
#define	SNDCSDLM_SE_DEVICEERROR	0x08
#define	SNDCSDLM_SE_RANGEERROR	0x10
#define	SNDCSDLM_SE_SYNTAXERROR	0x20
#define	SNDCSDLM_SE_PWRON		0X80

/*****************************************************************************/
/* Define Protection Event and Protection Condition Register Bits            */
/*****************************************************************************/
#define	SNDCSDLM_PE_VOLTMODE	0x01
#define	SNDCSDLM_PE_CURRMODE	0x02
#define	SNDCSDLM_PE_HW			0x04
#define	SNDCSDLM_PE_OVP			0x08
#define	SNDCSDLM_PE_OTP			0x10
#define	SNDCSDLM_PE_EXTSD		0x20
#define	SNDCSDLM_PE_FOLD		0x40
#define	SNDCSDLM_PE_PRGMERROR	0X80

/*****************************************************************************/
/* Define Foldback Modes                                                     */
/*****************************************************************************/
#define	SNDCSDLM_FB_NORMAL		0x00
#define	SNDCSDLM_FB_VOLTMODE	0x01
#define	SNDCSDLM_FB_CURRMODE	0x02

/*****************************************************************************/
/* Maximum time a thread will wait to gain control of the session, in        */
/* milli-seconds.															 */
/* All functions have an exclusive lock by VI session, preventing other      */
/* threads accessing the same function.                                      */
/*****************************************************************************/
#define THREAD_LOCK_TIMEOUT 7000

/*****************************************************************************/
/*= GLOBAL USER-CALLABLE FUNCTION DECLARATIONS (Exportable Functions) =======*/
/*****************************************************************************/
ViStatus CVIFUNC SNDCSDLM_init                   (ViRsrc         resourceName,
                                                  ViBoolean      IDQuery,
                                                  ViBoolean      resetDevice,
                                                  ViPSession     instrSession);
                              
ViStatus CVIFUNC SNDCSDLM_GenerateDCVolt         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage);
                                        
ViStatus CVIFUNC SNDCSDLM_GenerateDCCurr         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       current);
                                        
ViStatus CVIFUNC SNDCSDLM_GenerateDCVRamp        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage,
                                                  ViReal64       time);
                                          
ViStatus CVIFUNC SNDCSDLM_GenerateDCCRamp        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       current,
                                                  ViReal64       time);

ViStatus CVIFUNC SNDCSDLM_OutState               (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      state);

ViStatus CVIFUNC SNDCSDLM_MeasureDCVolt          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *voltage);
                                    
ViStatus CVIFUNC SNDCSDLM_MeasureDCCurr          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *current);

ViStatus CVIFUNC SNDCSDLM_ModeQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt16        *mode);

ViStatus CVIFUNC SNDCSDLM_VoltMode               (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      serviceRequest);

ViStatus CVIFUNC SNDCSDLM_CurrMode               (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      serviceRequest);

ViStatus CVIFUNC SNDCSDLM_NormalMode             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[]);

ViStatus CVIFUNC SNDCSDLM_IsolationRelay         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      state);

ViStatus CVIFUNC SNDCSDLM_SenseRelay             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      state);

ViStatus CVIFUNC SNDCSDLM_ConfigDCVolt           (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage);
                                          
ViStatus CVIFUNC SNDCSDLM_ConfigDCCurr           (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       current);

ViStatus CVIFUNC SNDCSDLM_ConfigDCVRamp          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage,
                                                  ViReal64       time);
                                          
ViStatus CVIFUNC SNDCSDLM_ConfigDCCRamp          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       current,
                                                  ViReal64       time);

ViStatus CVIFUNC SNDCSDLM_ConfigOVP              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       ovp);
                                      
ViStatus CVIFUNC SNDCSDLM_ConfigSoftLimits       (ViSession      instruSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage,
                                                  ViReal64       current);

ViStatus CVIFUNC SNDCSDLM_ConfigPowerOn          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       voltage,
                                                  ViReal64       current,
                                                  ViReal64       ovp);

ViStatus CVIFUNC SNDCSDLM_ConfigFoldback         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt16        mode);

ViStatus CVIFUNC SNDCSDLM_ConfigProtDelay        (ViSession      instrSession,
                                                  ViChar         channelName[],
                                                  ViReal64       delay);

ViStatus CVIFUNC SNDCSDLM_ConfigVoltAve          (ViSession      instrSession,
                                                  ViChar         channelName[],
                                                  ViInt16        average);

ViStatus CVIFUNC SNDCSDLM_ConfigCurrAve          (ViSession      instrSession,
                                                  ViChar         channelName[],
                                                  ViInt16        average);

ViStatus CVIFUNC SNDCSDLM_ConfigProtEventEnable  (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  protectionEventEnable);

ViStatus CVIFUNC SNDCSDLM_ConfigStandEventEnable (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  standardEventEnable);

ViStatus CVIFUNC SNDCSDLM_ConfigSerReqEnable     (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  serviceRequestEnable);

ViStatus CVIFUNC SNDCSDLM_OutputVoltQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *voltage);
                                          
ViStatus CVIFUNC SNDCSDLM_OutputCurrQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *current);
                                          
ViStatus CVIFUNC SNDCSDLM_OutputOVPQuery         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *OVP);

ViStatus CVIFUNC SNDCSDLM_OutStateQuery          (ViSession      instruSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *state);

ViStatus CVIFUNC SNDCSDLM_IsoRelayQuery          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *state);

ViStatus CVIFUNC SNDCSDLM_SenseRelayQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *state);

                                         
ViStatus CVIFUNC SNDCSDLM_SoftLimitsQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *voltage,
                                                  ViReal64       *current);

ViStatus CVIFUNC SNDCSDLM_PowerOnQuery           (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *voltage,
                                                  ViReal64       *current,
                                                  ViReal64       *OVP);

ViStatus CVIFUNC SNDCSDLM_protDelayQuery         (ViSession      instrumentHandle,
                                                  ViChar         channelName[],
                                                  ViReal64       *delay);

ViStatus CVIFUNC SNDCSDLM_measVoltAveQuery       (ViSession      instrSession,
                                                  ViChar         channelName[],
                                                  ViInt16        *average);

ViStatus CVIFUNC SNDCSDLM_measCurrAveQuery       (ViSession      instrSession,
                                                  ViChar         channelName[],
                                                  ViInt16        *average);

                                       
ViStatus CVIFUNC SNDCSDLM_SendSWTrigger          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt16        triggerType);
                                          
ViStatus CVIFUNC SNDCSDLM_AbortTrigger           (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[]);

ViStatus CVIFUNC SNDCSDLM_StatusByteQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *statusByte,
                                                  ViChar _VI_FAR statusMessage[]);
                                          
ViStatus CVIFUNC SNDCSDLM_StandEventQuery        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *standardEventStatusRegister,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_StandEventEnableQuery  (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *standardEventEnableRegister,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_ProtEventQuery         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *protEventReg,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_ProtEventEnableQuery   (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *protEventEnableRegister,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_ProtCondQuery          (ViSession       instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *protCondReg,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_ServiceReqEnableQuery  (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  unsigned char  *serviceReqEnableRegister,
                                                  ViChar _VI_FAR statusMessage[]);

ViStatus CVIFUNC SNDCSDLM_reset                  (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[]);

ViStatus CVIFUNC SNDCSDLM_clear                  (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[]);

ViStatus CVIFUNC SNDCSDLM_errorQuery             (ViSession      instrSession,
                                                  ViPInt32       errorCode,
                                                  ViChar _VI_FAR errorMessage[]);
                                    
ViStatus CVIFUNC SNDCSDLM_errorMessage           (ViSession      instrSession,
                                                  ViStatus       statusCode,
                                                  ViChar _VI_FAR message[]);
                                      
ViStatus CVIFUNC SNDCSDLM_revisionQuery          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR driverRev[],
                                                  ViChar _VI_FAR instrRev[]);
                                          
ViStatus CVIFUNC SNDCSDLM_idQuery                (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR idBuffer[]);
                                 
ViStatus CVIFUNC SNDCSDLM_ModelQuery             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *modelVolt,
                                                  ViReal64       *modelCurr);

// Added TCP/IP commands 6-28-05 // RBF
ViStatus CVIFUNC SNDCSDLM_ConfigIp               (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR ipSetAddress[]);

ViStatus CVIFUNC SNDCSDLM_IpQuery                (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR ipGetAddress[]);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigMask             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR maskSetAddress[]);

ViStatus CVIFUNC SNDCSDLM_MaskQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR maskGetAddress[]);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigGate             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR gateSetAddress[]);

ViStatus CVIFUNC SNDCSDLM_GateQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR gateGetAddress[]);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigDNS              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR dnsSetAddress[]);

ViStatus CVIFUNC SNDCSDLM_DNSQuery                (ViSession     instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR dnsGetAddress[]);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigPort             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt32        listenPort);

ViStatus CVIFUNC SNDCSDLM_PortQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt32        *listenPort);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigTerm             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt32        terminator);

ViStatus CVIFUNC SNDCSDLM_TermQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViInt32        *terminator);

ViStatus CVIFUNC SNDCSDLM_ConfigSlaveBaud        (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64        slaveBaud);

ViStatus CVIFUNC SNDCSDLM_SlaveBaudQuery         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       *slaveBaud);

ViStatus CVIFUNC SNDCSDLM_ConfigHost             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR setHost[]);

ViStatus CVIFUNC SNDCSDLM_HostQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR getHost[]);

ViStatus CVIFUNC SNDCSDLM_ConfigDesc             (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR setDesc[]);

ViStatus CVIFUNC SNDCSDLM_DescQuery              (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR getDesc[]);
                                                  
ViStatus CVIFUNC SNDCSDLM_MACQuery               (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR getMAC[]);

ViStatus CVIFUNC SNDCSDLM_ConfigAutoIP           (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      autoIPMode);

ViStatus CVIFUNC SNDCSDLM_AutoIPQuery            (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *autoIPMode);

ViStatus CVIFUNC SNDCSDLM_ConfigDHCPMode         (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      dhcpMode);

ViStatus CVIFUNC SNDCSDLM_DHCPModeQuery          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *dhcpMode);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigLANLED          (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      lanLED);

ViStatus CVIFUNC SNDCSDLM_LANLEDQuery            (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViBoolean      *lanLED);
                                                  
ViStatus CVIFUNC SNDCSDLM_ConfigLastCalDate      (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       month,
                                                  ViReal64       day,
                                                  ViReal64       year);

ViStatus CVIFUNC SNDCSDLM_LastCalDateQuery       (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR lastCalDate[]);  

ViStatus CVIFUNC SNDCSDLM_ConfigNextCalDate      (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViReal64       month,
                                                  ViReal64       day,
                                                  ViReal64       year);

ViStatus CVIFUNC SNDCSDLM_NextCalDateQuery       (ViSession      instrSession,
                                                  ViChar _VI_FAR channelName[],
                                                  ViChar _VI_FAR nextCalDate[]);  


ViStatus CVIFUNC SNDCSDLM_close                  (ViSession      instrSession);

#if defined(__cplusplus) || defined(__cplusplus__)
}
#endif

/*****************************************************************************/
/*=== END INCLUDE FILE ======================================================*/
/*****************************************************************************/

#endif
