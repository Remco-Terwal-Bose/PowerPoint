<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Data" Type="Folder" URL="../Data">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="PowerPoint Settings Files" Type="Folder" URL="../PowerPoint Settings Files">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Waveforms" Type="Folder" URL="../Waveforms">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="ASD PowerPoint Main.vi" Type="VI" URL="../ASD PowerPoint Main.vi"/>
		<Item Name="Yokogawa WT1800 Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/Yokogawa WT1800 Series/Yokogawa WT1800 Series.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="chr62000P Close.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Close.vi"/>
				<Item Name="chr62000P Init Interface.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Init Interface.vi"/>
				<Item Name="chr62000P IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P IVI Error Converter.vi"/>
				<Item Name="chr62000P Measure.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Measure.vi"/>
				<Item Name="chr62000P Set Current.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Set Current.vi"/>
				<Item Name="chr62000P Set Output.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Set Output.vi"/>
				<Item Name="chr62000P Set Voltage.vi" Type="VI" URL="/&lt;instrlib&gt;/chr62000P/chr62000P.llb/chr62000P Set Voltage.vi"/>
				<Item Name="chr62000P_64.dll" Type="Document" URL="/&lt;instrlib&gt;/chr62000P/chr62000P_64.dll"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="_2DArrToArrWfms.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_2DArrToArrWfms.vi"/>
				<Item Name="_Get Sound Error From Return Value.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/_Get Sound Error From Return Value.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Built App File Layout.vi" Type="VI" URL="/&lt;vilib&gt;/AppBuilder/Built App File Layout.vi"/>
				<Item Name="Calc Long Word Padded Width.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Calc Long Word Padded Width.vi"/>
				<Item Name="CGMeasure Peaks_N.vi" Type="VI" URL="/&lt;vilib&gt;/express/SignalExpress/Support/AmplitudeAndLevels.llb/CGMeasure Peaks_N.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create ActiveX Event Queue.vi"/>
				<Item Name="Create Error Clust.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Create Error Clust.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="DAQmx Advance Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Advance Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Advance Trigger (None).vi"/>
				<Item Name="DAQmx Clear Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Clear Task.vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-4 Wire DC Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (AI-Acceleration-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Acceleration-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Charge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Charge).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Current-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Current-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Frequency-Voltage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Frequency-Voltage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-EddyCurrentProxProbe).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Pressure-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Rosette Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Built-in Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Polynomial).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Table).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Table).vi"/>
				<Item Name="DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Torque-Bridge-Two-Point-Linear).vi"/>
				<Item Name="DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Velocity-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Channel (AI-Voltage-RMS).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AI-Voltage-RMS).vi"/>
				<Item Name="DAQmx Create Channel (AO-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (AO-FuncGen).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-FuncGen).vi"/>
				<Item Name="DAQmx Create Channel (AO-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (AO-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (CI-Count Edges).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Count Edges).vi"/>
				<Item Name="DAQmx Create Channel (CI-Duty Cycle).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Duty Cycle).vi"/>
				<Item Name="DAQmx Create Channel (CI-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CI-GPS Timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-GPS Timestamp).vi"/>
				<Item Name="DAQmx Create Channel (CI-Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Angular Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Angular Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Position-Linear Encoder).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Position-Linear Encoder).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Freq).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Freq).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Time).vi"/>
				<Item Name="DAQmx Create Channel (CI-Pulse Width).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Pulse Width).vi"/>
				<Item Name="DAQmx Create Channel (CI-Semi Period).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Semi Period).vi"/>
				<Item Name="DAQmx Create Channel (CI-Two Edge Separation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Two Edge Separation).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Angular).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Angular).vi"/>
				<Item Name="DAQmx Create Channel (CI-Velocity-Linear).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CI-Velocity-Linear).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Frequency).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Frequency).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Ticks).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Ticks).vi"/>
				<Item Name="DAQmx Create Channel (CO-Pulse Generation-Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (CO-Pulse Generation-Time).vi"/>
				<Item Name="DAQmx Create Channel (DI-Digital Input).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DI-Digital Input).vi"/>
				<Item Name="DAQmx Create Channel (DO-Digital Output).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (DO-Digital Output).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Acceleration-Accelerometer).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Current-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Current-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Force-IEPE Sensor).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-LVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-LVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Position-RVDT).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Position-RVDT).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Pressure-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Resistance).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Resistance).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Sound Pressure-Microphone).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Strain-Strain Gage).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-RTD).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Iex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermistor-Vex).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Temperature-Thermocouple).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Torque-Bridge).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Basic).vi"/>
				<Item Name="DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Channel (TEDS-AI-Voltage-Custom with Excitation).vi"/>
				<Item Name="DAQmx Create Virtual Channel.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/create/channels.llb/DAQmx Create Virtual Channel.vi"/>
				<Item Name="DAQmx Fill In Error Info.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Fill In Error Info.vi"/>
				<Item Name="DAQmx Flatten Channel String.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/miscellaneous.llb/DAQmx Flatten Channel String.vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Freq 1 Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D Pulse Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Counter DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Freq 1 Chan 1 Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter Pulse Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Counter U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Counter U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Read (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Read (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Read (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp Duration).vi"/>
				<Item Name="DAQmx Read (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Read (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I8).vi"/>
				<Item Name="DAQmx Read (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I16).vi"/>
				<Item Name="DAQmx Read (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D I32).vi"/>
				<Item Name="DAQmx Read (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U8).vi"/>
				<Item Name="DAQmx Read (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U16).vi"/>
				<Item Name="DAQmx Read (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read (Raw 1D U32).vi"/>
				<Item Name="DAQmx Read.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/read.llb/DAQmx Read.vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Multi Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Multi Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Reference Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Reference Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Reference Trigger (None).vi"/>
				<Item Name="DAQmx Start Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Start Task.vi"/>
				<Item Name="DAQmx Start Trigger (Analog Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Multi Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Multi Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Analog Window).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Analog Window).vi"/>
				<Item Name="DAQmx Start Trigger (Digital Edge).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Edge).vi"/>
				<Item Name="DAQmx Start Trigger (Digital Pattern).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Digital Pattern).vi"/>
				<Item Name="DAQmx Start Trigger (None).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (None).vi"/>
				<Item Name="DAQmx Start Trigger (Time).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Start Trigger (Time).vi"/>
				<Item Name="DAQmx Stop Task.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Stop Task.vi"/>
				<Item Name="DAQmx Timing (Burst Export Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Export Clock).vi"/>
				<Item Name="DAQmx Timing (Burst Import Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Burst Import Clock).vi"/>
				<Item Name="DAQmx Timing (Change Detection).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Change Detection).vi"/>
				<Item Name="DAQmx Timing (Handshaking).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Handshaking).vi"/>
				<Item Name="DAQmx Timing (Implicit).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Implicit).vi"/>
				<Item Name="DAQmx Timing (Pipelined Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Pipelined Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Sample Clock).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Sample Clock).vi"/>
				<Item Name="DAQmx Timing (Use Waveform).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing (Use Waveform).vi"/>
				<Item Name="DAQmx Timing.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/timing.llb/DAQmx Timing.vi"/>
				<Item Name="DAQmx Trigger.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/trigger.llb/DAQmx Trigger.vi"/>
				<Item Name="DAQmx Wait Until Done.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/configure/task.llb/DAQmx Wait Until Done.vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 1D DBL NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D DBL NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D DBL NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D DBL NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D I32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D I32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Analog DBL 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog DBL 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Analog Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Analog Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Frequency NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Frequency NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Ticks 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Counter 1D Time NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1D Time NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter 1DTicks NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter 1DTicks NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Frequency 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Frequency 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Ticks 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Ticks 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Counter Time 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Counter Time 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Bool NChan 1Samp 1Line).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U8 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U8 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U16 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U16 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 1D U32 NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D U32 NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital 1D Wfm NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 1D Wfm NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D Bool NChan 1Samp NLine).vi"/>
				<Item Name="DAQmx Write (Digital 2D U8 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U8 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U16 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U16 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital 2D U32 NChan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital 2D U32 NChan NSamp).vi"/>
				<Item Name="DAQmx Write (Digital Bool 1Line 1Point).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Bool 1Line 1Point).vi"/>
				<Item Name="DAQmx Write (Digital U8 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U8 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U16 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U16 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital U32 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital U32 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan 1Samp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan 1Samp).vi"/>
				<Item Name="DAQmx Write (Digital Wfm 1Chan NSamp).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Digital Wfm 1Chan NSamp).vi"/>
				<Item Name="DAQmx Write (Raw 1D I8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I8).vi"/>
				<Item Name="DAQmx Write (Raw 1D I16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I16).vi"/>
				<Item Name="DAQmx Write (Raw 1D I32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D I32).vi"/>
				<Item Name="DAQmx Write (Raw 1D U8).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U8).vi"/>
				<Item Name="DAQmx Write (Raw 1D U16).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U16).vi"/>
				<Item Name="DAQmx Write (Raw 1D U32).vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write (Raw 1D U32).vi"/>
				<Item Name="DAQmx Write.vi" Type="VI" URL="/&lt;vilib&gt;/DAQmx/write.llb/DAQmx Write.vi"/>
				<Item Name="Destroy ActiveX Event Queue.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Destroy ActiveX Event Queue.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DTbl Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Uncompress Digital.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="DWDT Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital Size.vi"/>
				<Item Name="DWDT Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Error Code.vi"/>
				<Item Name="DWDT Uncompress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Uncompress Digital.vi"/>
				<Item Name="DWDT Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Waveform Duration.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="EventData.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/EventData.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Flip and Pad for Picture Control.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Flip and Pad for Picture Control.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Handle Open Word or Excel File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Toolkit/Handle Open Word or Excel File.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Is Path and Not Empty.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Is Path and Not Empty.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Excel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Excel/NI_Excel.lvclass"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_HTML.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/HTML/NI_HTML.lvclass"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_report.lvclass"/>
				<Item Name="NI_ReportGenerationCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/NIReport.llb/NI_ReportGenerationCore.lvlib"/>
				<Item Name="NI_ReportGenerationToolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_office/NI_ReportGenerationToolkit.lvlib"/>
				<Item Name="NI_Standard Report.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Utility/NIReport.llb/Standard Report/NI_Standard Report.lvclass"/>
				<Item Name="Normalize Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Normalize Waveform.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="OccFireType.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/OccFireType.ctl"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Path To Command Line String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/Path To Command Line String.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="PathToUNIXPathString.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/CFURL.llb/PathToUNIXPathString.vi"/>
				<Item Name="Read JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Read JPEG File.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Sound Data Format.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound Data Format.ctl"/>
				<Item Name="Sound File Close.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Close.vi"/>
				<Item Name="Sound File Info (refnum).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Info (refnum).vi"/>
				<Item Name="Sound File Position.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Position.ctl"/>
				<Item Name="Sound File Read (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Read (DBL).vi"/>
				<Item Name="Sound File Read Open.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Read Open.vi"/>
				<Item Name="Sound File Read Simple.vi" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Read Simple.vi"/>
				<Item Name="Sound File Refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/sound2/lvsound2.llb/Sound File Refnum.ctl"/>
				<Item Name="SoundVib_Generation.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/SoundVib_Generation.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="sv_Flat New Pink Filter Coefficients.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat New Pink Filter Coefficients.vi"/>
				<Item Name="sv_Flat Pink Filter (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Filter (DBL).vi"/>
				<Item Name="sv_Flat Pink Noise Coefficients.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Coefficients.ctl"/>
				<Item Name="sv_Flat Pink Noise Filter Coefficients.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Filter Coefficients.vi"/>
				<Item Name="sv_Flat Pink Noise Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Waveform.vi"/>
				<Item Name="sv_Set Function State Attributes on Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Set Function State Attributes on Waveform.vi"/>
				<Item Name="sv_Update t0 (timestamp).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/sv_Update t0 (timestamp).vi"/>
				<Item Name="svc_Caller VI Returned in Error Source.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Caller VI Returned in Error Source.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Wait On ActiveX Event.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait On ActiveX Event.vi"/>
				<Item Name="Wait types.ctl" Type="VI" URL="/&lt;vilib&gt;/Platform/ax-events.llb/Wait types.ctl"/>
				<Item Name="Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Duration.vi"/>
				<Item Name="Waveform Scale and Offset.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Scale and Offset.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="WDT Waveform Duration DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform Duration DBL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write BMP Data To Buffer.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data To Buffer.vi"/>
				<Item Name="Write BMP Data.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP Data.vi"/>
				<Item Name="Write BMP File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/bmp.llb/Write BMP File.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Write PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Write PNG File.vi"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Bundle Data Log.vi" Type="VI" URL="../Datalog/Bundle Data Log.vi"/>
			<Item Name="Bundle EQ and Z Graphs.vi" Type="VI" URL="../Datalog/Bundle EQ and Z Graphs.vi"/>
			<Item Name="Bundle Measurement Averages.vi" Type="VI" URL="../Data Acquisition Engine/Bundle Measurement Averages.vi"/>
			<Item Name="Calculate Gains.vi" Type="VI" URL="../Data Acquisition Engine/Calculate Gains.vi"/>
			<Item Name="Channel Configuration Cluster High Current.ctl" Type="VI" URL="../Controls/Channel Configuration Cluster High Current.ctl"/>
			<Item Name="Channel Configuration Cluster.ctl" Type="VI" URL="../Controls/Channel Configuration Cluster.ctl"/>
			<Item Name="Channel Configuration List.ctl" Type="VI" URL="../Controls/Channel Configuration List.ctl"/>
			<Item Name="Configure DC Power Supply.vi" Type="VI" URL="../DC Power Supply/Configure DC Power Supply.vi"/>
			<Item Name="Consumer Control Reference.ctl" Type="VI" URL="../Controls/Consumer Control Reference.ctl"/>
			<Item Name="Consumer Control.ctl" Type="VI" URL="../Controls/Consumer Control.ctl"/>
			<Item Name="Data.ctl" Type="VI" URL="../Datalog/Datalog Controls/Data.ctl"/>
			<Item Name="Datalog Bundle Control.ctl" Type="VI" URL="../Controls/Datalog Bundle Control.ctl"/>
			<Item Name="Datalog Cluster Array.ctl" Type="VI" URL="../Controls/Datalog Cluster Array.ctl"/>
			<Item Name="Display and Datalog Control.ctl" Type="VI" URL="../Controls/Display and Datalog Control.ctl"/>
			<Item Name="Display Queue Reference.ctl" Type="VI" URL="../Controls/Display Queue Reference.ctl"/>
			<Item Name="DSA Configure AI and AO.vi" Type="VI" URL="../National Instruments DSA/DSA Configure AI and AO.vi"/>
			<Item Name="DSA Functions.ctl" Type="VI" URL="../Controls/DSA Functions.ctl"/>
			<Item Name="DSA Measure Signal Amplitude and Levels.vi" Type="VI" URL="../National Instruments DSA/DSA Measure Signal Amplitude and Levels.vi"/>
			<Item Name="DSA Measurements.ctl" Type="VI" URL="../Controls/DSA Measurements.ctl"/>
			<Item Name="DSA Readings.ctl" Type="VI" URL="../Controls/DSA Readings.ctl"/>
			<Item Name="DSA Step Delay and Waveform Reload.vi" Type="VI" URL="../National Instruments DSA/DSA Step Delay and Waveform Reload.vi"/>
			<Item Name="DSA Stop AI and AO.vi" Type="VI" URL="../National Instruments DSA/DSA Stop AI and AO.vi"/>
			<Item Name="Error Module Command.ctl" Type="VI" URL="../Controls/Error Module Command.ctl"/>
			<Item Name="Error Module.vi" Type="VI" URL="../Error/Error Module.vi"/>
			<Item Name="Excel Data Log 2.vi" Type="VI" URL="../Datalog/Excel Data Log 2.vi"/>
			<Item Name="Functions Tab.ctl" Type="VI" URL="../Controls/Functions Tab.ctl"/>
			<Item Name="Gain Array.ctl" Type="VI" URL="../Controls/Gain Array.ctl"/>
			<Item Name="Gain Averages.ctl" Type="VI" URL="../Controls/Gain Averages.ctl"/>
			<Item Name="Generate Report.vi" Type="VI" URL="../Datalog/Generate Report.vi"/>
			<Item Name="Get Data.vi" Type="VI" URL="../Datalog/Get Data.vi"/>
			<Item Name="Get Terminal Name with Device Prefix.vi" Type="VI" URL="../National Instruments DSA/Get Terminal Name with Device Prefix.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="lvsound2.dll" Type="Document" URL="/&lt;resource&gt;/lvsound2.dll"/>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Read INI.vi" Type="VI" URL="../Configuration File/Read INI.vi"/>
			<Item Name="Read Settings File.vi" Type="VI" URL="../Configuration File/Read Settings File.vi"/>
			<Item Name="Replace -.vi" Type="VI" URL="../Datalog/Replace -.vi"/>
			<Item Name="Running Average.vi" Type="VI" URL="../Data Acquisition Engine/Running Average.vi"/>
			<Item Name="Select_Data.ctl" Type="VI" URL="../Datalog/Datalog Controls/Select_Data.ctl"/>
			<Item Name="Settings Control.ctl" Type="VI" URL="../Controls/Settings Control.ctl"/>
			<Item Name="Settling Delay Control.vi" Type="VI" URL="../Data Acquisition Engine/Settling Delay Control.vi"/>
			<Item Name="Setup Data.vi" Type="VI" URL="../Datalog/Setup Data.vi"/>
			<Item Name="Sorensen M9A Series.lvlib" Type="Library" URL="../LabVIEW 2021 instr.lib/Sorensen M9A Series/Sorensen M9A Series.lvlib"/>
			<Item Name="StateMachineStates.ctl" Type="VI" URL="../Datalog/Datalog Controls/StateMachineStates.ctl"/>
			<Item Name="States.ctl" Type="VI" URL="../Datalog/Datalog Controls/States.ctl"/>
			<Item Name="Thermocouple 4353 .vi" Type="VI" URL="../National Instruments Thermocouple/Thermocouple 4353 .vi"/>
			<Item Name="UnBundle Channel Configuration List.vi" Type="VI" URL="../Datalog/UnBundle Channel Configuration List.vi"/>
			<Item Name="User Event Reference.ctl" Type="VI" URL="../Controls/User Event Reference.ctl"/>
			<Item Name="Username.vi" Type="VI" URL="../Datalog/Username.vi"/>
			<Item Name="Wave Generator Control.ctl" Type="VI" URL="../Controls/Wave Generator Control.ctl"/>
			<Item Name="Waveform Generator.vi" Type="VI" URL="../Data Acquisition Engine/Waveform Generator.vi"/>
			<Item Name="Write_Summary_Dynamic.vi" Type="VI" URL="../Datalog/Write_Summary_Dynamic.vi"/>
			<Item Name="WT1800 Build Function Name List.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Build Function Name List.vi"/>
			<Item Name="WT1800 Close Instruments.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Close Instruments.vi"/>
			<Item Name="WT1800 Configure Instrument.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Configure Instrument.vi"/>
			<Item Name="WT1800 Configure Instruments.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Configure Instruments.vi"/>
			<Item Name="WT1800 Convert Measurement Data.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Convert Measurement Data.vi"/>
			<Item Name="WT1800 Functions.ctl" Type="VI" URL="../Controls/WT1800 Functions.ctl"/>
			<Item Name="WT1800 Get Measurement.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Get Measurement.vi"/>
			<Item Name="WT1800 Measurements.ctl" Type="VI" URL="../Controls/WT1800 Measurements.ctl"/>
			<Item Name="WT1800 Read Measurements.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Read Measurements.vi"/>
			<Item Name="WT1800 Readings.ctl" Type="VI" URL="../Controls/WT1800 Readings.ctl"/>
			<Item Name="WT1800 Set Display.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Set Display.vi"/>
			<Item Name="WT1800 Set Sync Mode.vi" Type="VI" URL="../Yokogawa WT1800/WT1800 Set Sync Mode.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="ASD PowerPoint Application" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{73FF110F-03E8-4A49-9514-29C75B57EC04}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C089BC92-3D96-462C-8C97-D0B439FFB420}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">1</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1A175871-56D5-4272-AF3D-B26B9B8AE265}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ASD PowerPoint Application</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../ASD PowerPoint Application</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C99A5C62-7503-4361-8189-380AA264874E}</Property>
				<Property Name="Bld_version.major" Type="Int">5</Property>
				<Property Name="Destination[0].destName" Type="Str">ASD PowerPoint.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../ASD PowerPoint Application/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../ASD PowerPoint Application/Data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{EFD11A05-0C79-44CF-94CC-542CAB6EE821}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/ASD PowerPoint Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Waveforms</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/PowerPoint Settings Files</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Data/EQ_Graph.jpg</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Data/golden_setting.set</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Data/Z_Graph.jpg</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Data/ASD Template.xls</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">8</Property>
				<Property Name="TgtF_companyName" Type="Str">Bose Corporation</Property>
				<Property Name="TgtF_fileDescription" Type="Str">ASD PowerPoint Application</Property>
				<Property Name="TgtF_internalName" Type="Str">ASD PowerPoint Application</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 Bose Corporation</Property>
				<Property Name="TgtF_productName" Type="Str">ASD PowerPoint Application</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{40FB4B96-6FB7-454C-9868-4E5FA490E170}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ASD PowerPoint.exe</Property>
			</Item>
			<Item Name="ASD PowerPoint Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">ASD PowerPoint</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{5C710DFE-0A3A-45C4-8C4A-AD7E553B0425}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[0].productID" Type="Str">{F19060DD-AA3B-4C3D-8E47-5792E36DFF3A}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI-488.2 Runtime 21.5</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{357F6618-C660-41A2-A185-5578CC876D1D}</Property>
				<Property Name="DistPart[1].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[1].productID" Type="Str">{5F896240-152C-41BF-BEEE-7EAF5609317A}</Property>
				<Property Name="DistPart[1].productName" Type="Str">NI-DAQmx Runtime 21.3</Property>
				<Property Name="DistPart[1].upgradeCode" Type="Str">{923C9CD5-A0D8-4147-9A8D-998780E30763}</Property>
				<Property Name="DistPart[10].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[10].productID" Type="Str">{F2301F6E-7BFE-4E8A-B824-DB312F771EDE}</Property>
				<Property Name="DistPart[10].productName" Type="Str">NI-488.2 Configuration Support 21.5</Property>
				<Property Name="DistPart[10].upgradeCode" Type="Str">{123307D2-8A89-48BC-A4E7-18C51BDCCED4}</Property>
				<Property Name="DistPart[11].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[11].productID" Type="Str">{C15EE05C-24AC-474A-AF06-D697AA846143}</Property>
				<Property Name="DistPart[11].productName" Type="Str">NI-VISA Configuration Support 22.5</Property>
				<Property Name="DistPart[11].upgradeCode" Type="Str">{093EECCF-DE2B-4226-B7E5-B1FD4028A783}</Property>
				<Property Name="DistPart[12].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[12].productID" Type="Str">{B5EAD373-0508-4C5E-854D-49D1AE98232F}</Property>
				<Property Name="DistPart[12].productName" Type="Str">NI-Serial Configuration 21.5</Property>
				<Property Name="DistPart[12].upgradeCode" Type="Str">{795891EC-C372-47D5-ACDC-CB64F07783DA}</Property>
				<Property Name="DistPart[13].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[13].productID" Type="Str">{AD9959BC-B6A6-4044-A5E3-E8365361E38E}</Property>
				<Property Name="DistPart[13].productName" Type="Str">NI-DAQmx Runtime with Configuration Support 21.3</Property>
				<Property Name="DistPart[13].upgradeCode" Type="Str">{9856368A-ED47-4944-87BE-8EF3472AE39B}</Property>
				<Property Name="DistPart[14].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[14].productID" Type="Str">{EBCDF6CD-76D1-48AF-A6D5-6721CDDA3C17}</Property>
				<Property Name="DistPart[14].productName" Type="Str">NI TDM Excel Add-In 2019</Property>
				<Property Name="DistPart[14].upgradeCode" Type="Str">{6D2EBDAF-6CCD-44F3-B767-4DF9E0F2037B}</Property>
				<Property Name="DistPart[2].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[2].productID" Type="Str">{32AD5200-879B-4D23-9785-747C4B19067E}</Property>
				<Property Name="DistPart[2].productName" Type="Str">NI-Serial Runtime 21.5</Property>
				<Property Name="DistPart[2].upgradeCode" Type="Str">{01D82F43-B48D-46FF-8601-FC4FAAE20F41}</Property>
				<Property Name="DistPart[3].flavorID" Type="Str">_deployment_</Property>
				<Property Name="DistPart[3].productID" Type="Str">{016644E7-BFD9-410F-902D-962614CB4E72}</Property>
				<Property Name="DistPart[3].productName" Type="Str">NI-VISA Runtime 22.5</Property>
				<Property Name="DistPart[3].upgradeCode" Type="Str">{8627993A-3F66-483C-A562-0D3BA3F267B1}</Property>
				<Property Name="DistPart[4].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[4].productID" Type="Str">{33E0A017-75A3-4772-B67C-69B0BCAEA32B}</Property>
				<Property Name="DistPart[4].productName" Type="Str">NI LabVIEW Runtime 2021 SP1 f2 (64-bit)</Property>
				<Property Name="DistPart[4].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[0].productName" Type="Str">NI ActiveX Container (64-bit)</Property>
				<Property Name="DistPart[4].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[4].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[1].productName" Type="Str">NI Deployment Framework 2021 (64-bit)</Property>
				<Property Name="DistPart[4].SoftDep[1].upgradeCode" Type="Str">{E0D3C7F9-4512-438F-8123-E2050457972B}</Property>
				<Property Name="DistPart[4].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[10].productName" Type="Str">NI TDM Streaming 21.1</Property>
				<Property Name="DistPart[4].SoftDep[10].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[4].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[2].productName" Type="Str">NI Error Reporting 2020 (64-bit)</Property>
				<Property Name="DistPart[4].SoftDep[2].upgradeCode" Type="Str">{785BE224-E5B2-46A5-ADCB-55C949B5C9C7}</Property>
				<Property Name="DistPart[4].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2021</Property>
				<Property Name="DistPart[4].SoftDep[3].upgradeCode" Type="Str">{60862FC9-172E-3FDE-A2A4-A56A76681431}</Property>
				<Property Name="DistPart[4].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[4].productName" Type="Str">NI Logos 21.0</Property>
				<Property Name="DistPart[4].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[4].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[5].productName" Type="Str">NI LabVIEW Web Server 2021 (64-bit)</Property>
				<Property Name="DistPart[4].SoftDep[5].upgradeCode" Type="Str">{5F449D4C-83B9-492E-986B-6B85A29C431D}</Property>
				<Property Name="DistPart[4].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[6].productName" Type="Str">NI mDNS Responder 21.5</Property>
				<Property Name="DistPart[4].SoftDep[6].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[4].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[7].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[4].SoftDep[7].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[4].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[4].SoftDep[8].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[4].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[4].SoftDep[9].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[4].SoftDep[9].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[4].SoftDepCount" Type="Int">11</Property>
				<Property Name="DistPart[4].upgradeCode" Type="Str">{130967B8-62DA-3725-A46E-2E8360EA95EA}</Property>
				<Property Name="DistPart[5].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[5].productID" Type="Str">{91132DC4-67E5-4CA9-8B74-479FF83EBF21}</Property>
				<Property Name="DistPart[5].productName" Type="Str">NI Measurement &amp; Automation Explorer 22.5</Property>
				<Property Name="DistPart[5].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[5].SoftDep[0].productName" Type="Str">NI Error Reporting</Property>
				<Property Name="DistPart[5].SoftDep[0].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[5].SoftDepCount" Type="Int">1</Property>
				<Property Name="DistPart[5].upgradeCode" Type="Str">{AE940F24-CC0E-4148-9A96-10FB04D9796D}</Property>
				<Property Name="DistPart[6].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[6].productID" Type="Str">{90A54EEF-0435-4658-B74C-F0252DC7A919}</Property>
				<Property Name="DistPart[6].productName" Type="Str">NI LabVIEW Runtime 2020 SP1 f1 (64-bit)</Property>
				<Property Name="DistPart[6].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[0].productName" Type="Str">NI ActiveX Container (64-bit)</Property>
				<Property Name="DistPart[6].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[6].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[1].productName" Type="Str">NI Deployment Framework 2020</Property>
				<Property Name="DistPart[6].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[6].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[10].productName" Type="Str">NI TDM Streaming 19.0</Property>
				<Property Name="DistPart[6].SoftDep[10].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[6].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[2].productName" Type="Str">NI Error Reporting 2020 (64-bit)</Property>
				<Property Name="DistPart[6].SoftDep[2].upgradeCode" Type="Str">{785BE224-E5B2-46A5-ADCB-55C949B5C9C7}</Property>
				<Property Name="DistPart[6].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2020</Property>
				<Property Name="DistPart[6].SoftDep[3].upgradeCode" Type="Str">{00D0B680-F876-4E42-A25F-52B65418C2A6}</Property>
				<Property Name="DistPart[6].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[4].productName" Type="Str">NI Logos 20.0</Property>
				<Property Name="DistPart[6].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[6].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[5].productName" Type="Str">NI LabVIEW Web Server 2020 (64-bit)</Property>
				<Property Name="DistPart[6].SoftDep[5].upgradeCode" Type="Str">{5F449D4C-83B9-492E-986B-6B85A29C431D}</Property>
				<Property Name="DistPart[6].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[6].productName" Type="Str">NI mDNS Responder 19.0</Property>
				<Property Name="DistPart[6].SoftDep[6].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[6].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[7].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[6].SoftDep[7].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[6].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[6].SoftDep[8].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[6].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[6].SoftDep[9].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[6].SoftDep[9].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[6].SoftDepCount" Type="Int">11</Property>
				<Property Name="DistPart[6].upgradeCode" Type="Str">{9A9FE130-6C4C-498B-A054-CEB195F36BB4}</Property>
				<Property Name="DistPart[7].flavorID" Type="Str">_full_</Property>
				<Property Name="DistPart[7].productID" Type="Str">{DE72BF5F-7980-4210-BE46-772981ED334C}</Property>
				<Property Name="DistPart[7].productName" Type="Str">NI LabWindows/CVI Shared Runtime 2020 f2</Property>
				<Property Name="DistPart[7].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[0].productName" Type="Str">Analysis Support</Property>
				<Property Name="DistPart[7].SoftDep[0].upgradeCode" Type="Str">{86208B51-159E-4F6F-9C62-0D5EFC9324D8}</Property>
				<Property Name="DistPart[7].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[1].productName" Type="Str">.NET Support</Property>
				<Property Name="DistPart[7].SoftDep[1].upgradeCode" Type="Str">{0DDB211A-941B-4125-9518-E81E10409F2E}</Property>
				<Property Name="DistPart[7].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[2].productName" Type="Str">Network Variable Support</Property>
				<Property Name="DistPart[7].SoftDep[2].upgradeCode" Type="Str">{15CE39FE-1354-484D-B8CA-459077449FB3}</Property>
				<Property Name="DistPart[7].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[3].productName" Type="Str">Network Streams Support</Property>
				<Property Name="DistPart[7].SoftDep[3].upgradeCode" Type="Str">{40A5AD7F-4BAF-4A5C-8B56-426B84F75C05}</Property>
				<Property Name="DistPart[7].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[7].SoftDep[4].productName" Type="Str">TDMS Support</Property>
				<Property Name="DistPart[7].SoftDep[4].upgradeCode" Type="Str">{5A8AF88D-486D-4E30-A7A5-8D8A039BBEBF}</Property>
				<Property Name="DistPart[7].SoftDepCount" Type="Int">5</Property>
				<Property Name="DistPart[7].upgradeCode" Type="Str">{80D3D303-75B9-4607-9312-E5FC68E5BFD2}</Property>
				<Property Name="DistPart[8].flavorID" Type="Str">_required_</Property>
				<Property Name="DistPart[8].productID" Type="Str">{ED712122-6767-4C83-B0C4-541D773F07BE}</Property>
				<Property Name="DistPart[8].productName" Type="Str">NI IVI Compliance Package 22.5</Property>
				<Property Name="DistPart[8].upgradeCode" Type="Str">{7F99DDE8-6E52-443B-8938-EDBF54C6D28B}</Property>
				<Property Name="DistPart[9].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[9].productID" Type="Str">{C7E3160F-C4BD-47DC-B9A1-EEC3C6948503}</Property>
				<Property Name="DistPart[9].productName" Type="Str">NI LabVIEW Run-Time Engine 2012 SP1 f9</Property>
				<Property Name="DistPart[9].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[0].productName" Type="Str">NI LabVIEW 2012 SP1 Run-Time Engine Non-English Support.</Property>
				<Property Name="DistPart[9].SoftDep[0].upgradeCode" Type="Str">{49C46D7D-0E1C-459F-AD5E-ECEAC98E8024}</Property>
				<Property Name="DistPart[9].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[1].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[9].SoftDep[1].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[9].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[2].productName" Type="Str">NI System Web Server 12.0</Property>
				<Property Name="DistPart[9].SoftDep[2].upgradeCode" Type="Str">{FCF64B73-B7D4-4971-8F11-24BAF7CC3E6C}</Property>
				<Property Name="DistPart[9].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[3].productName" Type="Str">Math Kernel Libraries</Property>
				<Property Name="DistPart[9].SoftDep[3].upgradeCode" Type="Str">{91778808-47F2-0F5E-9436-BD6D7C0E9E6E}</Property>
				<Property Name="DistPart[9].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[4].productName" Type="Str">NI Logos 5.4</Property>
				<Property Name="DistPart[9].SoftDep[4].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[9].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[5].productName" Type="Str">NI TDM Streaming 2.4</Property>
				<Property Name="DistPart[9].SoftDep[5].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[9].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[6].productName" Type="Str">NI LabVIEW 2012 SP1 Web Server</Property>
				<Property Name="DistPart[9].SoftDep[6].upgradeCode" Type="Str">{AB1BA4DA-F84E-4A55-8D57-ECAFA563CA2F}</Property>
				<Property Name="DistPart[9].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[7].productName" Type="Str">NI LabVIEW 2012 SP1 Real-Time NBFifo</Property>
				<Property Name="DistPart[9].SoftDep[7].upgradeCode" Type="Str">{0253DC31-B770-4D82-8206-8C194DD2BC26}</Property>
				<Property Name="DistPart[9].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[8].productName" Type="Str">NI VC2008MSMs</Property>
				<Property Name="DistPart[9].SoftDep[8].upgradeCode" Type="Str">{FDA3F8BB-BAA9-45D7-8DC7-22E1F5C76315}</Property>
				<Property Name="DistPart[9].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[9].SoftDep[9].productName" Type="Str">NI Error Reporting 2012 SP1</Property>
				<Property Name="DistPart[9].SoftDep[9].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[9].SoftDepCount" Type="Int">10</Property>
				<Property Name="DistPart[9].upgradeCode" Type="Str">{20385C41-50B1-4416-AC2A-F7D6423A9BD6}</Property>
				<Property Name="DistPartCount" Type="Int">15</Property>
				<Property Name="INST_author" Type="Str">Bose Corporation</Property>
				<Property Name="INST_buildLocation" Type="Path">..</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToProject</Property>
				<Property Name="INST_buildSpecName" Type="Str">ASD PowerPoint Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{5C710DFE-0A3A-45C4-8C4A-AD7E553B0425}</Property>
				<Property Name="INST_installerName" Type="Str">Setup.exe</Property>
				<Property Name="INST_productName" Type="Str">ASD PowerPoint</Property>
				<Property Name="INST_productVersion" Type="Str">5.0.0</Property>
				<Property Name="InstSpecBitness" Type="Str">64-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">21018002</Property>
				<Property Name="MSI_arpCompany" Type="Str">Bose Corporation</Property>
				<Property Name="MSI_arpContact" Type="Str">Brad Subat</Property>
				<Property Name="MSI_arpURL" Type="Str">www.Bose.com</Property>
				<Property Name="MSI_distID" Type="Str">{9F2160BE-2DD8-44C6-AEC4-3F26A8189886}</Property>
				<Property Name="MSI_osCheck" Type="Int">3</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{4B1F5DE9-0678-44FA-881E-3EE4912E1B50}</Property>
				<Property Name="MSI_windowMessage" Type="Str">
BOSE Acoustic Test Group

December 9, 2022</Property>
				<Property Name="MSI_windowTitle" Type="Str">ASD PowerPoint        Release 5.0</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{5C710DFE-0A3A-45C4-8C4A-AD7E553B0425}</Property>
				<Property Name="Source[0].File[0].dest" Type="Str">{5C710DFE-0A3A-45C4-8C4A-AD7E553B0425}</Property>
				<Property Name="Source[0].File[0].name" Type="Str">ASD PowerPoint.exe</Property>
				<Property Name="Source[0].File[0].Shortcut[0].destIndex" Type="Int">0</Property>
				<Property Name="Source[0].File[0].Shortcut[0].name" Type="Str">ASD PowerPoint</Property>
				<Property Name="Source[0].File[0].Shortcut[0].subDir" Type="Str">ASD PowerPoint</Property>
				<Property Name="Source[0].File[0].Shortcut[1].destIndex" Type="Int">1</Property>
				<Property Name="Source[0].File[0].Shortcut[1].name" Type="Str">ASD PowerPoint</Property>
				<Property Name="Source[0].File[0].Shortcut[1].subDir" Type="Str"></Property>
				<Property Name="Source[0].File[0].ShortcutCount" Type="Int">2</Property>
				<Property Name="Source[0].File[0].tag" Type="Str">{40FB4B96-6FB7-454C-9868-4E5FA490E170}</Property>
				<Property Name="Source[0].FileCount" Type="Int">1</Property>
				<Property Name="Source[0].name" Type="Str">ASD PowerPoint Application</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Build Specifications/ASD PowerPoint Application</Property>
				<Property Name="Source[0].type" Type="Str">EXE</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
