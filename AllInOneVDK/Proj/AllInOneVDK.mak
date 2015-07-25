# Generated by the VisualDSP++ IDDE

# Note:  Any changes made to this Makefile will be lost the next time the
# matching project file is loaded into the IDDE.  If you wish to preserve
# changes, rename this file and run it externally to the IDDE.

# The syntax of this Makefile is such that GNU Make v3.77 or higher is
# required.

# The current working directory should be the directory in which this
# Makefile resides.

# Supported targets:
#     AllInOneVDK_Release
#     AllInOneVDK_Release_clean

# Define this variable if you wish to run this Makefile on a host
# other than the host that created it and VisualDSP++ may be installed
# in a different directory.

ADI_DSP=C:\Program Files (x86)\Analog Devices\VisualDSP 5.0


# $VDSP is a gmake-friendly version of ADI_DIR

empty:=
space:= $(empty) $(empty)
VDSP_INTERMEDIATE=$(subst \,/,$(ADI_DSP))
VDSP=$(subst $(space),\$(space),$(VDSP_INTERMEDIATE))

RM=cmd /C del /F /Q

#
# Begin "AllInOneVDK_Release" configuration
#

ifeq ($(MAKECMDGOALS),AllInOneVDK_Release)

AllInOneVDK_Release : ../Obj/AllInOneVDK.ldr 

../Obj/adi_ssl_Init.doj :../Embedded/Platform/adi_ssl_Init.c $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/sys/pll.h $(VDSP)/Blackfin/include/drivers/adi_dev.h ../Embedded/Platform/adi_ssl_init.h 
	@echo "..\Embedded\Platform\adi_ssl_Init.c"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\Platform\adi_ssl_Init.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\adi_ssl_Init.doj -MM

../Obj/adi_stdio_uart.doj :../Embedded/Drivers/adi_stdio_uart.c $(VDSP)/Blackfin/include/string.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/services/stdio/adi_stdio.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/stdint.h ../Embedded/Drivers/adi_stdio_common.h $(VDSP)/Blackfin/include/osal/adi_osal.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h 
	@echo "..\Embedded\Drivers\adi_stdio_uart.c"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\Drivers\adi_stdio_uart.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\adi_stdio_uart.doj -MM

../Obj/adi_uart_dma.doj :../BlackfinLib/src/drivers/uart/adi_uart_dma.c ../BlackfinLib/src/drivers/uart/adi_uart.c $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h 
	@echo "..\BlackfinLib\src\drivers\uart\adi_uart_dma.c"
	$(VDSP)/ccblkfn.exe -c ..\BlackfinLib\src\drivers\uart\adi_uart_dma.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\adi_uart_dma.doj -MM

../Obj/AIODrivers.doj :../Embedded/Drivers/AIODrivers.c ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/yvals.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Embedded\Drivers\AIODrivers.c"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\Drivers\AIODrivers.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\AIODrivers.doj -MM

VDK.h VDK.cpp AllInOneVDK.rbld :$(VDSP)/blackfin/vdk/VDK.cpp.tf $(VDSP)/blackfin/vdk/VDK.h.tf $(VDSP)/blackfin/vdk/VDKGen.exe ./AllInOneVDK.vdk AllInOneVDK.rbld 
	@echo ".\AllInOneVDK.vdk"
	$(VDSP)/Blackfin\vdk\vdkgen.exe .\AllInOneVDK.vdk -proc ADSP-BF512 -MM

../Obj/AllInOneVDK_basiccrt.doj :./AllInOneVDK_basiccrt.s $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/platform.h 
	@echo ".\AllInOneVDK_basiccrt.s"
	$(VDSP)/easmblkfn.exe .\AllInOneVDK_basiccrt.s -proc ADSP-BF512 -file-attr ProjectName=AllInOneVDK -D_ADI_THREADS -o ..\Obj\AllInOneVDK_basiccrt.doj -MM

../Obj/AllInOneVDK_heaptab.doj :AllInOneVDK_heaptab.c 
	@echo ".\AllInOneVDK_heaptab.c"
	$(VDSP)/ccblkfn.exe -c .\AllInOneVDK_heaptab.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\AllInOneVDK_heaptab.doj -MM

