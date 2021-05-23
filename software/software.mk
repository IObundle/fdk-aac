
#path
FDKAAC_SW_DIR:=$(FDKAAC_DIR)/software
libAACenc_src:=$(FDKAAC_DIR)/software/libAACenc/src
libAACenc_include:=$(FDKAAC_DIR)/software/libAACenc/include
libAACdec_src:=$(FDKAAC_DIR)/software/libAACdec/src
libAACdec_include:=$(FDKAAC_DIR)/software/libAACdec/include
libAACdec_src_arm:=$(FDKAAC_DIR)/software/libAACdec/src/arm
libArithCoding_src:=$(FDKAAC_DIR)/software/libArithCoding/src
libArithCoding_include:=$(FDKAAC_DIR)/software/libArithCoding/include
libDRCdec_src:=$(FDKAAC_DIR)/software/libDRCdec/src
libDRCdec_include:=$(FDKAAC_DIR)/software/libDRCdec/include
libFDK_src:=$(FDKAAC_DIR)/software/libFDK/src
libFDK_src_arm:=$(FDKAAC_DIR)/software/libFDK/src/arm
libFDK_src_mips:=$(FDKAAC_DIR)/software/libFDK/src/mips
libFDK_include:=$(FDKAAC_DIR)/software/libFDK/include
libFDK_include_arm:=$(FDKAAC_DIR)/software/libFDK/include/arm
libFDK_include_mips:=$(FDKAAC_DIR)/software/libFDK/include/mips
libFDK_include_ppc:=$(FDKAAC_DIR)/software/libFDK/include/ppc
libFDK_include_x86:=$(FDKAAC_DIR)/software/libFDK/include/x86
libMpegTPDec_include:=$(FDKAAC_DIR)/software/libMpegTPDec/include
libMpegTPDec_src:=$(FDKAAC_DIR)/software/libMpegTPDec/src
libMpegTPEnc_include:=$(FDKAAC_DIR)/software/libMpegTPEnc/include
libMpegTPEnc_src:=$(FDKAAC_DIR)/software/libMpegTPEnc/src
libPCMutils_include:=$(FDKAAC_DIR)/software/libPCMutils/include
libPCMutils_src:=$(FDKAAC_DIR)/software/libPCMutils/src
libSACdec_include:=$(FDKAAC_DIR)/software/libSACdec/include
libSACdec_src:=$(FDKAAC_DIR)/software/libSACdec/src
libSACenc_include:=$(FDKAAC_DIR)/software/libSACenc/include
libSACenc_src:=$(FDKAAC_DIR)/software/libSACenc/src
libSBRdec_include:= $(FDKAAC_DIR)/software/libSBRdec/include
libSBRdec_src:=$(FDKAAC_DIR)/software/libSBRdec/src
libSBRdec_src_arm:=$(FDKAAC_DIR)/software/libSBRdec/src/arm
libSBRenc_include:=$(FDKAAC_DIR)/software/libSBRenc/include
libSBRenc_src:=$(FDKAAC_DIR)/software/libSBRenc/src
libSYS_include:=$(FDKAAC_DIR)/software/libSYS/include
libSYS_src:=$(FDKAAC_DIR)/software/libSYS/src
win32_dir:=$(FDKAAC_DIR)/software/win32

#define
ifeq ($D,1)
DEFINE+=-DDEBUG
endif

#include
INCLUDE+=-I$(FDKAAC_SW_DIR) -I$(libAACenc_src) -I$(libAACenc_include) -I$(libAACdec_src) -I$(libAACdec_include) -I$(libAACdec_src_arm) -I$(libArithCoding_src) \
         -I$(libArithCoding_include)  -I$(libDRCdec_src) -I$(libDRCdec_include) -I$(libFDK_src)  -I$(libFDK_src_arm) -I$(libFDK_src_mips) -I$(libFDK_include) -I$(libFDK_include_arm) \
         -I$(libFDK_include_mips) -I$(libFDK_include_ppc) \
         -I$(libFDK_include_x86)  -I$(libMpegTPDec_include) -I$(libMpegTPDec_src) -I$(libMpegTPEnc_include) -I$(libMpegTPEnc_src) -I$(libPCMutils_include) \
         -I$(libPCMutils_src) -I$(libSACdec_include) -I$(libSACdec_src) -I$(libSACenc_include) -I$(libSACenc_src) -I$(libSBRdec_include) -I$(libSBRdec_src) \
         -I$(libSBRdec_src_arm) -I$(libSBRenc_include) -I$(libSBRenc_src) -I$(libSYS_include) -I$(libSYS_src) \
         -I$(win32_dir)

#headers
HDR+=$(FDKAAC_SW_DIR)/*.h $(libAACenc_src)/*.h $(libAACenc_include)/*.h $(libAACdec_src)/*.h $(libAACdec_include)/*.h \
     $(libArithCoding_include)/*.h  $(libDRCdec_src)/*.h $(libDRCdec_include)/*.h $(libFDK_include_ppc)/*.h \
     $(libFDK_include_x86)/*.h  $(libMpegTPDec_include)/*.h $(libMpegTPDec_src)/*.h $(libMpegTPEnc_include)/*.h $(libMpegTPEnc_src)/*.h $(libPCMutils_include)/*.h \
     $(libPCMutils_src)/*.h $(libSACdec_include)/*.h $(libSACdec_src)/*.h $(libSACenc_include)/*.h $(libSACenc_src)/*.h $(libSBRdec_include)/*.h $(libSBRdec_src)/*.h \
     $(libSBRenc_include)/*.h $(libSBRenc_src)/*.h $(libSYS_include)/*.h \
     $(win32_dir)/*.h $(libFDK_include)/*.h  $(libFDK_include_arm)/*.h $(libFDK_include_mips)/*.h                                                               

#sources
SRC+=$(FDKAAC_SW_DIR)/*.c $(libAACenc_src)/*.cpp $(libAACdec_src)/*.cpp $(libAACdec_src_arm)/*.cpp \
     $(libArithCoding_src)/*.cpp $(libDRCdec_src)/*.cpp $(libFDK_src)/*.cpp  \
     $(libFDK_src_arm)/*.cpp $(libFDK_src_mips)/*.cpp \
     $(libMpegTPDec_src)/*.cpp $(libMpegTPEnc_src)/*.cpp $(libPCMutils_src)/*.cpp \
     $(libSACdec_src)/*.cpp $(libSACenc_src)/*.cpp  $(libSBRdec_src)/*.cpp $(libSBRdec_src_arm)/*.cpp \
     $(libSBRenc_src)/*.cpp $(libSYS_src)/*.cpp 

#$(KNN_SW_DIR)/KNNsw_reg.h: $(KNN_HW_INC_DIR)/KNNsw_reg.v
#	$(LIB_DIR)/software/mkregs.py $< SW
#        mv KNNsw_reg.h $@

