s??        d?   _ 'x  =   ?   ????                               SNDCSDLM                        Sorensen DLM/DCS M9                                                                                   ? ? ??ViInt16  ?  ? ??ViInt32  ? ? ??ViReal64     ? ??ViRsrc     	? 	??ViBoolean     	? 	??ViSession     ? ??ViStatus     ?  ViChar[]     ? ??ViChar     ? ??ViString     	?  ViInt16[]     	?  ViInt32[]     
?  	ViReal64[]     ? 	 
ViBoolean[]     ? ??ViConstString  ?    This instrument module provides programming support for the Sorensen DCS/DLM M9.  The module is divided into the following functions:

Functions/Classes:

(1) Initialize:
This function initializes the instrument and sets it to a default configuration.

(2) Application Functions: (Class)
This class contains high-level, test and measurement routines.  These examples call other instrument driver functions to configure, start, and read from the instrument.

(3) Configuration Functions: (Class)
This class of functions configures the instrument by setting acquisition and system configuration parameters.

(4) Action/Status Functions: (Class)
This class of functions begins or terminates an acquisition. It also provides functions which allow the user to determine the current status of the instrument.

(5) Utility Functions: (Class)
This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

(7) Close:
This function takes the instrument offline.
     ?    This class contains high-level, test and measurement routines.  These examples call other instrument driver functions to configure, start, and read from the instrument.

         Output State     ?    This class of functions configures the instrument by setting acquisition and system configuration parameters.

Functions/SubClasses:

() Function Name:
This function ...     ?    This class of functions begins or terminates an acquisition. It also provides functions which allow the user to determine the current status of the instrument.

Functions/SubClasses:

() Function Name:
This function ...    W    This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

Functions:

(1) Write To Instrument:
This function writes commands and queries to the instrument to modify parameters and query device settings.

(2) Read Instrument Data:
This function reads data from instrument buffer and returns it to the specified variable in memory.

(3) Reset:
This function resets the instrument to its default state.

(4) Self-Test:
This function runs the instrument self test and returns the test code.

(5) Error Query:
This function reads an error code from the instrument error queue.

(6) Error Message:
This function takes the Status Code and returns it as a user readable string.
 
(7) Revision Query:
This function returns the revision numbers of the instrument driver and instrument firmware.
    D    Sorensen DCS/DLM Power Supplies with an M9 Remote Programming Interface option can support up to thirty additional DCS/DLM Power Supplies with the M85 option from a single GPIB Address or RS232 Serial Port. In the following Sorensen M9 Driver Routines the ChannelName refers to the M85 Slave Address. Valid M85 Slave Addresses are two through thirty-one. Slave address zero is reserved for Group Trigger and address one is reserved for the Master M9 chassis.

This function performs the following initialization actions:

- Opens a session to the Default Resource Manager resource and a session to the specified device using the interface and address specified in the Resource_Name control.

- Performs an identification query on the Instrument.

- Resets the instrument to a known state and clears all error and status information.

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.

- Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
    q    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "GPIB::1"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
GPIB        GPIB[board]::primary address[::secondary address]
            [::INSTR]
            
The GPIB keyword is used with GPIB instruments.

The default value for optional parameters are shown below.

Optional Parameter          Default Value
-----------------------------------------
board                       0
secondary address           none - 31
        This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_OFF (0) - Skip Query
VI_ON  (1) - Do Query (Default Value)

Notes:
   
(1) Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.
    D    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_OFF (0) - Don't Reset
VI_ON  (1) - Reset Device (Default Value)

Notes:

(1) If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    7    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Notes:

(1) Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
     ?    This control contains the status code returned by the function call. See Error_Message function for descriptions of returned error codes. 

     =   ?  ?    Resource Name                     ? : ?       ID Query                          ? =? ?       Reset Device                      ? ?  ?  }    Instrument Handle                 : ????  ?    Status                             
"GPIB::1"   Yes VI_ON No VI_OFF   Yes VI_ON No VI_OFF    	           	              This function configures and initiates the power supply to generate a DC voltage on the channel you specify. Programming a negative voltage value will cause the M9 rear panel user connector Polarity relay signal to close.

SCPI: SOURCE[]:VOLTAGE <voltage value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     K    Pass the name of the channel you want to configure. Valid range is 1-31.
     x    Pass the DC voltage you want the power supply to generate.
Units: volts

Valid Range: dependent upon the model in use
    ; ?   ?  ?    Instrument Handle                 ? ? ????  ?    Status                            m 3 
 ?  ?    Channel Name                      ? 3 ? ?  ?    Voltage                                	           "1"    0.0    ?    This function configures and initiates the power supply to generate a DC current on the channel you specify.

SCPI: SOURCE[]:CURRENT <current value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     6    Pass the name of the channel you want to configure.
     x    Pass the DC voltage you want the power supply to generate.
Units: volts

Valid Range: dependent upon the model in use
    ? ?   ?  ?    Instrument Handle                 ~ ? ????  ?    Status                              3 
 ?  ?    Channel Name                       @ 3 ? ?  ?    Current                                	           "1"    0.0   ]    This function configures and initiates the power supply to generate a DC voltage ramp starting from the present output voltage and ending at the specified voltage in the specified time on the specified channel. Time range is from 100ms to 99sec. with 100ms resolution. Time is in seconds.

SCPI: SOURCE[]:VOLTAGE:RAMP <ending voltage value> <time>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     7    Pass the name of the channel you want to configure.

     w    Pass the DC voltage you want the power supply to generate.
Units: volts
Valid Range: dependent upon the model in use
     -    Ramp time in seconds.
Valid range 0.1 - 99.    # ?   ?  ?    Instrument Handle                 #? ? ????  ?    Status                            $I 3 
 ?  ?    Channel Name                      $? 3 ? ?  ?    Voltage                           % 3? ?  ?    Time                                   	           "1"    0.0    0.0   ]    This function configures and initiates the power supply to generate a DC current ramp starting from the present output current and ending at the specified current in the specified time on the specified channel. Time range is from 100ms to 99sec. with 100ms resolution. Time is in seconds.

SCPI: SOURCE[]:CURRENT:RAMP <ending current value> <time>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      6    Pass the name of the channel you want to configure.
     x    Pass the DC voltage you want the power supply to generate.
Units: amps

Valid Range: dependent upon the model in use

     .    Ramp time in seconds.
Range is 0.1 - 99 sec.    '? ?   ?  ?    Instrument Handle                 (} ? ????  ?    Status                            ) 3 
 ?  ?    Channel Name                      )@ 3 ? ?  ?    Current                           )? 3? ?  ?    Time                                   	           "1"    0.0    0.0    ?    This function sets the output state to On (1) or Off (0). If set to OFF the Voltage and Current values will be set to zero. If set to ON the Voltage and Current will be set to their last programmed values.     7    Pass the name of the channel you want to configure.

     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     +? b 6 ?  ?    Channel Name                      ,: ? 4  ?  ?    Instrument Handle                 ,? ????  ?    Status                          ???? aL ?       State                              "1"        	            On 1 Off 0    o    This function takes a voltage measurement of the output on the channel you specify.

SCPI: MEASURE[]:VOLTAGE?     +    Returns the measured value.

Units: volts     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    .? 3 ? ?  ?    Voltage Measurement               / ? 	  ?  ?    Instrument Handle                 /? ? ????  ?    Status                            0C 3 
 ?  ?    Channel Name                       	               	           "1"    o    This function takes a current measurement of the output on the channel you specify.

SCPI: MEASURE[]:CURRENT?     /    Returns the measured value.

Units:  amperes
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    1? 3 ? ?  ?    Current Measurement               2% ? 	  ?  ?    Instrument Handle                 2? ? ????  ?    Status                            3X 3 
 ?  ?    Channel Name                       	               	           "1"    ?    This function returns the operationing mode of the power supply. The two modes of operation are constant voltage (mode = 0) and constant current (mode = 1). See Protection Condition Status Register for more information.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? ? /  ?  ?    Instrument Handle               ???? \ * ?  ?    Channel Name                      5q ?H???  ?    status                          ???? [C ?  ?    Mode                               0    "1"    	            	           ?    The power supply has two modes of operation: constant current and constant voltage. This function configures the power supply to shut down if the power supply switches from constant voltage mode to constant current mode. If Service Request is set ON (1) the Protection Event Status reporting mechanism will be turned on and a GPIB Service Request will be generated upon this action.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? ? /  ?  ?    Instrument Handle               ???? \ * ?  ?    Channel Name                      8v ?H???  ?    status                          ???? Sy ?       Service Request                    0    "1"    	            On 1 Off 0   ?    The power supply has two modes of operation, constant current and constant voltage. This function configures the power supply to shut down if the power supply switches from constant current mode to constant voltage mode. If Service Request is set ON (1) the Protection Event Status reporting mechanism will be turned on and a GPIB Service Request will be generated upon this action.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? ? /  ?  ?    Instrument Handle               ???? \ * ?  ?    Channel Name                      ;} ?H???  ?    status                          ???? Tx ?       Service Request                    0    "1"    	            On 1 Off 0    ?    The power supply has two modes of operation, constant current and constant voltage. This function configures the power supply to operate in both modes. All Protection Event Status reporting mechanisms will be turned off.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? W - ?  ?    Channel Name                    ???? ? 2  ?  ?    Instrument Handle                 =? ?K???  ?    status                             "1"    0    	            a    This routine turns on/off the external user connector isolation relay on the specified channel.     7    Pass the name of the channel you want to configure.

     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? f  ?  ?    Channel Name                      ?? ?   ?  ?    Instrument Handle                 @t ????  ?    Status                          ???? ^7 ?       State                              "1"        	           On 1 Off 0    a    This routine turns on/off the external user connector isolation relay on the specified channel.     7    Pass the name of the channel you want to configure.

     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.    B[ N C ?  ?    Channel Name                    ???? Fc ?       State                             B? ? >  ?  ?    Instrument Handle                 CH ?2???  ?    Status                             "1"    On 1 Off 0        	           ?    This function configures the power supply to generate a triggered DC voltage on the channel you specify. A software trigger must be used to initiate this sequence.

SCPI: SOURCE[]:VOLTAGE:TRIG <voltage value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      7    Pass the name of the channel you want to configure.

     w    Pass the DC voltage you want the power supply to generate.
Units: volts
Valid Range: dependent upon the model in use
    E? ?   ?  ?    Instrument Handle                 FM ? ????  ?    Status                            F? 3 
 ?  ?    Channel Name                      G 3 ? ?  ?    Voltage                                	           "1"    0.0    ?    This function configures the power supply to generate a triggered DC current on the channel you specify. A software trigger must be used to initiate this sequence.

SCPI: SOURCE[]:CURRENT:TRIG <current value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      7    Pass the name of the channel you want to configure.

     w    Pass the DC voltage you want the power supply to generate.
Units: volts
Valid Range: dependent upon the model in use
    I\ ?   ?  ?    Instrument Handle                 J
 ? ????  ?    Status                            J? 3 
 ?  ?    Channel Name                      J? 3 ? ?  ?    Current                                	           "1"    0.0   K    This function configures the power supply to generate a triggered DC voltage ramp starting at the present output voltage and ending at the specified voltage in the specified time on the specified channel. Time is in seconds. See Send Software Trigger for more information.

SCPI: SOURCE[]:VOLTAGE:RAMP:TRIG <voltage value> <time>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     6    Pass the name of the channel you want to configure.
     w    Pass the DC voltage you want the power supply to generate.
Units: volts
Valid Range: dependent upon the model in use
     .    Ramp time in seconds.
Range is 0.1 - 99 sec.    M? ?   ?  ?    Instrument Handle                 N@ ? ????  ?    Status                            N? 3 
 ?  ?    Channel Name                      O 3 ? ?  ?    Voltage                           O? 2? ?  ?    Time                                   	           "1"    0.0    0.0   K    This function configures the power supply to generate a triggered DC current ramp starting at the present output current and ending at the specified current in the specified time on the specified channel. Time is in seconds. See Send Software Trigger for more information.

SCPI: SOURCE[]:CURRENT:RAMP:TRIG <current value> <time>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     6    Pass the name of the channel you want to configure.
     v    Pass the DC current you want the power supply to generate.
Units: amps
Valid Range: dependent upon the model in use
     .    Ramp time in seconds.
Range is 0.1 - 99 sec.    R8 ?   ?  ?    Instrument Handle               ???? ? ????  ?    Status                            R? 3 
 ?  ?    Channel Name                      S$ 3 ? ?  ?    Current                           S? 2? ?  ?    Time                                   	           "1"    0.0    0.0    ?    This function sets the Over Voltage Protection limit on the channel you specify. If the output of the instrument exceeds this value the instrument will shutdown and must be Reset to continue.

SCPI: SOURCE[]:VOLTAGE:PROTECTION <ovp value>
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      7    Pass the name of the channel you want to configure.

     ?    Pass the DC over voltage value you want the power supply shutdown at.
Units: volts
Valid Range: dependent upon the model in use

    U? ?   ?  ?    Instrument Handle                 V? ? ????  ?    Status                            W2 3 
 ?  ?    Channel Name                      Wq 3 ? ?  ?    Overvoltage Protection                 	           "1"    0.0    ?    This function sets the soft voltage and current programming limits for the selected channel.

SCPI: SOURCE[]:VOLTAGE:LIMIT <voltage value>
      SOURCE[]:CURRENT:LIMIT <current value>     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    Y? ?????  ?    Status                            Z4 ?   ?  ?    Instrument Handle               ???? U  ?  ?    Channel Name                    ???? T ? ?  ?    Volltage Limit                  ???? U? ?  ?    Current Limit                      	               "1"    0.0    0.0       This function sets the power on output values for voltage, current, and over voltage protection on the selected channel.

SCPI: CALIBRATE[]:INITIAL:VOLTAGE <voltage value>
      CALIBRATE[]:INITIAL:CURRENT <current value>
      CALIBRATE[]:INITIAL:VOLTAGE:PROTECTION <ovp value>     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    ]0 ?????  ?    Status                            ]? ?   ?  ?    Instrument Handle               ???? U  ?  ?    Channel Name                    ???? T ? ?  ?    Voltage                         ???? U? ?  ?    Current                         ???? ?? ?  ?    OVP                                	               "1"    0.0    0.0    0.0        This routine configures the foldback mode for the selected channel. The three mode are: 0 = off, 1 = Constant Volatge, 2 = Constant Current. Configuring the foldback mode for Constant Voltage or Constant Current will cause the power supply to shut down if the other mode becomes active.     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? e 1 ?  ?    Channel Name                    ???? bi ?  ?    Mode                              `? ? 0  ?  ?    Instrument Handle                 a? ?h???  ?    Status                             "1"    0        	           ?    Sets the programmable time delay that is executed by the supply before reporting output protection conditions after a new output voltage or current value is specified. Range is from 0 to 32 seconds.     $    Time Delay value, 0 to 32 seconds.     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? e 1 ?  ?    Channel Name                      c? bi ?  ?    Delay                             d ? 0  ?  ?    Instrument Handle                 d? ?h???  ?    Status                             "1"    0        	           ?    This routine configures the number of voltage measurements to be average upon recept of a measure output voltage command.  Acceptable number is from one (1) to five (5) and the Default is one (1). No explicit time is used between measurements.     0    Number of voltage measurements to be averaged.     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? e 1 ?  ?    Channel Name                      g4 bi ?  ?    Average                           gl ? 0  ?  ?    Instrument Handle                 h ?h???  ?    Status                             "1"    1        	           ?    This routine configures the number of current measurements to be average upon recept of a measure output current command.  Acceptable number is from one (1) to five (5) and the Default is one (1). No explicit time is used between measurements.     0    Number of current measurements to be averaged.     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? e 1 ?  ?    Channel Name                      j? bi ?  ?    Average                           j? ? 0  ?  ?    Instrument Handle                 kr ?h???  ?    Status                             "1"    1        	          b    This routine configures the Protection Event Status Enable Register which causes the instrument to shut down if Constant Current, Constant Voltage, Foldback Modes or other conditions are enabled. Along with this register the Service Request Enable Register must be programmed to generate GPIB Service Requests.

SCPI: STATUS[]:PROTECTION:ENABLE <value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? K  ?  ?    Channel Name                      nQ ?   ?  ?    Instrument Handle                 n? ?N???  ?    Status                          ???? HO    ?    Protection Event Enable            "1"        	           0    ?    This routine configures the Standard Event Status Enable Register. Along with this register the Service Request Enable Register must be programmed to generate GPIB Service Requests.

SCPI: *ESE[] <value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? K  ?  ?    Channel Name                      qI ?   ?  ?    Instrument Handle                 q? ?N???  ?    Status                          ???? HO    ?    Standard Event Enable              "1"        	           0   n    This routine sets the Service Request Enable Register which is used to enable GPIB Service Requests when a enabled protection event or standard event has occured. This register along with the Protection Event Status Enable Register or the Standard Event Status Enable Register must be programmed to enable generation of GPIB Service Requests.

SCPI: *SRE[] <value>     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? @  ?  ?    Channel Name                      t? ?   ?  ?    Instrument Handle                 u? ?>???  ?    Status                          ???? :B    ?    Service Request Enable             "1"        	           0    g    This function returns the programmed voltage value on the channel you specify.

SCPI: SOURCE[]:VOLT?
     -    Returns the measured value.

Units:  volts
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    wt 3 ? ?  ?    Programmed Voltage                w? ? 	  ?  ?    Instrument Handle                 xW ? ????  ?    Status                            x? 3 
 ?  ?    Channel Name                       	               	           "1"    j    This function returns the programmed current value on the channel you specify.

SCPI: SOURCE[]:CURRENT?
     /    Returns the measured value.

Units:  amperes
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    z? 3 ? ?  ?    Programmed Current                z? ? 	  ?  ?    Instrument Handle                 {g ? ????  ?    Status                            {? 3 
 ?  ?    Channel Name                       	               	           "1"    ?    This function returns the programmed overvoltage protection value on the channel you specify.

SCPI: SOURCE[]:VOLTAGE:PROTECTION?     /    Returns the programmed value.

Units:  volts
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      4    Pass the name of the channel you want to measure.
    }? 3 ? ?  ?    Programmed OVP                    }? ? 	  ?  ?    Instrument Handle                 ~? ? ????  ?    Status                             3 
 ?  ?    Channel Name                       	               	           "1"    :    This function gets the output state - On (1) or Off (0).     6    Pass the name of the channel you want to configure.
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? b 6 ?  ?    Channel Name                      ?? ? 4  ?  ?    Instrument Handle                 ?v ????  ?    Status                          ???? _ ?  ?    State                              "1"        	            	            C    This function gets the isolation relay state - On (1) or Off (0).     6    Pass the name of the channel you want to configure.
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?= b 6 ?  ?    Channel Name                      ?{ ? 4  ?  ?    Instrument Handle                 ?) ????  ?    Status                          ???? _ ?  ?    State                              "1"        	            	            ?    This function gets the sense relay state - On (1) or Off (0).     7    Pass the name of the channel you want to configure.

     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
    ?? b 6 ?  ?    Channel Name                      ?+ ? 4  ?  ?    Instrument Handle               ???? ????  ?    Status                          ???? _ ?  ?    State                              "1"        	            	            ?    This function recalls the soft voltage and current programming limits for the selected channel.

SCPI: SOURCE[]:VOLTAGE:LIMIT?
      SOURCE[]:CURRENT:LIMIT?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    ?v ? 	  ?  ?    Instrument Handle                 ?$ ?o???  ?    Status                            ?? 3 
 ?  ?    Channel Name                    ???? 3 ? ?  ?    Voltage Limit                   ???? 1r ?  ?    Current Limit                          	           "1"    	           	           ?    This function recalls the power on output voltage, current, and ovp values for the selected channel.

SCPI: CALIBRATE[]:INITIAL:VOLTAGE?
      CALIBRATE[]:INITIAL:CURRENT?
      CALIBRATE[]:INITIAL:VOLTAGE:PROTECTION?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

    ? ?   ?  ?    Instrument Handle                 ?? ?o???  ?    Status                            ?4 3 
 ?  ?    Channel Name                    ???? 3 ? ?  ?    Voltage                         ???? 1r ?  ?    Current                         ???? ?r ?  ?    OVP                                    	           "1"    	           	           	           z    This function recalls the protection condition reporting delay for the selected channel.

SCPI: OUTPUT:PROTECTION:DELAY?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

     #    Protection condition delay value.    ?l ?   ?  ?    Instrument Handle                 ? ? ????  ?    Status                            ?? 3 
 ?  ?    Channel Name                      ?? 3 ? ?  ?    Delay                                  	           "1"    	           ?    This function recalls the number of voltage reading that will be averaged upon receipt of a voltage measurent command for the selected channel.

SCPI: MEASURE:VOLTAGE:AVERAGE?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

     7    The number of voltage readings that will be averaged.    ?? ?   ?  ?    Instrument Handle                 ?e ? ????  ?    Status                            ?? 3 
 ?  ?    Channel Name                      ?' 3 ? ?  ?    Average                                	           "1"    	            ?    This function recalls the number of current reading that will be averaged upon receipt of a current measurent command for the selected channel.

SCPI: MEASURE:CURRENT:AVERAGE?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      5    Pass the name of the channel you want to measure.

     7    The number of current readings that will be averaged.    ? ?   ?  ?    Instrument Handle                 ?? ? ????  ?    Status                            ?I 3 
 ?  ?    Channel Name                      ?? 3 ? ?  ?    Average                                	           "1"    	           z    This function sends a software trigger to the channel you specify. Setting the channel to zero will trigger all power supplies that have been previously configured for triggered voltage and/or current outputs. The trigger types are as follows:

1 = Voltage
2 = Current
3 = Both Voltage and Current
4 = Voltage or Current Ramp

SCPI: TRIGGER[]:TYPE <value>
      TRIGGER[]:RAMP     |    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.  ???? ? 8  ?  ?    Instrument Handle                 ?> ?<???  ?    Status                          ???? N 8 ?  ?    Channel Name                    ???? N> ?  ?    Trigger Type                       0    	           "1"    1    ?    This function clears all previously configured voltage and current triggers for the specified channel.

SCPI: TRIGGER[]:ABORT      }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.   ???? ? '  ?  ?    Instrument Handle                 ?; ? ????  ?    Status                          ???? E # ?  ?    Channel Name                       0    	           "1"    ?    This function reads the status byte from the instrument and creates a string that indicates which bits are active.

SCPI: *STB[]?

     N    This control returns the error code read from the instrument's error queue.
     ?    This control returns the error message string read from the instrument's error message queue.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ? U,    ?    Status Byte                       ?Z ? n ? ,    Status Message                    ? ?(???  ?    Status                            ?? ? 5  ?  ?    Instrument Handle               ???? Y < ?  ?    Channel Name                       	            	            	               "1"    ?    This function reads the standard event status register from the instrument and creates a string that indicates which bits are active.

SCPI: *ESR[]?

     N    This control returns the error code read from the instrument's error queue.
     ?    This control returns the error message string read from the instrument's error message queue.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ? ?Y    ?    Standard Event Status Register    ?Z ? t ? ,    Status Message                    ? ?>???  ?    Status                            ?? ? 5  ?  ?    Instrument Handle               ???? = < ?  ?    Channel Name                       	            	            	               "1"    ?    This function reads the event status enable register from the instrument and creates a string that indicates which bits are active.

SCPI: *ESE[]?

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None  ???? ?Y    ?    Standard Event  Enable Register ???? ? t ? ,    Status Message                    ? ?>???  ?    Status                            ?? ? 5  ?  ?    Instrument Handle               ???? = < ?  ?    Channel Name                       	            	            	               "1"    ?    This function reads the protection event status reister from the instrument and creates a string that indicates which bits are active.

SCPI: STATUS[]:PROTECTION:EVENT?

     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None  ???? An    ?    Protection Event Register       ???? ? ? ? ,    Status Message                  ????g???  ?    Status                            ? +  ?  ?    Instrument Handle               ???? > 4 ?  ?    Channel Name                       	            	            	               "1"    ?    This function reads the protection event status enable register from the instrument and creates a string that indicates which bits are active.

SCPI: STATUS[]:PROTECTION:ENABLE?

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None  ???? An    ?    Prot. Event Enable Register     ???? ? ? ? ,    Status Message                    ??g???  ?    Status                            ?+ +  ?  ?    Instrument Handle               ???? > 4 ?  ?    Channel Name                       	            	            	               "1"       This function reads the protection condition status reister from the instrument and creates a string that indicates which bits are active. Use this routine to determine the operating mode (voltage or current) of the power supply.

SCPI: STATUS[]:PROTECTION:CONDITION?

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None  ???? An    ?    Protection Condition Register   ???? ? ~ ? ,    Status Message                    ?g???  ?    Status                            ?? +  ?  ?    Instrument Handle               ???? > 4 ?  ?    Channel Name                       	            	            	               "1"    ?    This function reads the service request enable reister from the instrument and creates a string that indicates which bits are active.

SCPI:*SRE[]?

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None  ???? An    ?    Service Req. Enable Register    ???? ? ~ ? ,    Status Message                    ?g???  ?    Status                            ?? +  ?  ?    Instrument Handle               ???? > 4 ?  ?    Channel Name                       	            	            	               "1"    ?    This function resets the instrument to its Power On state and clears all error and status reporting data structures on the selected channel.

SCPI: *RST[]
      *CLS[]

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ?# ?G???  ?    Status                            ?? ? *  ?  ?    Instrument Handle               ???? E / ?  ?    Channel Name                       	               "1"    n    This function clears all error and status reporting data structures on the selected channel.

SCPI: *CLS[]

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ?s ?G???  ?    Status                            ?? ? *  ?  ?    Instrument Handle               ???? E / ?  ?    Channel Name                       	               "1"    l    This function reads an error code and error string from the instrument's error queue.

SCPI: SYSTEM:ERROR?     N    This control returns the error code read from the instrument's error queue.
     ?    This control returns the error message string read from the instrument's error message queue.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ?? = D ?  `    Error Code                        ? ? ? ? ,    Error Message                     ?? ?????  ?    Status                            ?J ? 6  ?  ?    Instrument Handle                  	            	            	               ?    This function takes the Status Code returned by the instrument driver functions, interprets it and returns it as a user readable string.      t    This control accepts the Status Code returned from the instrument driver functions.

