################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: MSP430 Compiler'
	"E:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.4/bin/cl430" -vmsp --abi=eabi --use_hw_mpy=none --include_path="E:/ti/ccsv6/ccs_base/msp430/include" --include_path="E:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.4/include" --advice:power=all -g --define=__MSP430G2553__ --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=minimal --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/linker.cmd: ../main.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"E:/ti/xdctools_3_31_00_24_core/xs" --xdcpath="E:/ti/grace_3_10_00_82/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib;E:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.msp430.elf.MSP430 -p ti.platforms.msp430:MSP430G2553 -r debug -c "E:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.4" -Dxdc.cfg.tsort.policy=fast -Dxdc.cfg.gen.metadataFiles=false -Dxdc.cfg.SourceDir.verbose=7 --compileOptions "-vmsp --abi=eabi --use_hw_mpy=none --include_path=\"E:/ti/ccsv6/ccs_base/msp430/include\" --include_path=\"E:/ti/ccsv6/tools/compiler/ti-cgt-msp430_4.4.4/include\" --advice:power=all -g --define=__MSP430G2553__ --diag_warning=225 --display_error_number --diag_wrap=off --printf_support=minimal  " "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd


