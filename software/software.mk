
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
HDR+= $(FDKAAC_SW_DIR)/*.h $(libAACenc_include)/*.h $(libSBRenc_include)/sbr_encoder.h $(libFDK_include)/fixpoint_math.h  $(libFDK_include)/FDK_bitbuffer.h \
      $(libFDK_include)/FDK_bitstream.h  $(libAACenc_src)/channel_map.h   $(libAACenc_src)/aacenc.h $(libAACenc_src)/mps_main.h   $(libSYS_include)/genericStds.h \
      $(libMpegTPEnc_include)/tpenc_lib.h   $(libAACenc_src)/metadata_main.h  $(libPCMutils_include)/pcm_utils.h $(libFDK_include)/FDK_core.h   $(libSBRenc_src)/ps_main.h  \
      $(libSBRenc_src)/sbrenc_rom.h $(libSBRenc_src)/sbrenc_freq_sca.h  $(libSBRenc_src)/env_bit.h $(libSBRenc_src)/sbr_misc.h  $(libSBRenc_src)/sbrenc_ram.h $(libSBRenc_src)/ton_corr.h \
      $(libSBRenc_src)/env_est.h  $(libFDK_include)/qmf.h $(libSBRenc_src)/resampler.h $(libSBRenc_src)/code_env.h $(libSBRenc_src)/fram_gen.h  $(libSBRenc_src)/tran_det.h \
      $(libSYS_include)/syslib_channelMapDescr.h $(libAACenc_src)/aacEnc_ram.h  $(libAACenc_src)/psy_main.h $(libAACenc_src)/qc_main.h $(libAACenc_src)/bandwidth.h \
      $(libAACenc_src)/bitenc.h $(libSACenc_include)/sacenc_lib.h $(libMpegTPEnc_src)/tpenc_adts.h  $(libMpegTPEnc_src)/tpenc_latm.h $(libMpegTPEnc_src)/tpenc_asc.h \
      $(libMpegTPEnc_src)/tpenc_adif.h $(libAACenc_src)/metadata_compressor.h $(libFDK_include)/FDK_hybrid.h $(libSBRenc_src)/ps_encode.h $(libSBRenc_src)/ps_bitenc.h \
      $(libFDK_include)/FDK_crc.h $(libFDK_include)/scale.h $(libFDK_include)/autocorr2nd.h $(libSBRenc_src)/invf_est.h $(libSBRenc_src)/mh_det.h $(libSBRenc_src)/nf_est.h \
      $(libFDK_include)/dct.h $(libAACenc_src)/block_switch.h $(libFDK_include)/mdct.h $(libAACenc_src)/psy_configuration.h $(libAACenc_src)/tns_func.h $(libAACenc_src)/transform.h \
      $(libAACenc_src)/pre_echo_control.h $(libAACenc_src)/pns_func.h $(libAACenc_src)/band_nrg.h $(libAACenc_src)/intensity.h $(libAACenc_src)/ms_stereo.h $(libAACenc_src)/tonality.h \
      $(libAACenc_src)/adj_thr.h $(libAACenc_src)/spreading.h $(libAACenc_src)/grp_data.h $(libAACenc_src)/sf_estim.h  $(libAACenc_src)/bit_cnt.h $(libAACenc_src)/aacEnc_rom.h \
      $(libAACenc_src)/dyn_bits.h $(libSACenc_src)/sacenc_paramextract.h $(libAACenc_src)/quantize.h $(libSACenc_src)/sacenc_tree.h $(libSACenc_src)/sacenc_filter.h \
      $(libFDK_include)/FDK_matrixCalloc.h $(libSACenc_src)/sacenc_onsetdetect.h $(libSACenc_src)/sacenc_framewindowing.h $(libSACenc_src)/sacenc_staticgain.h \
      $(libSACenc_src)/sacenc_dmx_tdom_enh.h  $(libSACenc_src)/sacenc_bitstream.h $(libSACenc_src)/sacenc_delay.h $(libSACenc_src)/sacenc_vectorfunctions.h \
      $(libFDK_include)/fft.h $(libFDK_include)/FDK_trigFcts.h $(libFDK_include)/FDK_lpc.h $(libAACenc_src)/pnsparam.h $(libAACenc_src)/noisedet.h $(libAACenc_src)/chaosmeasure.h \
      $(libAACenc_src)/line_pe.h $(libSACenc_src)/sacenc_nlc_enc.h $(libFDK_include)/fft_rad2.h $(libSACenc_src)/sacenc_huff_tab.h
      
#sources
SRC+=$(FDKAAC_SW_DIR)/aac-enc.c $(FDKAAC_SW_DIR)/wavreader.c $(libAACenc_src)/aacenc_lib.cpp $(libSBRenc_src)/bit_sbr.cpp $(libSBRenc_src)/sbr_encoder.cpp $(libFDK_src)/fixpoint_math.cpp \
     $(libFDK_src)/FDK_bitbuffer.cpp $(libAACenc_src)/channel_map.cpp  $(libAACenc_src)/aacenc.cpp  $(libAACenc_src)/mps_main.cpp  $(libSYS_src)/genericStds.cpp  $(libMpegTPEnc_src)/tpenc_lib.cpp \
     $(libAACenc_src)/metadata_main.cpp  $(libPCMutils_src)/pcm_utils.cpp $(libFDK_src)/FDK_core.cpp  $(libSBRenc_src)/ps_main.cpp  $(libSBRenc_src)/sbrenc_rom.cpp \
     $(libSBRenc_src)/sbrenc_freq_sca.cpp $(libSBRenc_src)/env_bit.cpp  $(libSBRenc_src)/sbr_misc.cpp  $(libSBRenc_src)/sbrenc_ram.cpp $(libSBRenc_src)/ton_corr.cpp \
     $(libSBRenc_src)/env_est.cpp  $(libFDK_src)/qmf.cpp  $(libSBRenc_src)/resampler.cpp  $(libSBRenc_src)/code_env.cpp  $(libSBRenc_src)/fram_gen.cpp  $(libSBRenc_src)/tran_det.cpp \
     $(libSYS_src)/syslib_channelMapDescr.cpp $(libFDK_src)/FDK_tools_rom.cpp  $(libAACenc_src)/aacEnc_ram.cpp  $(libAACenc_src)/psy_main.cpp   $(libAACenc_src)/qc_main.cpp \
     $(libAACenc_src)/bandwidth.cpp $(libAACenc_src)/bitenc.cpp $(libSACenc_src)/sacenc_lib.cpp $(libMpegTPEnc_src)/tpenc_adts.cpp  $(libMpegTPEnc_src)/tpenc_latm.cpp \
     $(libMpegTPEnc_src)/tpenc_asc.cpp  $(libMpegTPEnc_src)/tpenc_adif.cpp  $(libAACenc_src)/metadata_compressor.cpp  $(libFDK_src)/FDK_hybrid.cpp  $(libSBRenc_src)/ps_encode.cpp \
     $(libSBRenc_src)/ps_bitenc.cpp  $(libFDK_src)/FDK_crc.cpp $(libFDK_src)/scale.cpp $(libFDK_src)/autocorr2nd.cpp $(libSBRenc_src)/invf_est.cpp $(libSBRenc_src)/mh_det.cpp \
     $(libSBRenc_src)/nf_est.cpp $(libFDK_src)/dct.cpp $(libAACenc_src)/block_switch.cpp  $(libFDK_src)/mdct.cpp $(libAACenc_src)/psy_configuration.cpp $(libAACenc_src)/aacenc_tns.cpp \
     $(libAACenc_src)/transform.cpp $(libAACenc_src)/pre_echo_control.cpp $(libAACenc_src)/aacenc_pns.cpp $(libAACenc_src)/band_nrg.cpp $(libAACenc_src)/intensity.cpp \
     $(libAACenc_src)/ms_stereo.cpp $(libAACenc_src)/tonality.cpp $(libAACenc_src)/adj_thr.cpp $(libAACenc_src)/spreading.cpp $(libAACenc_src)/grp_data.cpp $(libAACenc_src)/sf_estim.cpp \
     $(libAACenc_src)/bit_cnt.cpp $(libAACenc_src)/aacEnc_rom.cpp $(libAACenc_src)/dyn_bits.cpp $(libSACenc_src)/sacenc_paramextract.cpp $(libAACenc_src)/quantize.cpp \
     $(libSACenc_src)/sacenc_tree.cpp $(libSACenc_src)/sacenc_filter.cpp $(libFDK_src)/FDK_matrixCalloc.cpp $(libSACenc_src)/sacenc_onsetdetect.cpp $(libSACenc_src)/sacenc_framewindowing.cpp \
     $(libSACenc_src)/sacenc_staticgain.cpp  $(libSACenc_src)/sacenc_dmx_tdom_enh.cpp $(libSACenc_src)/sacenc_bitstream.cpp $(libSACenc_src)/sacenc_delay.cpp \
     $(libSACenc_src)/sacenc_vectorfunctions.cpp $(libFDK_src)/fft.cpp  $(libFDK_src)/FDK_trigFcts.cpp $(libFDK_src)/FDK_lpc.cpp $(libAACenc_src)/pnsparam.cpp \
     $(libAACenc_src)/noisedet.cpp $(libAACenc_src)/chaosmeasure.cpp $(libAACenc_src)/line_pe.cpp  $(libSACenc_src)/sacenc_nlc_enc.cpp $(libFDK_src)/fft_rad2.cpp \
     $(libSACenc_src)/sacenc_huff_tab.cpp
      
#$(KNN_SW_DIR)/KNNsw_reg.h: $(KNN_HW_INC_DIR)/KNNsw_reg.v
#	$(LIB_DIR)/software/mkregs.py $< SW
#        mv KNNsw_reg.h $@

