#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=source/LCD/BusyXLCD.c source/LCD/delay.c source/LCD/OpenXLCD.c source/LCD/PutsXLCD.c source/LCD/ReadAddrXLCD.c source/LCD/ReadDataXLCD.c source/LCD/setCGRamAddr.c source/LCD/setDDRamAddr.c source/LCD/WriteCmdXLCD.c source/LCD/WriteDataXLCD.c main.c source/pin_setup.c source/timer_setup.c source/UART_Setup.c source/isr.c source/keypad.c source/globals.c source/calculator.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/source/LCD/BusyXLCD.o ${OBJECTDIR}/source/LCD/delay.o ${OBJECTDIR}/source/LCD/OpenXLCD.o ${OBJECTDIR}/source/LCD/PutsXLCD.o ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o ${OBJECTDIR}/source/LCD/ReadDataXLCD.o ${OBJECTDIR}/source/LCD/setCGRamAddr.o ${OBJECTDIR}/source/LCD/setDDRamAddr.o ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o ${OBJECTDIR}/source/LCD/WriteDataXLCD.o ${OBJECTDIR}/main.o ${OBJECTDIR}/source/pin_setup.o ${OBJECTDIR}/source/timer_setup.o ${OBJECTDIR}/source/UART_Setup.o ${OBJECTDIR}/source/isr.o ${OBJECTDIR}/source/keypad.o ${OBJECTDIR}/source/globals.o ${OBJECTDIR}/source/calculator.o
POSSIBLE_DEPFILES=${OBJECTDIR}/source/LCD/BusyXLCD.o.d ${OBJECTDIR}/source/LCD/delay.o.d ${OBJECTDIR}/source/LCD/OpenXLCD.o.d ${OBJECTDIR}/source/LCD/PutsXLCD.o.d ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d ${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d ${OBJECTDIR}/source/LCD/setCGRamAddr.o.d ${OBJECTDIR}/source/LCD/setDDRamAddr.o.d ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d ${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/source/pin_setup.o.d ${OBJECTDIR}/source/timer_setup.o.d ${OBJECTDIR}/source/UART_Setup.o.d ${OBJECTDIR}/source/isr.o.d ${OBJECTDIR}/source/keypad.o.d ${OBJECTDIR}/source/globals.o.d ${OBJECTDIR}/source/calculator.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/source/LCD/BusyXLCD.o ${OBJECTDIR}/source/LCD/delay.o ${OBJECTDIR}/source/LCD/OpenXLCD.o ${OBJECTDIR}/source/LCD/PutsXLCD.o ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o ${OBJECTDIR}/source/LCD/ReadDataXLCD.o ${OBJECTDIR}/source/LCD/setCGRamAddr.o ${OBJECTDIR}/source/LCD/setDDRamAddr.o ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o ${OBJECTDIR}/source/LCD/WriteDataXLCD.o ${OBJECTDIR}/main.o ${OBJECTDIR}/source/pin_setup.o ${OBJECTDIR}/source/timer_setup.o ${OBJECTDIR}/source/UART_Setup.o ${OBJECTDIR}/source/isr.o ${OBJECTDIR}/source/keypad.o ${OBJECTDIR}/source/globals.o ${OBJECTDIR}/source/calculator.o

# Source Files
SOURCEFILES=source/LCD/BusyXLCD.c source/LCD/delay.c source/LCD/OpenXLCD.c source/LCD/PutsXLCD.c source/LCD/ReadAddrXLCD.c source/LCD/ReadDataXLCD.c source/LCD/setCGRamAddr.c source/LCD/setDDRamAddr.c source/LCD/WriteCmdXLCD.c source/LCD/WriteDataXLCD.c main.c source/pin_setup.c source/timer_setup.c source/UART_Setup.c source/isr.c source/keypad.c source/globals.c source/calculator.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24HJ32GP202
MP_LINKER_FILE_OPTION=,--script=p24HJ32GP202.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/source/LCD/BusyXLCD.o: source/LCD/BusyXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/BusyXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/BusyXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/BusyXLCD.c  -o ${OBJECTDIR}/source/LCD/BusyXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/BusyXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/BusyXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/delay.o: source/LCD/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/delay.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/delay.c  -o ${OBJECTDIR}/source/LCD/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/delay.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/OpenXLCD.o: source/LCD/OpenXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/OpenXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/OpenXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/OpenXLCD.c  -o ${OBJECTDIR}/source/LCD/OpenXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/OpenXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/OpenXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/PutsXLCD.o: source/LCD/PutsXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/PutsXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/PutsXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/PutsXLCD.c  -o ${OBJECTDIR}/source/LCD/PutsXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/PutsXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/PutsXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/ReadAddrXLCD.o: source/LCD/ReadAddrXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/ReadAddrXLCD.c  -o ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/ReadDataXLCD.o: source/LCD/ReadDataXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/ReadDataXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/ReadDataXLCD.c  -o ${OBJECTDIR}/source/LCD/ReadDataXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/setCGRamAddr.o: source/LCD/setCGRamAddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/setCGRamAddr.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/setCGRamAddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/setCGRamAddr.c  -o ${OBJECTDIR}/source/LCD/setCGRamAddr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/setCGRamAddr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/setCGRamAddr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/setDDRamAddr.o: source/LCD/setDDRamAddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/setDDRamAddr.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/setDDRamAddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/setDDRamAddr.c  -o ${OBJECTDIR}/source/LCD/setDDRamAddr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/setDDRamAddr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/setDDRamAddr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/WriteCmdXLCD.o: source/LCD/WriteCmdXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/WriteCmdXLCD.c  -o ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/WriteDataXLCD.o: source/LCD/WriteDataXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/WriteDataXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/WriteDataXLCD.c  -o ${OBJECTDIR}/source/LCD/WriteDataXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/pin_setup.o: source/pin_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/pin_setup.o.d 
	@${RM} ${OBJECTDIR}/source/pin_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/pin_setup.c  -o ${OBJECTDIR}/source/pin_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/pin_setup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/pin_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/timer_setup.o: source/timer_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/timer_setup.o.d 
	@${RM} ${OBJECTDIR}/source/timer_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/timer_setup.c  -o ${OBJECTDIR}/source/timer_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/timer_setup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/timer_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/UART_Setup.o: source/UART_Setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/UART_Setup.o.d 
	@${RM} ${OBJECTDIR}/source/UART_Setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/UART_Setup.c  -o ${OBJECTDIR}/source/UART_Setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/UART_Setup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/UART_Setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/isr.o: source/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/isr.o.d 
	@${RM} ${OBJECTDIR}/source/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/isr.c  -o ${OBJECTDIR}/source/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/isr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/keypad.o: source/keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/keypad.o.d 
	@${RM} ${OBJECTDIR}/source/keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/keypad.c  -o ${OBJECTDIR}/source/keypad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/keypad.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/keypad.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/globals.o: source/globals.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/globals.o.d 
	@${RM} ${OBJECTDIR}/source/globals.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/globals.c  -o ${OBJECTDIR}/source/globals.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/globals.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/globals.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/calculator.o: source/calculator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/calculator.o.d 
	@${RM} ${OBJECTDIR}/source/calculator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/calculator.c  -o ${OBJECTDIR}/source/calculator.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/calculator.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/calculator.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/source/LCD/BusyXLCD.o: source/LCD/BusyXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/BusyXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/BusyXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/BusyXLCD.c  -o ${OBJECTDIR}/source/LCD/BusyXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/BusyXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/BusyXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/delay.o: source/LCD/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/delay.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/delay.c  -o ${OBJECTDIR}/source/LCD/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/delay.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/delay.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/OpenXLCD.o: source/LCD/OpenXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/OpenXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/OpenXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/OpenXLCD.c  -o ${OBJECTDIR}/source/LCD/OpenXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/OpenXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/OpenXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/PutsXLCD.o: source/LCD/PutsXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/PutsXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/PutsXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/PutsXLCD.c  -o ${OBJECTDIR}/source/LCD/PutsXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/PutsXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/PutsXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/ReadAddrXLCD.o: source/LCD/ReadAddrXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/ReadAddrXLCD.c  -o ${OBJECTDIR}/source/LCD/ReadAddrXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/ReadAddrXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/ReadDataXLCD.o: source/LCD/ReadDataXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/ReadDataXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/ReadDataXLCD.c  -o ${OBJECTDIR}/source/LCD/ReadDataXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/ReadDataXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/setCGRamAddr.o: source/LCD/setCGRamAddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/setCGRamAddr.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/setCGRamAddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/setCGRamAddr.c  -o ${OBJECTDIR}/source/LCD/setCGRamAddr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/setCGRamAddr.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/setCGRamAddr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/setDDRamAddr.o: source/LCD/setDDRamAddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/setDDRamAddr.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/setDDRamAddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/setDDRamAddr.c  -o ${OBJECTDIR}/source/LCD/setDDRamAddr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/setDDRamAddr.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/setDDRamAddr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/WriteCmdXLCD.o: source/LCD/WriteCmdXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/WriteCmdXLCD.c  -o ${OBJECTDIR}/source/LCD/WriteCmdXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/WriteCmdXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/LCD/WriteDataXLCD.o: source/LCD/WriteDataXLCD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source/LCD 
	@${RM} ${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d 
	@${RM} ${OBJECTDIR}/source/LCD/WriteDataXLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/LCD/WriteDataXLCD.c  -o ${OBJECTDIR}/source/LCD/WriteDataXLCD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/LCD/WriteDataXLCD.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/pin_setup.o: source/pin_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/pin_setup.o.d 
	@${RM} ${OBJECTDIR}/source/pin_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/pin_setup.c  -o ${OBJECTDIR}/source/pin_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/pin_setup.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/pin_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/timer_setup.o: source/timer_setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/timer_setup.o.d 
	@${RM} ${OBJECTDIR}/source/timer_setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/timer_setup.c  -o ${OBJECTDIR}/source/timer_setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/timer_setup.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/timer_setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/UART_Setup.o: source/UART_Setup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/UART_Setup.o.d 
	@${RM} ${OBJECTDIR}/source/UART_Setup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/UART_Setup.c  -o ${OBJECTDIR}/source/UART_Setup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/UART_Setup.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/UART_Setup.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/isr.o: source/isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/isr.o.d 
	@${RM} ${OBJECTDIR}/source/isr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/isr.c  -o ${OBJECTDIR}/source/isr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/isr.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/isr.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/keypad.o: source/keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/keypad.o.d 
	@${RM} ${OBJECTDIR}/source/keypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/keypad.c  -o ${OBJECTDIR}/source/keypad.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/keypad.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/keypad.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/globals.o: source/globals.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/globals.o.d 
	@${RM} ${OBJECTDIR}/source/globals.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/globals.c  -o ${OBJECTDIR}/source/globals.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/globals.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/globals.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/source/calculator.o: source/calculator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/source 
	@${RM} ${OBJECTDIR}/source/calculator.o.d 
	@${RM} ${OBJECTDIR}/source/calculator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  source/calculator.c  -o ${OBJECTDIR}/source/calculator.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/source/calculator.o.d"      -g -omf=elf -O0 -mno-override-inline -msmart-io=1 -Wall -msfr-warn=off
	@${FIXDEPS} "${OBJECTDIR}/source/calculator.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -Wl,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/EE3310_Final_Project_S13.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