Default Value:
0 - VI_SUCCESS     ?    This control returns the interpreted Status Code as a user readable message string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     (    Reports the status of this operation.
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL    ?x =  ?  `    Status Code                       ?? = ? ? ?    Message                           ?????  ?    Status                            ?? 5  ?  ?    Instrument Handle                  0    	            	           VI_NULL    ~    This function returns the Manufacturer, Model, Serial Number and firmware revision numbers of the instrument.

SCPI: *IDN[]?     ?    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ?? = ?  ?    *IDN? Respone                     ?z ????  ?    Status                            ?? ? 1  ?  ?    Instrument Handle               ???? < 1 ?  ?    Channel Name                       	            	               "1"    ^    This function returns the revision numbers of the instrument driver and instrument firmware.     ?    This control returns the Instrument Driver Software Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].         This control returns the Instrument Firmware Revision.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    ?? C/ ?  ?    Instrument Driver Revision        ĉ ?. ?  ?    Firmware Revision                 ? ?]???  ?    Status                            ŕ ? 3  ?  ?    Instrument Handle               ???? B 7 ?  ?    Channel Name                       	            	            	               "1"    ?    This function recalls the instrument's maximum voltage and current rating for the selected channel.

SCPI: CALIBRATE[]:MODEL:VOLTAGE?
      CALIBRATE[]:MODEL:CURRENT?     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.           Pass the name of the channel.
    ? ? 	  ?  ?    Instrument Handle                 ?? ?o???  ?    Status                            ?O 3 
 ?  ?    Channel Name                    ???? 3 ? ?  ?    Model Voltage                   ???? 1r ?  ?    Model Current                          	           "1"    	           	           N    This function returns the IP address of the instrument.

SCPI: SYST:NET:IP?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     1    Pass the new ip address for the instrument use.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ? ? 5  ?  ?    Instrument Handle               ???? = 5 ?  ?    Channel Name                      ˤ @ ?  ?    SYST:NET:IP? Respone              ?? ????  ?    Status                                 "1"    	            	           O    This function gets the Mask address of the instrument.

SCPI: SYST:NET:MASK?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     z    This control returns the Instrument Mask address.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     Ͱ ? <  ?  ?    Instrument Handle               ???? G < ?  ?    Channel Name                      ?O J ?  ?    SYST:NET:MASK? Respone            ?? ????  ?    Status                                 "1"    	            	           O    This function gets the Gate address of the instrument.

SCPI: SYST:NET:GATE?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     z    This control returns the Instrument Gate address.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     Ф ? P  ?  ?    Instrument Handle               ???? [ P ?  ?    Channel Name                      ?C ^3 ?  ?    SYST:NET:GATE? Respone            ?? ?1???  ?    Status                                 "1"    	            	           M    This function gets the DNS address of the instrument.

SCPI: SYST:NET:DNS?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control returns the Instrument DNS address.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     Ӗ ? F  ?  ?    Instrument Handle               ???? T F ?  ?    Channel Name                      ?5 W) ?  ?    SYST:NET:DNS? Respone             Զ ?'???  ?    Status                                 "1"    	            	           R    This function returns the "Listen Port" of the instrument.

SCPI: SYST:NET:PORT?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the Instrument Listen Port.
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ֌ ? <  ?  ?    Instrument Handle               ???? Q < ?  ?    Channel Name                      ?+ Q ?  ?    SYST:NET:PORT? Respone            ?f ????  ?    Status                                 "1"    	            	           W    Get the baud rate for the slave unit.
Valid Values: 9600, 19200, 38400, 57600, 115200     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     W    Get the baud rate for the slave unit.
Valid Values: 9600, 19200, 38400, 57600, 115200     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?A ? d  ?  ?    Instrument Handle               ???? Q d ?  ?    Channel Name                      ?? Q< ?  ?    SYST:SLAVEBAUD? Respone           ?? ?:???  ?    Status                                 "1"    	            	           q    Get the return string terminator setting from the device.
Valid Values: 1,2,3,4
1= CR
2= LF
3= CR LF
4= LF CR

     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     z    This control returns the string terminator setting for the device.
Valid Values: 1,2,3,4
1= CR
2= LF
3= CR LF
4= LF CR

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?4 ? m  ?  ?    Instrument Handle               ???? [ m ?  ?    Channel Name                      ?? [E ?  ?    SYST:NET:TERM? Respone            ?U ?C???  ?    Status                                 "1"    	            	           Q    This function returns the Host string of the instrument.

SCPI: SYST:NET:HOST?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control returns the Instrument Host string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?* ? F  ?  ?    Instrument Handle               ???? Q F ?  ?    Channel Name                      ?? T) ?  ?    SYST:NET:HOST? Respone            ?J ?'???  ?    Status                                 "1"    	            	           W    This function returns the Descriptor string of the instrument.

SCPI: SYST:NET:DESC?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the Instrument Description string.

Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?% ? 2  ?  ?    Instrument Handle               ???? Z 2 ?  ?    Channel Name                      ?? ] ?  ?    SYST:NET:DESC? Respone            ?L ????  ?    Status                                 "1"    	            	           ?    This function returns the MAC address of the instrument.

Format: xx:xx:xx:xx:xx:xx (6 hexidecimal pairs)

SCPI: SYST:NET:MAC?
     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the Instrument MAC address.

Format: xx:xx:xx:xx:xx:xx (6 hexidecimal pairs)

SCPI: SYST:NET:MAC?


Notes:

(1) The array must contain at least 256 elements ViChar[256].     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?Q ? F  ?  ?    Instrument Handle               ???? Q F ?  ?    Channel Name                      ?? T) ?  ?    SYST:NET:MAC? Respone             ?? ?'???  ?    Status                                 "1"    	            	           }    This function returns the Auto IP mode of the instrument.

0 = Disabled Auto IP
1 = Enabled Auto IP

SCPI: SYST:NET:AUTOIP?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     e    This control returns the Auto IP mode of the instrument.

0 = Disabled Auto IP
1 = Enabled Auto IP
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ? 2  ?  ?    Instrument Handle               ???? Q 2 ?  ?    Channel Name                      ?X Q
 ?  ?    SYST:NET:AUTOIP? Respone          ?? ????  ?    Status                                 "1"    	           	           v    This function returns the DHCP mode of the instrument.

0 = Static IP address
1 = Use DHCP

SCPI: SYST:NET:DHCPMODE?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ^    This control returns the DHCP mode of the instrument.

0 = Static IP address
1 = Use DHCP


     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ? F  ?  ?    Instrument Handle               ???? Q F ?  ?    Channel Name                      ?^ Q ?  ?    SYST:NET:DHHCPMODE? Respone       ?? ????  ?    Status                                 "1"    	           	           ?    This function returns the LAN LED behavior of the instrument.
(LED located on back panel)

0 = LED doesn't blink 
1 = LED blinks

SCPI: SYST:NET:LANLED?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the LAN LED behavior of the instrument.
(LED located on back panel)

0 = LED doesn't blink 
1 = LED blinks     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ? P  ?  ?    Instrument Handle               ???? [ P ?  ?    Channel Name                      ?? [( ?  ?    SYST:NET:LANLED? Respone          ?
 ?&???  ?    Status                                 "1"    	           	           `    This function returns the date the instrument was last calibrated.

SCPI: CAL:MOD:LASTCALDATE?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control returns he date the instrument was last calibrated.
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ? (  ?  ?    Instrument Handle               ???? Q ( ?  ?    Channel Name                      ?? Q  ?  ?    CAL:MOD:LASTCALDATE? Respone      ?? ? ????  ?    Status                                 "1"    	            	           l    This function returns the date the instrument is due for its next calibration.

SCPI: CAL:MOD:NEXTCALDATE?     ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control returns the date the instrument is due for its next calibration.
     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ? 2  ?  ?    Instrument Handle               ???? Q 2 ?  ?    Channel Name                      ?g Q
 ?  ?    CAL:MOD:NEXTCALDATE? Respone      ?? ????  ?    Status                                 "1"    	            	           Y    This function sets the IP address of the instrument.

SCPI: SYST:NET:IP '172.16.1.198'
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     1    Pass the new ip address for the instrument use.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.     ?? ?   ?  ?    Instrument Handle                 ?J &   ?  ?    Channel Name                      ?? & ? ?  ?    IpAddress                         ?? ? ????  ?    Status                                 "1"    "'172.16.1.198'"    	           ^    This function sets the Mask address of the instrument.

SCPI: SYST:NET:MASK '255.255.255.0'
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      1    This control sets the Instrument Mask address.
    ?? ? Z  ?  ?    Instrument Handle                 ?Z 3 \ ?  ?    Channel Name                      ?? ?#???  ?    Status                            ? 3$ ?  ?    Mask Address                           "1"    	           "'255.255.255.0'"    W    This function sets the Gate address of the instrument.

SCPI: SYST:NET:MASK '0.0.0.0'     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      1    This control sets the Instrument Gate address.
    ?? ? n  ?  ?    Instrument Handle                 ?d e p ?  ?    Channel Name                      ?? ?7???  ?    Status                            ?( e8 ?  ?    Gate Address                           "1"    	           "'0.0.0.0'"    V    This function sets the DNS address of the instrument.

SCPI: SYST:NET:MASK '0.0.0.0'     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      0    This control sets the Instrument DNS address.
    ? ? n  ?  ?    Instrument Handle                g i p ?  ?    Channel Name                     ? ?7???  ?    Status                           + i8 ?  ?    DNS Address                            "1"    	           "'0.0.0.0'"    [    This function sets the "listen Port" number of the instrument.

SCPI: SYST:NET:PORT 9221
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      w    Pass the DC voltage you want the power supply to generate.
Units: volts
Valid Range: dependent upon the model in use
   ? ? -  ?  ?    Instrument Handle                n ) / ?  ?    Channel Name                     ? ? ????  ?    Status                           2 ) ? ?  ?    Port number                            "1"    	           9221    W    Set the baud rate for the slave unit.
Valid Values: 9600, 19200, 38400, 57600, 115200     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      Y    Pass the baud rate for the slave unit.
Valid Values: 9600, 19200, 38400, 57600, 115200
    ? k  ?  ?    Instrument Handle                ? k m ?  ?    Channel Name                     ? ?4???  ?    Status                           u k5 ?  ?    Slave Baud Rate                        "1"    	           9600    o    Set the return string terminator setting for the device.
Valid Values: 1,2,3,4
1= CR
2= LF
3= CR LF
4= LF CR
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      o    Set the return string terminator setting for the device.
Valid Values: 1,2,3,4
1= CR
2= LF
3= CR LF
4= LF CR
   
@ ? j  ?  ?    Instrument Handle                
? f l ?  ?    Channel Name                     - ?3???  ?    Status                           ? f4 ?  ?    String Terminator Setting              "1"    	           1    [    This function sets the HOST string of the instrument.

SCPI: SYST:NET:HOST 'ELH00-01-1E'
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     2    Pass the new Host string for the instrument use.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.    | ? d  ?  ?    Instrument Handle                * e f ?  ?    Channel Name                     i e. ?  ?    Host                             ? ?-???  ?    Status                                 "1"    "'ELH00-01-1E'"    	           n    This function sets the Description string of the instrument.

SCPI: SYST:NET:IP 'ELDESCR-00-06-D0-00-01-1E'
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     <    Pass the new description string for the instrument to use.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.    ? ? Z  ?  ?    Instrument Handle                J e \ ?  ?    Channel Name                     ? e$ ?  ?    Description                      ? ?#???  ?    Status                                 "1"    "'ELDESCR-00-06-D0-00-01-1E'"    	           ~    This function sets the auto IP behavior of the instrument.

0 = Disable Auto IP
1 = Enable Auto IP

SCPI: SYST:NET:AUTOIP 1
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      [    Pass the the auto IP behavior of the instrument.

0 = Disable Auto IP
1 = Enable Auto IP
   ? ? P  ?  ?    Instrument Handle                ? [ R ?  ?    Channel Name                     ? ????  ?    Status                           V [ ?  ?    Auto IP Mode                           "1"    	           1    x    This function sets the DHCP behavior of the instrument.

0 = Static IP address
1 = Use DHCP

SCPI: SYST:NET:DHCPMODE 1     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      P    Pass the DHCP behavior of the instrument.

0 = Static IP address
1 = Use DHCP
   ) ? F  ?  ?    Instrument Handle                ? [ H ?  ?    Channel Name                      ????  ?    Status                           ? [ ?  ?    DHCP Mode                              "1"    	           0    v    This function sets the behavior of the instruments LAN LED.

0 = Not blinking
1 = blinking

SCPI: SYST:NET:LANLED 1
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      W    Pass the behavior of the instruments LAN LED you want.

0 = Not blinking
1 = blinking   a ? F  ?  ?    Instrument Handle                 [ H ?  ?    Channel Name                     N ????  ?    Status                           ? [ ?  ?    LAN LED Mode                           "1"    	           1    g    This function sets the date of the instruments last calibration.

SCPI: CAL:MOD:LASTCALDATE 5 5 2005
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      6    Pass the month of the instruments last calibration.
     4    Pass the day of the instruments last calibration.
     5    Pass the year of the instruments last calibration.
   ? F  ?  ?    Instrument Handle                ? [ H ?  ?    Channel Name                     ~???  ?    Status                            X ?  ?    Month                            A ? ?  ?    Day                              } ? ?  ?    Year                                   "1"    	           5    5    2005    f    This function sets the "listen Port" number of the instrument.

SCPI: CAL:MOD:NEXTCALDATE 6 16 2006
     ?    The ViSession handle that you obtain from the M9_init or M9_InitWithOptions function.  The handle identifies a particular instrument session.

Default Value:  None
     7    Pass the name of the channel you want to configure.

     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      :    Pass the month the instruments next calibration is due.
     9    Pass the day the instruments next calibration is due.

     9    Pass the year the instruments next calibration is due.
   !? Z  ?  ?    Instrument Handle                "= [ \ ?  ?    Channel Name                     "|#???  ?    Status                           # [ ?  ?    Month                            #C ?! ?  ?    Day                              #? ?  ?  ?    Year                                   "1"    	           6    16    2006    ?    This function performs the following operations:
viClose (instrSession) and viClose (rmSession).

Notes:

(1) The instrument must be reinitialized to use it again.     }    Reports the status of this operation.

To obtain a text description of the status code call the M9_error_message function.      ?    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   %? pD???  ?    Status                           &_ r `  ?  ?    Instrument Handle                  	            ????         ?  ?             K.        init                                                                                                                                    ????         ,  @             K.        GenerateDCVolt                                                                                                                          ????         2   ?             K.        GenerateDCCurr                                                                                                                          ????         !?  %<             .        GenerateDCVRamp                                                                                                                         ????         &j  )?             .        GenerateDCCRamp                                                                                                                         ????         +$  -m             K.        OutState                                                                                                                                ????         .f  0?             .        MeasureDCVolt                                                                                                                           ????         1w  3?             .        MeasureDCCurr                                                                                                                           ????         4?  5?             K.        QueryMode                                                                                                                               ????         6?  8?             K.        VoltMode                                                                                                                                ????         9?  <             K.        CurrMode                                                                                                                                ????         <?  >g             K.        NormalMode                                                                                                                              ????         ?  @?             K.        IsolationRelay                                                                                                                          ????         A?  C?             K.        SenseRelay                                                                                                                              ????         D?  G?             K.        ConfigDCVolt                                                                                                                            ????         H?  KM             K.        ConfigDCCurr                                                                                                                            ????         L?  O?             K.        ConfigDCVRamp                                                                                                                           ????         P?  S?             K.        ConfigDCCRamp                                                                                                                           ????         U  W?             K.        ConfigOVP                                                                                                                               ????         X?  Z?             K.        ConfigSoftLimits                                                                                                                        ????         \  ^c             K.        ConfigPowerOn                                                                                                                           ????         _?  b(             K.        ConfigFoldback                                                                                                                          ????         c  eG             K.        ConfigProtDelay                                                                                                                         ????         f7  h?             K.        ConfigVoltAve                                                                                                                           ????         i?  k?             K.        ConfigCurrAve                                                                                                                           ????         l?  o?             K.        ConfigProtEventEnable                                                                                                                   ????         pt  r|             K.        ConfigStandEventEnable                                                                                                                  ????         sl  v             K.        ConfigSerReqEnable                                                                                                                      ????         w  y             .        OutputVoltQuery                                                                                                                         ????         z  |)             .        OutputCurrQuery                                                                                                                         ????         }   Q             .        OutputOVPQuery                                                                                                                          ????         ?H  ??             K.        OutStateQuery                                                                                                                           ????         ??  ??             K.        IsoRelayQuery                                                                                                                           ????         ??  ??             K.        SenseRelayQuery                                                                                                                         ????         ??  ??             .        SoftLimitsQuery                                                                                                                         ????         ?  ?q             .        PowerOnQuery                                                                                                                            ????         ??  ?             .        protDelayQuery                                                                                                                          ????         ??  ?f             .        measVoltAveQuery                                                                                                                        ????         ?]  ??             .        measCurrAveQuery                                                                                                                        ????         ??  ??             K.        SendSWTrigger                                                                                                                           ????         ??  ??             K.        AbortTrigger                                                                                                                            ????         ?w  ?,             K.        StatusByteQuery                                                                                                                         ????         ?d  ?,             K.        StandEventQuery                                                                                                                         ????         ?d  ?&             K.        StandEventEnableQuery                                                                                                                   ????         ?^  ??             K.        ProtEventQuery                                                                                                                          ????         ??  ??             K.        ProtEventEnableQuery                                                                                                                    ????         ?  ?=             K.        ProtCondQuery                                                                                                                           ????         ?u  ?8             K.        ServiceReqEnableQuery                                                                                                                   ????         ?p  ?G             K.        reset                                                                                                                                   ????         ??  ??             K.        clear                                                                                                                                   ????         ?M  ??             K.        errorQuery                                                                                                                              ????         ??  ?j             K.        errorMessage                                                                                                                            ????         ?f               K.        idQuery                                                                                                                                 ????         Õ  ?4             E.        revisionQuery                                                                                                                           ????         ?l  ?w             .        ModelQuery                                                                                                                              ????         ʯ  ?b             K.        IpQuery                                                                                                                                 ????         ?Y  ?V             K.        MaskQuery                                                                                                                               ????         ?M  ?J             K.        GateQuery                                                                                                                               ????         ?A  ?;             K.        DNSQuery                                                                                                                                ????         ?2  ??             K.        PortQuery                                                                                                                               ????         ??  ??             K.        SlaveBaudQuery                                                                                                                          ????         ۻ  ??             K.        TermQuery                                                                                                                               ????         ??  ??             K.        HostQuery                                                                                                                               ????         ??  ??             K.        DescQuery                                                                                                                               ????         ??  ?=             K.        MACQuery                                                                                                                                ????         ?4  ?J             K.        AutoIPQuery                                                                                                                             ????         ?A  ?I             K.        DHCPModeQuery                                                                                                                           ????         ?@  ??             K.        LANLEDQuery                                                                                                                             ????         ??  ?]             K.        LastCalDateQuery                                                                                                                        ????         ?T  ?D             K.        NextCalDateQuery                                                                                                                        ????         ?;  ?G             K.        ConfigIp                                                                                                                                ????         ?F  ?W             K.        ConfigMask                                                                                                                              ????         ?W  ?a             K.        ConfigGate                                                                                                                              ????         [ c             K.        ConfigDNS                                                                                                                               ????        ] ?             K.        ConfigPort                                                                                                                              ????        ? ?             K.        ConfigSlaveBaud                                                                                                                         ????        	? )             K.        ConfigTerm                                                                                                                              ????         (             K.        ConfigHost                                                                                                                              ????        & R             K.        ConfigDesc                                                                                                                              ????        ^ ?             K.        ConfigAutoIP                                                                                                                            ????        ? ?             K.        ConfigDHCPMode                                                                                                                          ????        ? 2             K.        ConfigLANLED                                                                                                                            ????        " ?             K.        ConfigLastCalDate                                                                                                                       ????        !! #?             K.        ConfigNextCalDate                                                                                                                       ????        %- &?             K.        close                                                                                                                                                                                                                               ?Initialize                                                                          Application Functions                                                             ????Generate Output                                                                      ?Generate DC Voltage                                                                  ?Generate DC Current                                                                  ?Generate DC Voltage Ramp                                                             ?Generate DC Current Ramp                                                            ?Output State                                                                         ?Output State On/Off                                                               ????Measure Output                                                                       ?Measure DC Voltage                                                                   ?Measure DC Current                                                                ????Operating Mode                                                                       ?Query Output Mode                                                                    ?Constant Voltage Mode                                                                ?Constant Current Mode                                                                ?Normal Mode                                                                       ????External User                                                                        ?Isolation Relay                                                                      ?Sense Relay                                                                         ?Configuration Functions                                                              ?Configure DC Voltage                                                                 ?Configure DC Current                                                                 ?Configure DC Voltage Ramp                                                            ?Configure DC Current Ramp                                                            ?Configure OVP                                                                        ?Configure Soft Limits                                                                ?Configure Power On                                                                   ?Configure Foldback                                                                   ?Configure Protection Delay                                                           ?Configure Voltage Measurement Average                                                ?Configure Current Measurement Average                                                ?Configure Protect. Event Enable                                                      ?Configure Standard Event Enable                                                      ?Configure Service Req. Enable                                                        ?Output Voltage Query                                                                 ?Output Current Query                                                                 ?Output OVP Query                                                                     ?Output State Query                                                                   ?Isolation Relay Query                                                                ?Sense Relay Query                                                                    ?Soft Limits Query                                                                    ?Power On Query                                                                       ?Protection Delay Query                                                               ?Voltage Measurement Average Query                                                    ?Current Measurement Average Query                                                   Action/Status Functions                                                              ?Send Software Trigger                                                                ?Abort Trigger                                                                        ?Status Byte Query                                                                    ?Standard Event Query                                                                 ?Standard Event Enable Query                                                          ?Protection Event Query                                                               ?Protection Event Enable Query                                                        ?Protection Condition Query                                                           ?Sevice Req. Enable Query                                                            dUtility Functions                                                                    ?Reset                                                                                ?Clear                                                                                ?Error Query                                                                          ?Error Message                                                                        ?Id Query                                                                             ?Revision Query                                                                       ?Model Query                                                                          ?Ip Query                                                                             ?Mask Query                                                                           ?Gate Query                                                                           ?DNS Query                                                                            ?Port Query                                                                           ?Slave Baud Query                                                                     ?Term Query                                                                           ?Host Query                                                                           ?Desc Query                                                                           ?MAC Query                                                                            ?Auto IP Query                                                                        ?DHCP Mode Query                                                                      ?LANLED Query                                                                         ?Last Cal Date Query                                                                  ?Next Cal Date Query                                                                  ?Configure Ip                                                                         ?Configure Mask                                                                       ?Configure Gate                                                                       ?Configure DNS                                                                        ?Configure Port                                                                       ?Configure Slave Baud                                                                 ?Configure Term                                                                       ?Configure Host                                                                       ?Configure Desc                                                                       ?Configure Auto IP                                                                    ?Configure DHCP Mode                                                                  ?Configure LAN LED                                                                    ?Configure Last Cal Date                                                              ?Configure Next Cal Date                                                              ?Close                                                                           