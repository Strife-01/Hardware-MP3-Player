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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MP3_project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MP3_project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/interrupt_control_module/interrupt_control.c src/interrupt_control_module/interrupt_setup.c src/keyboard_contol_module/keyboard_control.c src/kt403_control_module/KT403A.c src/timer_control_module/timer_module.c src/uart_control_module/UART_setup.c src/utils.c src/MP3_project.c src/curiosity_leds_module/curiosity_leds_module.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 ${OBJECTDIR}/src/timer_control_module/timer_module.p1 ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 ${OBJECTDIR}/src/utils.p1 ${OBJECTDIR}/src/MP3_project.p1 ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d ${OBJECTDIR}/src/utils.p1.d ${OBJECTDIR}/src/MP3_project.p1.d ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 ${OBJECTDIR}/src/timer_control_module/timer_module.p1 ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 ${OBJECTDIR}/src/utils.p1 ${OBJECTDIR}/src/MP3_project.p1 ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1

# Source Files
SOURCEFILES=src/interrupt_control_module/interrupt_control.c src/interrupt_control_module/interrupt_setup.c src/keyboard_contol_module/keyboard_control.c src/kt403_control_module/KT403A.c src/timer_control_module/timer_module.c src/uart_control_module/UART_setup.c src/utils.c src/MP3_project.c src/curiosity_leds_module/curiosity_leds_module.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MP3_project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F47Q10
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1: src/interrupt_control_module/interrupt_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/interrupt_control_module" 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 src/interrupt_control_module/interrupt_control.c 
	@-${MV} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.d ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1: src/interrupt_control_module/interrupt_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/interrupt_control_module" 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 src/interrupt_control_module/interrupt_setup.c 
	@-${MV} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.d ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1: src/keyboard_contol_module/keyboard_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/keyboard_contol_module" 
	@${RM} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d 
	@${RM} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 src/keyboard_contol_module/keyboard_control.c 
	@-${MV} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.d ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/kt403_control_module/KT403A.p1: src/kt403_control_module/KT403A.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/kt403_control_module" 
	@${RM} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d 
	@${RM} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 src/kt403_control_module/KT403A.c 
	@-${MV} ${OBJECTDIR}/src/kt403_control_module/KT403A.d ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timer_control_module/timer_module.p1: src/timer_control_module/timer_module.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timer_control_module" 
	@${RM} ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d 
	@${RM} ${OBJECTDIR}/src/timer_control_module/timer_module.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/timer_control_module/timer_module.p1 src/timer_control_module/timer_module.c 
	@-${MV} ${OBJECTDIR}/src/timer_control_module/timer_module.d ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/uart_control_module/UART_setup.p1: src/uart_control_module/UART_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/uart_control_module" 
	@${RM} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d 
	@${RM} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 src/uart_control_module/UART_setup.c 
	@-${MV} ${OBJECTDIR}/src/uart_control_module/UART_setup.d ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/utils.p1: src/utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/utils.p1.d 
	@${RM} ${OBJECTDIR}/src/utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/utils.p1 src/utils.c 
	@-${MV} ${OBJECTDIR}/src/utils.d ${OBJECTDIR}/src/utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/MP3_project.p1: src/MP3_project.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/MP3_project.p1.d 
	@${RM} ${OBJECTDIR}/src/MP3_project.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/MP3_project.p1 src/MP3_project.c 
	@-${MV} ${OBJECTDIR}/src/MP3_project.d ${OBJECTDIR}/src/MP3_project.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/MP3_project.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1: src/curiosity_leds_module/curiosity_leds_module.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/curiosity_leds_module" 
	@${RM} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d 
	@${RM} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1 src/curiosity_leds_module/curiosity_leds_module.c 
	@-${MV} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.d ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1: src/interrupt_control_module/interrupt_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/interrupt_control_module" 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1 src/interrupt_control_module/interrupt_control.c 
	@-${MV} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.d ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interrupt_control_module/interrupt_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1: src/interrupt_control_module/interrupt_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/interrupt_control_module" 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d 
	@${RM} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1 src/interrupt_control_module/interrupt_setup.c 
	@-${MV} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.d ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/interrupt_control_module/interrupt_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1: src/keyboard_contol_module/keyboard_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/keyboard_contol_module" 
	@${RM} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d 
	@${RM} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1 src/keyboard_contol_module/keyboard_control.c 
	@-${MV} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.d ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/keyboard_contol_module/keyboard_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/kt403_control_module/KT403A.p1: src/kt403_control_module/KT403A.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/kt403_control_module" 
	@${RM} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d 
	@${RM} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/kt403_control_module/KT403A.p1 src/kt403_control_module/KT403A.c 
	@-${MV} ${OBJECTDIR}/src/kt403_control_module/KT403A.d ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/kt403_control_module/KT403A.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/timer_control_module/timer_module.p1: src/timer_control_module/timer_module.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/timer_control_module" 
	@${RM} ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d 
	@${RM} ${OBJECTDIR}/src/timer_control_module/timer_module.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/timer_control_module/timer_module.p1 src/timer_control_module/timer_module.c 
	@-${MV} ${OBJECTDIR}/src/timer_control_module/timer_module.d ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/timer_control_module/timer_module.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/uart_control_module/UART_setup.p1: src/uart_control_module/UART_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/uart_control_module" 
	@${RM} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d 
	@${RM} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/uart_control_module/UART_setup.p1 src/uart_control_module/UART_setup.c 
	@-${MV} ${OBJECTDIR}/src/uart_control_module/UART_setup.d ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/uart_control_module/UART_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/utils.p1: src/utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/utils.p1.d 
	@${RM} ${OBJECTDIR}/src/utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/utils.p1 src/utils.c 
	@-${MV} ${OBJECTDIR}/src/utils.d ${OBJECTDIR}/src/utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/MP3_project.p1: src/MP3_project.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/MP3_project.p1.d 
	@${RM} ${OBJECTDIR}/src/MP3_project.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/MP3_project.p1 src/MP3_project.c 
	@-${MV} ${OBJECTDIR}/src/MP3_project.d ${OBJECTDIR}/src/MP3_project.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/MP3_project.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1: src/curiosity_leds_module/curiosity_leds_module.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/src/curiosity_leds_module" 
	@${RM} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d 
	@${RM} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1 src/curiosity_leds_module/curiosity_leds_module.c 
	@-${MV} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.d ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/src/curiosity_leds_module/curiosity_leds_module.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MP3_project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MP3_project.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MP3_project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/MP3_project.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/MP3_project.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MP3_project.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MP3_project.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