../Obj/BootThread.doj :../Threads/BootThread.cpp ../Threads/BootThread.h VDK.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/VDK_Public.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/assert.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/cplus/new $(VDSP)/Blackfin/include/cplus/exception $(VDSP)/Blackfin/include/cplus/xstddef $(VDSP)/Blackfin/include/xsyslock.h $(VDSP)/Blackfin/include/sys/adi_rtl_sync.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/cplus/cstdlib $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/cplus/cstddef $(VDSP)/Blackfin/include/string.h ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Threads\BootThread.cpp"
	$(VDSP)/ccblkfn.exe -c ..\Threads\BootThread.cpp -c++ -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\BootThread.doj -MM

../Obj/cvteBF51x_GPP.doj :../CVTELib/cvteBF51x_GPP.c ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/yvals.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\CVTELib\cvteBF51x_GPP.c"
	$(VDSP)/ccblkfn.exe -c ..\CVTELib\cvteBF51x_GPP.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\cvteBF51x_GPP.doj -MM

../Obj/ExceptionHandler-BF512.doj :./ExceptionHandler-BF512.asm ./VDK.h $(VDSP)/Blackfin/include/VDK_Public.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/def_LPBlackfin.h 
	@echo ".\ExceptionHandler-BF512.asm"
	$(VDSP)/easmblkfn.exe .\ExceptionHandler-BF512.asm -proc ADSP-BF512 -file-attr ProjectName=AllInOneVDK -D_ADI_THREADS -o ..\Obj\ExceptionHandler-BF512.doj -MM

../Obj/LedThread.doj :../Threads/LedThread.cpp ../Threads/LedThread.h VDK.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/VDK_Public.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/assert.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/cplus/new $(VDSP)/Blackfin/include/cplus/exception $(VDSP)/Blackfin/include/cplus/xstddef $(VDSP)/Blackfin/include/xsyslock.h $(VDSP)/Blackfin/include/sys/adi_rtl_sync.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/cplus/cstdlib $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/cplus/cstddef $(VDSP)/Blackfin/include/string.h ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Threads\LedThread.cpp"
	$(VDSP)/ccblkfn.exe -c ..\Threads\LedThread.cpp -c++ -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\LedThread.doj -MM

../Obj/main.doj :../Embedded/main.cpp VDK.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/VDK_Public.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/assert.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/cplus/new $(VDSP)/Blackfin/include/cplus/exception $(VDSP)/Blackfin/include/cplus/xstddef $(VDSP)/Blackfin/include/xsyslock.h $(VDSP)/Blackfin/include/sys/adi_rtl_sync.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/cplus/cstdlib $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/cplus/cstddef $(VDSP)/Blackfin/include/string.h ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Embedded\main.cpp"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\main.cpp -c++ -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\main.doj -MM

../Obj/StdioUart.doj :../Embedded/Drivers/StdioUart.c ../Config/includes.h $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/yvals.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Embedded\Drivers\StdioUart.c"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\Drivers\StdioUart.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\StdioUart.doj -MM

