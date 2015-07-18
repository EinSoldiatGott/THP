#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = E:/ti/grace_3_10_00_82/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib;E:/ti/ccsv6/ccs_base
override XDCROOT = E:/ti/xdctools_3_31_00_24_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = E:/ti/grace_3_10_00_82/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib/packages;E:/ti/msp430/MSPWare_2_20_00_19/driverlib;E:/ti/ccsv6/ccs_base;E:/ti/xdctools_3_31_00_24_core/packages;..
HOSTOS = Windows
endif