../Obj/udprintf.doj :../Embedded/Drivers/udprintf.c $(VDSP)/Blackfin/include/stdio.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/string.h $(VDSP)/Blackfin/include/stdarg.h ../Config/includes.h ../Config/defines.h $(VDSP)/Blackfin/include/adi_types.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/drivers/adi_dev.h $(VDSP)/Blackfin/include/services/services.h $(VDSP)/Blackfin/include/services_types.h $(VDSP)/Blackfin/include/sys/exception.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/ccblkfn.h $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/builtins.h $(VDSP)/Blackfin/include/sys/builtins_support.h $(VDSP)/Blackfin/include/fract_typedef.h $(VDSP)/Blackfin/include/fr2x16_typedef.h $(VDSP)/Blackfin/include/r2x16_typedef.h $(VDSP)/Blackfin/include/raw_typedef.h $(VDSP)/Blackfin/include/sys/anomaly_macros_rtl.h $(VDSP)/Blackfin/include/sys/mc_typedef.h $(VDSP)/Blackfin/include/services/int/adi_int.h $(VDSP)/Blackfin/include/services/dcb/adi_dcb.h $(VDSP)/Blackfin/include/services/dma/adi_dma.h $(VDSP)/Blackfin/include/services/ebiu/adi_ebiu.h $(VDSP)/Blackfin/include/services/rtc/adi_rtc.h $(VDSP)/Blackfin/include/time.h $(VDSP)/Blackfin/include/xcycle_count.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/cycle_count_bf.h $(VDSP)/Blackfin/include/services/pwr/adi_pwr.h $(VDSP)/Blackfin/include/services/tmr/adi_tmr.h $(VDSP)/Blackfin/include/services/flag/adi_flag.h $(VDSP)/Blackfin/include/services/ports/adi_ports.h $(VDSP)/Blackfin/include/services/ports/adi_ports_bf51x.h $(VDSP)/Blackfin/include/services/sem/adi_sem.h $(VDSP)/Blackfin/include/services/pwm/adi_pwm.h $(VDSP)/Blackfin/include/drivers/uart/adi_uart.h ../Config/typedefs.h ../CVTELib/cvteBF51x.h $(VDSP)/Blackfin/include/bfrom.h ../CVTELib/cvteBF51x_GPP.h ../Embedded/Platform/adi_ssl_Init.h ../Embedded/Drivers/adi_stdio.h $(VDSP)/Blackfin/include/device.h $(VDSP)/Blackfin/include/device_int.h ../Embedded/Drivers/AIODrivers.h ../Embedded/Drivers/StdioUart.h ../Embedded/Drivers/udprintf.h 
	@echo "..\Embedded\Drivers\udprintf.c"
	$(VDSP)/ccblkfn.exe -c ..\Embedded\Drivers\udprintf.c -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\udprintf.doj -MM

../Obj/VDK.doj :VDK.cpp VDK.h $(VDSP)/Blackfin/include/defBF512.h $(VDSP)/Blackfin/include/def_LPBlackfin.h $(VDSP)/Blackfin/include/defBF51x_base.h $(VDSP)/Blackfin/include/VDK_Public.h $(VDSP)/Blackfin/include/limits.h $(VDSP)/Blackfin/include/yvals.h $(VDSP)/Blackfin/include/stddef.h $(VDSP)/Blackfin/include/assert.h $(VDSP)/Blackfin/include/sys/platform.h $(VDSP)/Blackfin/include/sys/_adi_platform.h $(VDSP)/Blackfin/include/cdefBF512.h $(VDSP)/Blackfin/include/cdef_LPBlackfin.h $(VDSP)/Blackfin/include/cdefBF51x_base.h $(VDSP)/Blackfin/include/cplus/new $(VDSP)/Blackfin/include/cplus/exception $(VDSP)/Blackfin/include/cplus/xstddef $(VDSP)/Blackfin/include/xsyslock.h $(VDSP)/Blackfin/include/sys/adi_rtl_sync.h $(VDSP)/Blackfin/include/stdbool.h $(VDSP)/Blackfin/include/stdint.h $(VDSP)/Blackfin/include/cplus/cstdlib $(VDSP)/Blackfin/include/stdlib.h $(VDSP)/Blackfin/include/stdlib_bf.h $(VDSP)/Blackfin/include/cplus/cstddef $(VDSP)/Blackfin/include/string.h $(VDSP)/Blackfin/include/VDK_Internals.h $(VDSP)/Blackfin/include/sys/exception.h ../Threads/BootThread.h ../Threads/LedThread.h 
	@echo ".\VDK.cpp"
	$(VDSP)/ccblkfn.exe -c .\VDK.cpp -c++ -O -Ov100 -structs-do-not-overlap -const-read-write -const-strings -no-multiline -I ../ -I ../Threads -D__PROCESSOR_SPEED__=256000000 -double-size-32 -decls-strong -stack-detect -flags-compiler --diag_warning,implicit_func_decl -warn-protos -flags-compiler --diag_warning,call_not_inlined -threads -full-io -proc ADSP-BF512 -o ..\Obj\VDK.doj -MM

../Obj/AllInOneVDK.dxe :./AllInOneVDK.ldf ./VDK.h ../Obj/AllInOneVDK_basiccrt.doj ../Obj/adi_ssl_Init.doj ../Obj/adi_stdio_uart.doj ../Obj/adi_uart_dma.doj ../Obj/AIODrivers.doj ../Obj/AllInOneVDK_heaptab.doj ../Obj/BootThread.doj ../Obj/cvteBF51x_GPP.doj ../Obj/ExceptionHandler-BF512.doj ../Obj/LedThread.doj ../Obj/main.doj ../Obj/StdioUart.doj ../Obj/udprintf.doj ../Obj/VDK.doj $(VDSP)/Blackfin/lib/cplbtab512.doj $(VDSP)/Blackfin/lib/bf512_rev_any/crtn532y.doj $(VDSP)/Blackfin/lib/bf512_rev_any/TMK-BF532_sov.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/vdk-CORE-BF532.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/vdk-i-BF532.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libsmall532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libc532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/librt_fileio532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libio532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libevent532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/Debug/libssl512_vdky.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/Debug/libdrv512y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/Debug/libusb512y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libx532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libcpp532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libcpprt532mty.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libsftflt532y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libf64ieee532y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libdsp532y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/libetsi532y.dlb $(VDSP)/Blackfin/lib/bf512_rev_any/idle532mty.doj $(VDSP)/Blackfin/lib/bf512_rev_any/librt532mty.dlb 
	@echo "Linking..."
	$(VDSP)/ccblkfn.exe ..\Obj\adi_ssl_Init.doj ..\Obj\adi_stdio_uart.doj ..\Obj\adi_uart_dma.doj ..\Obj\AIODrivers.doj ..\Obj\AllInOneVDK_basiccrt.doj ..\Obj\AllInOneVDK_heaptab.doj ..\Obj\BootThread.doj ..\Obj\cvteBF51x_GPP.doj ..\Obj\ExceptionHandler-BF512.doj ..\Obj\LedThread.doj ..\Obj\main.doj ..\Obj\StdioUart.doj ..\Obj\udprintf.doj ..\Obj\VDK.doj -T .\AllInOneVDK.ldf -map ..\Obj\AllInOneVDK.map.xml -flags-link -ip -L ..\Obj -flags-link -MDUSER_CRT=ADI_QUOTEAllInOneVDK_basiccrt.dojADI_QUOTE,-MDUSE_FILEIO,-MD__cplusplus -flags-link -e -flags-link -ev -add-debug-libpaths -ieee-fp -full-io -flags-link -od,..\Obj -o ..\Obj\AllInOneVDK.dxe -proc ADSP-BF512 -flags-link -MD_ADI_THREADS -stack-detect -flags-link -MM

../Obj/AllInOneVDK.ldr :../Obj/AllInOneVDK.dxe 
	@echo "Creating loader file..."
	$(VDSP)/elfloader.exe ..\Obj\AllInOneVDK.dxe -b SPI -f BINARY -Width 8 -v -o ..\Obj\AllInOneVDK.ldr -No2Kernel -proc ADSP-BF512 -MM

endif

ifeq ($(MAKECMDGOALS),AllInOneVDK_Release_clean)

AllInOneVDK_Release_clean:
	-$(RM) "..\Obj\adi_ssl_Init.doj"
	-$(RM) "..\Obj\adi_stdio_uart.doj"
	-$(RM) "..\Obj\adi_uart_dma.doj"
	-$(RM) "..\Obj\AIODrivers.doj"
	-$(RM) "..\Obj\AllInOneVDK_basiccrt.doj"
	-$(RM) "..\Obj\AllInOneVDK_heaptab.doj"
	-$(RM) "..\Obj\BootThread.doj"
	-$(RM) "..\Obj\cvteBF51x_GPP.doj"
	-$(RM) "..\Obj\ExceptionHandler-BF512.doj"
	-$(RM) "..\Obj\LedThread.doj"
	-$(RM) "..\Obj\main.doj"
	-$(RM) "..\Obj\StdioUart.doj"
	-$(RM) "..\Obj\udprintf.doj"
	-$(RM) "..\Obj\VDK.doj"
	-$(RM) "..\Obj\AllInOneVDK.dxe"
	-$(RM) "..\Obj\AllInOneVDK.ldr"
	-$(RM) "..\Obj\*.ipa"
	-$(RM) "..\Obj\*.opa"
	-$(RM) "..\Obj\*.ti"
	-$(RM) "..\Obj\*.pgi"
	-$(RM) ".\*.rbld"

endif


