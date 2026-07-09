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
ifeq "$(wildcard nbproject/Makefile-local-LanEllipse6_conf.mk)" "nbproject/Makefile-local-LanEllipse6_conf.mk"
include nbproject/Makefile-local-LanEllipse6_conf.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=LanEllipse6_conf
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/LanEllipse6_conf/crypto/src/crypto.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c ../src/config/LanEllipse6_conf/system/command/src/sys_command.c ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c ../src/config/LanEllipse6_conf/system/console/src/sys_console.c ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c ../src/config/LanEllipse6_conf/system/int/src/sys_int.c ../src/config/LanEllipse6_conf/system/reset/sys_reset.c ../src/config/LanEllipse6_conf/system/time/src/sys_time.c ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c ../src/config/LanEllipse6_conf/tasks.c ../src/config/LanEllipse6_conf/initialization.c ../src/config/LanEllipse6_conf/interrupts.c ../src/config/LanEllipse6_conf/exceptions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/third_party/zlib/adler32.c ../src/third_party/zlib/compress.c ../src/third_party/zlib/crc32.c ../src/third_party/zlib/deflate.c ../src/third_party/zlib/gzclose.c ../src/third_party/zlib/infback.c ../src/third_party/zlib/inffast.c ../src/third_party/zlib/inflate.c ../src/third_party/zlib/inftrees.c ../src/third_party/zlib/trees.c ../src/third_party/zlib/uncompr.c ../src/third_party/zlib/zutil.c ../src/app.c ../src/main.c ../src/OrTcpIp.c ../src/OrGpio.c ../src/OrAdc.c ../src/OrFlash.c ../src/OrUtils.c ../src/OrTime.c ../src/OrTCA9539.c ../src/OrParser.c ../src/OrOp.c ../src/OrI2c.c ../src/OrTmp117.c ../src/OrEmc2305.c ../src/OrLm75.c ../src/OrDs1682.c ../src/Or24Fc512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/282933696/crypto.o ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/926090922/drv_ethphy.o ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/1493300322/drv_miim.o ${OBJECTDIR}/_ext/505056673/helpers.o ${OBJECTDIR}/_ext/505056673/tcp.o ${OBJECTDIR}/_ext/505056673/arp.o ${OBJECTDIR}/_ext/505056673/berkeley_api.o ${OBJECTDIR}/_ext/505056673/ipv4.o ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o ${OBJECTDIR}/_ext/505056673/dhcp.o ${OBJECTDIR}/_ext/505056673/dns.o ${OBJECTDIR}/_ext/505056673/hash_fnv.o ${OBJECTDIR}/_ext/505056673/oahash.o ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o ${OBJECTDIR}/_ext/505056673/tcpip_manager.o ${OBJECTDIR}/_ext/505056673/tcpip_notify.o ${OBJECTDIR}/_ext/505056673/tcpip_packet.o ${OBJECTDIR}/_ext/505056673/tcpip_announce.o ${OBJECTDIR}/_ext/505056673/udp.o ${OBJECTDIR}/_ext/505056673/icmp.o ${OBJECTDIR}/_ext/505056673/tcpip_commands.o ${OBJECTDIR}/_ext/505056673/sntp.o ${OBJECTDIR}/_ext/2036033016/net_pres.o ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o ${OBJECTDIR}/_ext/1423019703/plib_adc.o ${OBJECTDIR}/_ext/1423021881/plib_clk.o ${OBJECTDIR}/_ext/1164074580/plib_evic.o ${OBJECTDIR}/_ext/1164128408/plib_gpio.o ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o ${OBJECTDIR}/_ext/1164175250/plib_icap2.o ${OBJECTDIR}/_ext/1423032764/plib_nvm.o ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o ${OBJECTDIR}/_ext/1164531351/plib_uart2.o ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o ${OBJECTDIR}/_ext/2107050346/sys_command.o ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o ${OBJECTDIR}/_ext/1650338166/sys_console.o ${OBJECTDIR}/_ext/684820210/sys_debug.o ${OBJECTDIR}/_ext/1050442482/sys_int.o ${OBJECTDIR}/_ext/216512231/sys_reset.o ${OBJECTDIR}/_ext/803010664/sys_time.o ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/354746917/tasks.o ${OBJECTDIR}/_ext/354746917/initialization.o ${OBJECTDIR}/_ext/354746917/interrupts.o ${OBJECTDIR}/_ext/354746917/exceptions.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/905221350/adler32.o ${OBJECTDIR}/_ext/905221350/compress.o ${OBJECTDIR}/_ext/905221350/crc32.o ${OBJECTDIR}/_ext/905221350/deflate.o ${OBJECTDIR}/_ext/905221350/gzclose.o ${OBJECTDIR}/_ext/905221350/infback.o ${OBJECTDIR}/_ext/905221350/inffast.o ${OBJECTDIR}/_ext/905221350/inflate.o ${OBJECTDIR}/_ext/905221350/inftrees.o ${OBJECTDIR}/_ext/905221350/trees.o ${OBJECTDIR}/_ext/905221350/uncompr.o ${OBJECTDIR}/_ext/905221350/zutil.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o ${OBJECTDIR}/_ext/1360937237/OrGpio.o ${OBJECTDIR}/_ext/1360937237/OrAdc.o ${OBJECTDIR}/_ext/1360937237/OrFlash.o ${OBJECTDIR}/_ext/1360937237/OrUtils.o ${OBJECTDIR}/_ext/1360937237/OrTime.o ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o ${OBJECTDIR}/_ext/1360937237/OrParser.o ${OBJECTDIR}/_ext/1360937237/OrOp.o ${OBJECTDIR}/_ext/1360937237/OrI2c.o ${OBJECTDIR}/_ext/1360937237/OrTmp117.o ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o ${OBJECTDIR}/_ext/1360937237/OrLm75.o ${OBJECTDIR}/_ext/1360937237/OrDs1682.o ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/282933696/crypto.o.d ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o.d ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o.d ${OBJECTDIR}/_ext/926090922/drv_ethphy.o.d ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o.d ${OBJECTDIR}/_ext/1493300322/drv_miim.o.d ${OBJECTDIR}/_ext/505056673/helpers.o.d ${OBJECTDIR}/_ext/505056673/tcp.o.d ${OBJECTDIR}/_ext/505056673/arp.o.d ${OBJECTDIR}/_ext/505056673/berkeley_api.o.d ${OBJECTDIR}/_ext/505056673/ipv4.o.d ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/505056673/dhcp.o.d ${OBJECTDIR}/_ext/505056673/dns.o.d ${OBJECTDIR}/_ext/505056673/hash_fnv.o.d ${OBJECTDIR}/_ext/505056673/oahash.o.d ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o.d ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/505056673/tcpip_manager.o.d ${OBJECTDIR}/_ext/505056673/tcpip_notify.o.d ${OBJECTDIR}/_ext/505056673/tcpip_packet.o.d ${OBJECTDIR}/_ext/505056673/tcpip_announce.o.d ${OBJECTDIR}/_ext/505056673/udp.o.d ${OBJECTDIR}/_ext/505056673/icmp.o.d ${OBJECTDIR}/_ext/505056673/tcpip_commands.o.d ${OBJECTDIR}/_ext/505056673/sntp.o.d ${OBJECTDIR}/_ext/2036033016/net_pres.o.d ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o.d ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o.d ${OBJECTDIR}/_ext/1423019703/plib_adc.o.d ${OBJECTDIR}/_ext/1423021881/plib_clk.o.d ${OBJECTDIR}/_ext/1164074580/plib_evic.o.d ${OBJECTDIR}/_ext/1164128408/plib_gpio.o.d ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o.d ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o.d ${OBJECTDIR}/_ext/1164175250/plib_icap2.o.d ${OBJECTDIR}/_ext/1423032764/plib_nvm.o.d ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o.d ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o.d ${OBJECTDIR}/_ext/1164531351/plib_uart2.o.d ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o.d ${OBJECTDIR}/_ext/2107050346/sys_command.o.d ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o.d ${OBJECTDIR}/_ext/1650338166/sys_console.o.d ${OBJECTDIR}/_ext/684820210/sys_debug.o.d ${OBJECTDIR}/_ext/1050442482/sys_int.o.d ${OBJECTDIR}/_ext/216512231/sys_reset.o.d ${OBJECTDIR}/_ext/803010664/sys_time.o.d ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o.d ${OBJECTDIR}/_ext/354746917/tasks.o.d ${OBJECTDIR}/_ext/354746917/initialization.o.d ${OBJECTDIR}/_ext/354746917/interrupts.o.d ${OBJECTDIR}/_ext/354746917/exceptions.o.d ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d ${OBJECTDIR}/_ext/1664057780/arc4.o.d ${OBJECTDIR}/_ext/1664057780/asm.o.d ${OBJECTDIR}/_ext/1664057780/asn.o.d ${OBJECTDIR}/_ext/1664057780/blake2b.o.d ${OBJECTDIR}/_ext/1664057780/blake2s.o.d ${OBJECTDIR}/_ext/1664057780/camellia.o.d ${OBJECTDIR}/_ext/1664057780/chacha.o.d ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/1664057780/cmac.o.d ${OBJECTDIR}/_ext/1664057780/coding.o.d ${OBJECTDIR}/_ext/1664057780/compress.o.d ${OBJECTDIR}/_ext/1664057780/cpuid.o.d ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d ${OBJECTDIR}/_ext/1664057780/curve25519.o.d ${OBJECTDIR}/_ext/1664057780/curve448.o.d ${OBJECTDIR}/_ext/1664057780/dh.o.d ${OBJECTDIR}/_ext/1664057780/dsa.o.d ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d ${OBJECTDIR}/_ext/1664057780/ed25519.o.d ${OBJECTDIR}/_ext/1664057780/ed448.o.d ${OBJECTDIR}/_ext/1664057780/error.o.d ${OBJECTDIR}/_ext/1664057780/fe_448.o.d ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d ${OBJECTDIR}/_ext/1664057780/ge_448.o.d ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d ${OBJECTDIR}/_ext/1664057780/hash.o.d ${OBJECTDIR}/_ext/1664057780/hc128.o.d ${OBJECTDIR}/_ext/1664057780/hmac.o.d ${OBJECTDIR}/_ext/1664057780/idea.o.d ${OBJECTDIR}/_ext/1664057780/integer.o.d ${OBJECTDIR}/_ext/1664057780/logging.o.d ${OBJECTDIR}/_ext/1664057780/md2.o.d ${OBJECTDIR}/_ext/1664057780/md4.o.d ${OBJECTDIR}/_ext/1664057780/md5.o.d ${OBJECTDIR}/_ext/1664057780/memory.o.d ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d ${OBJECTDIR}/_ext/1664057780/poly1305.o.d ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d ${OBJECTDIR}/_ext/1664057780/rabbit.o.d ${OBJECTDIR}/_ext/1664057780/rc2.o.d ${OBJECTDIR}/_ext/1664057780/ripemd.o.d ${OBJECTDIR}/_ext/1664057780/rsa.o.d ${OBJECTDIR}/_ext/1664057780/sha3.o.d ${OBJECTDIR}/_ext/1664057780/signature.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d ${OBJECTDIR}/_ext/1664057780/sp_int.o.d ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d ${OBJECTDIR}/_ext/1664057780/srp.o.d ${OBJECTDIR}/_ext/1664057780/tfm.o.d ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d ${OBJECTDIR}/_ext/1664057780/wc_port.o.d ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d ${OBJECTDIR}/_ext/1664057780/aes.o.d ${OBJECTDIR}/_ext/1664057780/des3.o.d ${OBJECTDIR}/_ext/1664057780/random.o.d ${OBJECTDIR}/_ext/1664057780/sha.o.d ${OBJECTDIR}/_ext/1664057780/sha256.o.d ${OBJECTDIR}/_ext/1664057780/sha512.o.d ${OBJECTDIR}/_ext/1664057780/ecc.o.d ${OBJECTDIR}/_ext/2046716756/crl.o.d ${OBJECTDIR}/_ext/2046716756/keys.o.d ${OBJECTDIR}/_ext/2046716756/ocsp.o.d ${OBJECTDIR}/_ext/2046716756/sniffer.o.d ${OBJECTDIR}/_ext/2046716756/ssl.o.d ${OBJECTDIR}/_ext/2046716756/tls.o.d ${OBJECTDIR}/_ext/2046716756/tls13.o.d ${OBJECTDIR}/_ext/2046716756/wolfio.o.d ${OBJECTDIR}/_ext/2046716756/internal.o.d ${OBJECTDIR}/_ext/905221350/adler32.o.d ${OBJECTDIR}/_ext/905221350/compress.o.d ${OBJECTDIR}/_ext/905221350/crc32.o.d ${OBJECTDIR}/_ext/905221350/deflate.o.d ${OBJECTDIR}/_ext/905221350/gzclose.o.d ${OBJECTDIR}/_ext/905221350/infback.o.d ${OBJECTDIR}/_ext/905221350/inffast.o.d ${OBJECTDIR}/_ext/905221350/inflate.o.d ${OBJECTDIR}/_ext/905221350/inftrees.o.d ${OBJECTDIR}/_ext/905221350/trees.o.d ${OBJECTDIR}/_ext/905221350/uncompr.o.d ${OBJECTDIR}/_ext/905221350/zutil.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o.d ${OBJECTDIR}/_ext/1360937237/OrGpio.o.d ${OBJECTDIR}/_ext/1360937237/OrAdc.o.d ${OBJECTDIR}/_ext/1360937237/OrFlash.o.d ${OBJECTDIR}/_ext/1360937237/OrUtils.o.d ${OBJECTDIR}/_ext/1360937237/OrTime.o.d ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o.d ${OBJECTDIR}/_ext/1360937237/OrParser.o.d ${OBJECTDIR}/_ext/1360937237/OrOp.o.d ${OBJECTDIR}/_ext/1360937237/OrI2c.o.d ${OBJECTDIR}/_ext/1360937237/OrTmp117.o.d ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o.d ${OBJECTDIR}/_ext/1360937237/OrLm75.o.d ${OBJECTDIR}/_ext/1360937237/OrDs1682.o.d ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o.d ${OBJECTDIR}/_ext/1664057780/misc.o.d ${OBJECTDIR}/_ext/1664057780/evp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/282933696/crypto.o ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/926090922/drv_ethphy.o ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o ${OBJECTDIR}/_ext/1493300322/drv_miim.o ${OBJECTDIR}/_ext/505056673/helpers.o ${OBJECTDIR}/_ext/505056673/tcp.o ${OBJECTDIR}/_ext/505056673/arp.o ${OBJECTDIR}/_ext/505056673/berkeley_api.o ${OBJECTDIR}/_ext/505056673/ipv4.o ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o ${OBJECTDIR}/_ext/505056673/dhcp.o ${OBJECTDIR}/_ext/505056673/dns.o ${OBJECTDIR}/_ext/505056673/hash_fnv.o ${OBJECTDIR}/_ext/505056673/oahash.o ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o ${OBJECTDIR}/_ext/505056673/tcpip_manager.o ${OBJECTDIR}/_ext/505056673/tcpip_notify.o ${OBJECTDIR}/_ext/505056673/tcpip_packet.o ${OBJECTDIR}/_ext/505056673/tcpip_announce.o ${OBJECTDIR}/_ext/505056673/udp.o ${OBJECTDIR}/_ext/505056673/icmp.o ${OBJECTDIR}/_ext/505056673/tcpip_commands.o ${OBJECTDIR}/_ext/505056673/sntp.o ${OBJECTDIR}/_ext/2036033016/net_pres.o ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o ${OBJECTDIR}/_ext/1423019703/plib_adc.o ${OBJECTDIR}/_ext/1423021881/plib_clk.o ${OBJECTDIR}/_ext/1164074580/plib_evic.o ${OBJECTDIR}/_ext/1164128408/plib_gpio.o ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o ${OBJECTDIR}/_ext/1164175250/plib_icap2.o ${OBJECTDIR}/_ext/1423032764/plib_nvm.o ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o ${OBJECTDIR}/_ext/1164531351/plib_uart2.o ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o ${OBJECTDIR}/_ext/2107050346/sys_command.o ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o ${OBJECTDIR}/_ext/1650338166/sys_console.o ${OBJECTDIR}/_ext/684820210/sys_debug.o ${OBJECTDIR}/_ext/1050442482/sys_int.o ${OBJECTDIR}/_ext/216512231/sys_reset.o ${OBJECTDIR}/_ext/803010664/sys_time.o ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/354746917/tasks.o ${OBJECTDIR}/_ext/354746917/initialization.o ${OBJECTDIR}/_ext/354746917/interrupts.o ${OBJECTDIR}/_ext/354746917/exceptions.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/905221350/adler32.o ${OBJECTDIR}/_ext/905221350/compress.o ${OBJECTDIR}/_ext/905221350/crc32.o ${OBJECTDIR}/_ext/905221350/deflate.o ${OBJECTDIR}/_ext/905221350/gzclose.o ${OBJECTDIR}/_ext/905221350/infback.o ${OBJECTDIR}/_ext/905221350/inffast.o ${OBJECTDIR}/_ext/905221350/inflate.o ${OBJECTDIR}/_ext/905221350/inftrees.o ${OBJECTDIR}/_ext/905221350/trees.o ${OBJECTDIR}/_ext/905221350/uncompr.o ${OBJECTDIR}/_ext/905221350/zutil.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o ${OBJECTDIR}/_ext/1360937237/OrGpio.o ${OBJECTDIR}/_ext/1360937237/OrAdc.o ${OBJECTDIR}/_ext/1360937237/OrFlash.o ${OBJECTDIR}/_ext/1360937237/OrUtils.o ${OBJECTDIR}/_ext/1360937237/OrTime.o ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o ${OBJECTDIR}/_ext/1360937237/OrParser.o ${OBJECTDIR}/_ext/1360937237/OrOp.o ${OBJECTDIR}/_ext/1360937237/OrI2c.o ${OBJECTDIR}/_ext/1360937237/OrTmp117.o ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o ${OBJECTDIR}/_ext/1360937237/OrLm75.o ${OBJECTDIR}/_ext/1360937237/OrDs1682.o ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o

# Source Files
SOURCEFILES=../src/config/LanEllipse6_conf/crypto/src/crypto.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c ../src/config/LanEllipse6_conf/system/command/src/sys_command.c ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c ../src/config/LanEllipse6_conf/system/console/src/sys_console.c ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c ../src/config/LanEllipse6_conf/system/int/src/sys_int.c ../src/config/LanEllipse6_conf/system/reset/sys_reset.c ../src/config/LanEllipse6_conf/system/time/src/sys_time.c ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c ../src/config/LanEllipse6_conf/tasks.c ../src/config/LanEllipse6_conf/initialization.c ../src/config/LanEllipse6_conf/interrupts.c ../src/config/LanEllipse6_conf/exceptions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/third_party/zlib/adler32.c ../src/third_party/zlib/compress.c ../src/third_party/zlib/crc32.c ../src/third_party/zlib/deflate.c ../src/third_party/zlib/gzclose.c ../src/third_party/zlib/infback.c ../src/third_party/zlib/inffast.c ../src/third_party/zlib/inflate.c ../src/third_party/zlib/inftrees.c ../src/third_party/zlib/trees.c ../src/third_party/zlib/uncompr.c ../src/third_party/zlib/zutil.c ../src/app.c ../src/main.c ../src/OrTcpIp.c ../src/OrGpio.c ../src/OrAdc.c ../src/OrFlash.c ../src/OrUtils.c ../src/OrTime.c ../src/OrTCA9539.c ../src/OrParser.c ../src/OrOp.c ../src/OrI2c.c ../src/OrTmp117.c ../src/OrEmc2305.c ../src/OrLm75.c ../src/OrDs1682.c ../src/Or24Fc512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c



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
	${MAKE}  -f nbproject/Makefile-LanEllipse6_conf.mk ${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=,--script="..\src\config\LanEllipse6_conf\p32MX795F512L.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/LanEllipse6_conf/7d916dd3598bebd8e05226082e81e7b181002e84 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_LanEllipse6_conf=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/LanEllipse6_conf/d5af41b5412ec3da668883e47ce30484baa73709 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_LanEllipse6_conf=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/505056673/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/282933696/crypto.o: ../src/config/LanEllipse6_conf/crypto/src/crypto.c  .generated_files/flags/LanEllipse6_conf/29f582cb7ccde1b933d11b88d7807655253e8ce7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/282933696" 
	@${RM} ${OBJECTDIR}/_ext/282933696/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/282933696/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/282933696/crypto.o.d" -o ${OBJECTDIR}/_ext/282933696/crypto.o ../src/config/LanEllipse6_conf/crypto/src/crypto.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_ethmac.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/LanEllipse6_conf/1267f33ccba44b78fd8ce181c037af029757167c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/LanEllipse6_conf/445b8afd12c3b60fd60d2a2fd1e1eb432e9340fc .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/LanEllipse6_conf/aa047715003da5f793edc4e80f3900694a62107 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/926090922/drv_ethphy.o: ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/LanEllipse6_conf/75ae0434d3e91be07d27610eb0ab2265a7add6ee .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/926090922" 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/926090922/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/926090922/drv_ethphy.o ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o: ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/LanEllipse6_conf/d52cbaede12ef28d10ce26e44fbafa1044fb6947 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/926090922" 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1493300322/drv_miim.o: ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/LanEllipse6_conf/53fbdfad827e60bef083999ec78abb4b6052ed8a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1493300322" 
	@${RM} ${OBJECTDIR}/_ext/1493300322/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1493300322/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1493300322/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1493300322/drv_miim.o ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/helpers.o: ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c  .generated_files/flags/LanEllipse6_conf/47cefc66ab83734f7bff4fdbdf1e9d7d42480c35 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/helpers.o.d" -o ${OBJECTDIR}/_ext/505056673/helpers.o ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c  .generated_files/flags/LanEllipse6_conf/a0ff89df249e07ed0736133b2a73de8a4f98e481 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcp.o.d" -o ${OBJECTDIR}/_ext/505056673/tcp.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/arp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c  .generated_files/flags/LanEllipse6_conf/8764966611fdffa38aefa9d144cc707e3502fc6b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/arp.o.d" -o ${OBJECTDIR}/_ext/505056673/arp.o ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/berkeley_api.o: ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c  .generated_files/flags/LanEllipse6_conf/35aae30e3feb4e51a3dffa5fa7247d066a5ebad4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/505056673/berkeley_api.o ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/ipv4.o: ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c  .generated_files/flags/LanEllipse6_conf/7e06911fcf60a39ccd8e75046f94c18dcf20d2d2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/ipv4.o.d" -o ${OBJECTDIR}/_ext/505056673/ipv4.o ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/LanEllipse6_conf/e4718e5d5d2b83f6af55963b4007f95ba9b90e6c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/LanEllipse6_conf/3fd07fe4a72133c8b2e3d413bae162ea9b5a0944 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/dhcp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c  .generated_files/flags/LanEllipse6_conf/5679c4f23e5b4197b780a7356bc0976ad76be225 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/dhcp.o.d" -o ${OBJECTDIR}/_ext/505056673/dhcp.o ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/dns.o: ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c  .generated_files/flags/LanEllipse6_conf/e669a2fd9167c5c0a43b2f549279feee756e1e35 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/dns.o.d" -o ${OBJECTDIR}/_ext/505056673/dns.o ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/hash_fnv.o: ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c  .generated_files/flags/LanEllipse6_conf/7dd4f52c4313f6e1bc30c9a0ed484a7cb03f08c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/505056673/hash_fnv.o ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/oahash.o: ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c  .generated_files/flags/LanEllipse6_conf/8cc98d4f5290c0267b47888f52fd7b04de07552b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/oahash.o.d" -o ${OBJECTDIR}/_ext/505056673/oahash.o ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_helpers.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/LanEllipse6_conf/bac7249c660ba44bec49d461951731e8b18825a6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_manager.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c  .generated_files/flags/LanEllipse6_conf/3636d2ce9a050f2cc9ce46e5fff7b4e304e5aa12 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_manager.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_notify.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c  .generated_files/flags/LanEllipse6_conf/da077fbc93a9c84c853bf9a8c232ff2368093f94 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_notify.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_packet.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c  .generated_files/flags/LanEllipse6_conf/89292a099666c9efbe877776cee42e0f0e5ee23e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_packet.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_announce.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c  .generated_files/flags/LanEllipse6_conf/377ef0e0ae9e30b75fb747091a30c86bb8f4ee90 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_announce.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/udp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c  .generated_files/flags/LanEllipse6_conf/bb6ced0e7cb04afdae59029cee6d33e82395fdf6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/udp.o.d" -o ${OBJECTDIR}/_ext/505056673/udp.o ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/icmp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c  .generated_files/flags/LanEllipse6_conf/6ddc39ec931a7d525ddbe522a5296de9c2b34695 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/icmp.o.d" -o ${OBJECTDIR}/_ext/505056673/icmp.o ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_commands.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c  .generated_files/flags/LanEllipse6_conf/37fed704e9df4d2a0906429663c73e4f5b7e8b19 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_commands.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/sntp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c  .generated_files/flags/LanEllipse6_conf/4e809d34d4d00512054c0a95d8230169088c396 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/sntp.o.d" -o ${OBJECTDIR}/_ext/505056673/sntp.o ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2036033016/net_pres.o: ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c  .generated_files/flags/LanEllipse6_conf/846cceb0ac979bc3c38f4aea45e5f98820bf94c8 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2036033016" 
	@${RM} ${OBJECTDIR}/_ext/2036033016/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036033016/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2036033016/net_pres.o.d" -o ${OBJECTDIR}/_ext/2036033016/net_pres.o ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o: ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c  .generated_files/flags/LanEllipse6_conf/91ed210e99c7e5a9eb91a1b34aad334874db7314 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1174475811" 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o: ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c  .generated_files/flags/LanEllipse6_conf/fe78c391ab1c2be75b05fa9e3aad841e4b50148a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1174475811" 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423019703/plib_adc.o: ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c  .generated_files/flags/LanEllipse6_conf/402cd7222d2c96089a367c0de43e9930d5ce1c7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423019703" 
	@${RM} ${OBJECTDIR}/_ext/1423019703/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423019703/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423019703/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1423019703/plib_adc.o ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423021881/plib_clk.o: ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c  .generated_files/flags/LanEllipse6_conf/3ad2808c9307fa78a22fb594a20b5c605948f7eb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423021881" 
	@${RM} ${OBJECTDIR}/_ext/1423021881/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423021881/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423021881/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1423021881/plib_clk.o ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164074580/plib_evic.o: ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c  .generated_files/flags/LanEllipse6_conf/eaac972db67f98bb5d695a34da9e20d7076d3a42 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164074580" 
	@${RM} ${OBJECTDIR}/_ext/1164074580/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164074580/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164074580/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1164074580/plib_evic.o ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164128408/plib_gpio.o: ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c  .generated_files/flags/LanEllipse6_conf/1c8f15a1acbc28bf9c4be1110457623d4192e870 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164128408" 
	@${RM} ${OBJECTDIR}/_ext/1164128408/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164128408/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164128408/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1164128408/plib_gpio.o ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o: ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/LanEllipse6_conf/7a278a215ae07a8d9f004689acd6d8451b1371be .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/430549888" 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o: ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c  .generated_files/flags/LanEllipse6_conf/67910440100e53a8a12def5d8e1da58cea4793a2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/430549888" 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o.d" -o ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164175250/plib_icap2.o: ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c  .generated_files/flags/LanEllipse6_conf/46b256e7dede78e2a250db6d7fc5dc6e90c07b99 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164175250" 
	@${RM} ${OBJECTDIR}/_ext/1164175250/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164175250/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164175250/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1164175250/plib_icap2.o ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423032764/plib_nvm.o: ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c  .generated_files/flags/LanEllipse6_conf/4d64bb4b3b4516c6a6b96421c640c477f1cfeed2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423032764" 
	@${RM} ${OBJECTDIR}/_ext/1423032764/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423032764/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423032764/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1423032764/plib_nvm.o ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423038256/plib_tmr2.o: ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c  .generated_files/flags/LanEllipse6_conf/cb4bbf1524bc579a359bde56e41f9ab8b5925534 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423038256" 
	@${RM} ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423038256/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164513025/plib_tmr1.o: ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/LanEllipse6_conf/32bfc9a8a3c3a68e42bdf589c050add54eeb961 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164513025" 
	@${RM} ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164513025/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164531351/plib_uart2.o: ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c  .generated_files/flags/LanEllipse6_conf/7376e80202ff0331175e575be0ffd1f33f4ab8a2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164531351" 
	@${RM} ${OBJECTDIR}/_ext/1164531351/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164531351/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164531351/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1164531351/plib_uart2.o ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1377786337/xc32_monitor.o: ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c  .generated_files/flags/LanEllipse6_conf/d48caa17792005c47d0f2d7e6b73223ae8913261 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1377786337" 
	@${RM} ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1377786337/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2107050346/sys_command.o: ../src/config/LanEllipse6_conf/system/command/src/sys_command.c  .generated_files/flags/LanEllipse6_conf/67639c8ac68f9fa94d0bb90e457ba6ed6d414e36 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2107050346" 
	@${RM} ${OBJECTDIR}/_ext/2107050346/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2107050346/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2107050346/sys_command.o.d" -o ${OBJECTDIR}/_ext/2107050346/sys_command.o ../src/config/LanEllipse6_conf/system/command/src/sys_command.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1650338166/sys_console_uart.o: ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c  .generated_files/flags/LanEllipse6_conf/7a0986eb5d9d49fbdfda73649da16fd8fcbbc13d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1650338166" 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1650338166/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1650338166/sys_console.o: ../src/config/LanEllipse6_conf/system/console/src/sys_console.c  .generated_files/flags/LanEllipse6_conf/b2da235a8a8ef424af091a24de9c2f8fd496a106 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1650338166" 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1650338166/sys_console.o.d" -o ${OBJECTDIR}/_ext/1650338166/sys_console.o ../src/config/LanEllipse6_conf/system/console/src/sys_console.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/684820210/sys_debug.o: ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c  .generated_files/flags/LanEllipse6_conf/c910a93d4c5a9aa32484cfd8c11f6b37d1974087 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/684820210" 
	@${RM} ${OBJECTDIR}/_ext/684820210/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/684820210/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/684820210/sys_debug.o.d" -o ${OBJECTDIR}/_ext/684820210/sys_debug.o ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1050442482/sys_int.o: ../src/config/LanEllipse6_conf/system/int/src/sys_int.c  .generated_files/flags/LanEllipse6_conf/6d25c6c00ef1d115c3b0f9bbd35efdca0f59b24d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1050442482" 
	@${RM} ${OBJECTDIR}/_ext/1050442482/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1050442482/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1050442482/sys_int.o.d" -o ${OBJECTDIR}/_ext/1050442482/sys_int.o ../src/config/LanEllipse6_conf/system/int/src/sys_int.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/216512231/sys_reset.o: ../src/config/LanEllipse6_conf/system/reset/sys_reset.c  .generated_files/flags/LanEllipse6_conf/63c4d4212dd4d11862de8e3d714e40afec759d2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/216512231" 
	@${RM} ${OBJECTDIR}/_ext/216512231/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/216512231/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/216512231/sys_reset.o.d" -o ${OBJECTDIR}/_ext/216512231/sys_reset.o ../src/config/LanEllipse6_conf/system/reset/sys_reset.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/803010664/sys_time.o: ../src/config/LanEllipse6_conf/system/time/src/sys_time.c  .generated_files/flags/LanEllipse6_conf/5c8976235e01690c68264954948854d93b7a7f69 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/803010664" 
	@${RM} ${OBJECTDIR}/_ext/803010664/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/803010664/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/803010664/sys_time.o.d" -o ${OBJECTDIR}/_ext/803010664/sys_time.o ../src/config/LanEllipse6_conf/system/time/src/sys_time.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o: ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c  .generated_files/flags/LanEllipse6_conf/cd4abd591f5795c6605a8fed13dd8c22181880f5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/243371353" 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o: ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c  .generated_files/flags/LanEllipse6_conf/a5a6e36ba05def16ebfce7da44ad3c98f6462d68 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/243371353" 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/tasks.o: ../src/config/LanEllipse6_conf/tasks.c  .generated_files/flags/LanEllipse6_conf/3988c424b68afc31b471dd3ff4a8ed637c82937a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/tasks.o.d" -o ${OBJECTDIR}/_ext/354746917/tasks.o ../src/config/LanEllipse6_conf/tasks.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/initialization.o: ../src/config/LanEllipse6_conf/initialization.c  .generated_files/flags/LanEllipse6_conf/9f12037f581142842bde8517b5b59e754998e42e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/initialization.o.d" -o ${OBJECTDIR}/_ext/354746917/initialization.o ../src/config/LanEllipse6_conf/initialization.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/interrupts.o: ../src/config/LanEllipse6_conf/interrupts.c  .generated_files/flags/LanEllipse6_conf/9681d2a7b30d871cd084d4165d0881c0c3666bfb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/interrupts.o.d" -o ${OBJECTDIR}/_ext/354746917/interrupts.o ../src/config/LanEllipse6_conf/interrupts.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/exceptions.o: ../src/config/LanEllipse6_conf/exceptions.c  .generated_files/flags/LanEllipse6_conf/2719dbc012979c24619deb69cf032e5db9f1170d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/exceptions.o.d" -o ${OBJECTDIR}/_ext/354746917/exceptions.o ../src/config/LanEllipse6_conf/exceptions.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/flags/LanEllipse6_conf/51f31f27de28b78edcdd4dea080888e1b8ab707e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/flags/LanEllipse6_conf/be5aa7331df3a081937a12344c2fc45c98e1fbd3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/flags/LanEllipse6_conf/67672d08b0c84ceffe984975ded75a815d0bdd15 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/flags/LanEllipse6_conf/e4fa3f6eeb4c0281d4b74877922d31ef75ad38fd .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/flags/LanEllipse6_conf/131eb6f883bbd9c22ba6de2ebb91c35b9be11b0e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/flags/LanEllipse6_conf/a52b929046d1d3643e40ab645b73de517368fca8 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/flags/LanEllipse6_conf/8298a87f1082cd49d1cd3f12eba741afc9295ce1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/flags/LanEllipse6_conf/b82798f1cffa6ab8eace08a889e1c037eaff34e5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/flags/LanEllipse6_conf/af7296b741e1e874d4bf47e5017cb7c298e06948 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/flags/LanEllipse6_conf/ba01c58e0899cf949faa900589c2355605a4213d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/flags/LanEllipse6_conf/912081b332b661e3e7237b9e6fee391eb4f42760 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/flags/LanEllipse6_conf/8ad80672a8d3d5db007d2eb5272e97f90e4a6f2b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/flags/LanEllipse6_conf/17fc9e8d988df4717862c91477fe8171d93b8b5c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/flags/LanEllipse6_conf/709369160599168e4087381e5f04981c2e51247f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/flags/LanEllipse6_conf/344a757ea0023dd62617faa058ebc328134d488d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/flags/LanEllipse6_conf/1f24db1b9e3005c9d3a86bc4f8b4db726285d91d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/flags/LanEllipse6_conf/a506914ea7bde68b369d02a3351658b3cb8a9e4c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/flags/LanEllipse6_conf/d63cdb639743a6ccd37e711ddb5afff945e592f4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/flags/LanEllipse6_conf/7f60c4b6f30f39d50c8f55f6d34eccc99b5190f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/flags/LanEllipse6_conf/3e78e8e77e097a92f4d5ca50b8201a5cae15232f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/flags/LanEllipse6_conf/6c0c93ee06d4c046275afb1dbf955d850b8faed7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/flags/LanEllipse6_conf/bfb9a98345b6d9763d09190511ccf02f940a33d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/flags/LanEllipse6_conf/acdd67c38443d50808bb554fdf9347fcab761f34 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/flags/LanEllipse6_conf/81b677e655f66f42633592ebb81fe5ca46d87236 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/flags/LanEllipse6_conf/c80e6277e11b282ec66167d29c53fc3002eddd8f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/flags/LanEllipse6_conf/da355fd8e5f750d12d1670b49adfd3960da9b73a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/flags/LanEllipse6_conf/2bd2b99d6a5705752c4713fcbcf86442344a92be .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/flags/LanEllipse6_conf/a3b6779f401ad6fcf01313030591294f12ac262 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/flags/LanEllipse6_conf/b19a0374bd07d0d77e89319d682b10c2dcd5b7f4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/flags/LanEllipse6_conf/9aa94732455acfe4313d508c53a5e7b95acd7c01 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/flags/LanEllipse6_conf/dd0dc7030c81175db5bad608f68b2f78a0c59c61 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/flags/LanEllipse6_conf/58d795491c2e866a982ce52ba1763d975a4584d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/flags/LanEllipse6_conf/2efb2a936c5d6cc676402d2601413a2baeb52fd5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/flags/LanEllipse6_conf/b5d12877c4b9dee330b519061a31514b58d6861c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/flags/LanEllipse6_conf/5d15e07bd23b9089de520b5c9f8e3786b00bcf26 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/flags/LanEllipse6_conf/a3a99c650a67cdf8c83c1d919f257c2e415e215e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/flags/LanEllipse6_conf/43322ffbf5ba6176ac6c185cbfba7e62fe5255d9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/flags/LanEllipse6_conf/b359e370d27d0635cf5db70189e7bc25782442ab .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/flags/LanEllipse6_conf/9f2052fe6e1dc02143b4be3edfea6d0c07381e1e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/flags/LanEllipse6_conf/9225a022ba9ab0c4384789d9094616c29a266eb0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/flags/LanEllipse6_conf/4a619a09a956ffc94fdb0ec5d9034db13cc15ede .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/flags/LanEllipse6_conf/6c80e988c206a84ee7c83ac252d8742d1d861b8b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/flags/LanEllipse6_conf/97fb8918d3f2bc256fc8d6f5eb971e8aec91e0d1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/flags/LanEllipse6_conf/d055be74dce25a91d4e17cf251a4b6bb76f8a2fb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/flags/LanEllipse6_conf/e8c9f3ccc899c6ddeac006ad1c9656f179689a19 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/flags/LanEllipse6_conf/f55977aeba2550978ba2384e8287978aaaaab404 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/flags/LanEllipse6_conf/2cd091a8dd039669840b28194b6c0776fba9c3e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/flags/LanEllipse6_conf/8d34e4a685a276c07361c58a3b31c18b219083f5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/flags/LanEllipse6_conf/c98395f0087ff9928bf60b787a232738c001f7f7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/flags/LanEllipse6_conf/a421bd1035b5be62aa71c49e76ba7b0b1c482c4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/flags/LanEllipse6_conf/a91478cde975154f6443fd0b6d535c84a289852c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/flags/LanEllipse6_conf/e44fc5cd46dc7edad12a3a70ba933d2cfc8f5f0e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/flags/LanEllipse6_conf/2b770a3b8cf1abb5ba8f13ab414311a656524d30 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/flags/LanEllipse6_conf/6f787d4b61a463ee66dedec98839b11e7fe6ac41 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/flags/LanEllipse6_conf/755e26fbc3618d1a6c44879b6598405583ab2242 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/flags/LanEllipse6_conf/186d5d578f6037fdf821a4416e9ddaa58cc1b8f7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/flags/LanEllipse6_conf/d2f2d8ab0f7a7216b49659517a2ebfb3c24f6f2d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/flags/LanEllipse6_conf/36f4338d910663ecb95d998cbcbb5b646d018ff9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/flags/LanEllipse6_conf/704282185bea11a093acc142e1f69d340e7d431e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/flags/LanEllipse6_conf/dd9d9d6f43003b20e3b683374e2a555cd6f6fd74 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/flags/LanEllipse6_conf/80d23acc99029cd39d1dd644c4ef3e99e6a68961 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/flags/LanEllipse6_conf/165f3b242074643f3058fc872fd942ed940eed49 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/flags/LanEllipse6_conf/3bb06cd56b38e3722f3a9ce884450c1c11b070a0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/flags/LanEllipse6_conf/16e81fc6a763a8097a97188e3771a4984aa07a5a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/flags/LanEllipse6_conf/84b5254f7c8818f088b2ae0bbcc91e8f9c89cdc2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/flags/LanEllipse6_conf/9fc6c140d4e4ac67227bbaa3199c26f9c648c95d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/flags/LanEllipse6_conf/c8db4d546a47337f37f76775d30c53cbf02ba839 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/flags/LanEllipse6_conf/3fc607f26f810b8a2626c0c4ca76993e5f07673b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/flags/LanEllipse6_conf/ba318cff311e05905f493b4baec437d434c43be3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/flags/LanEllipse6_conf/d9d4e9e8f8c66bb6fa52c295a0fe8a54ded7b0da .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/flags/LanEllipse6_conf/af53f21f4b23510f545a3bf68b58c9542e8dd164 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/flags/LanEllipse6_conf/bb5843ac1441ae2d78e8d37872c7882cd1845678 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/flags/LanEllipse6_conf/827c779628f6d0be7ff11c5cc891622b74eff61d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/flags/LanEllipse6_conf/98610340dcb763a79c67f76af82fee428a77e81 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/flags/LanEllipse6_conf/a991fa8009ebc70ab02130854aa9a47a2a18092c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/flags/LanEllipse6_conf/b2af224aff09d266b1f6b870ed34c34817a74ead .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/flags/LanEllipse6_conf/b38a109d046c069368eb90f92d8acf17544c0737 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/flags/LanEllipse6_conf/7d5771a39b94024f1f7d1eb047f7c5dddfe79e67 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/flags/LanEllipse6_conf/3d4bffc5d0196be311fe558892590e48ea20c9b5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/flags/LanEllipse6_conf/3eed7f19f34586dd20b3bb03c3e6f3f2b9784d14 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/flags/LanEllipse6_conf/b3839607b1a75e0d1951c34f702e2c3f958302d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/flags/LanEllipse6_conf/2584b0da7d631481caefa457fd41621fc5c4f0bb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/flags/LanEllipse6_conf/35c3894a98a491524989d87247ff757a064ee858 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/flags/LanEllipse6_conf/a11808853a88b48d9a5a7fd62f4dd9986b5f8d11 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/flags/LanEllipse6_conf/b8d235569bc7ed6214004590ca670b3d95ab26d3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/flags/LanEllipse6_conf/f739683151c8e1d91ce2f85349fa184d13107ec8 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/flags/LanEllipse6_conf/28a13b8f69523d53cb9df67ffaeaf7489522f5f1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/flags/LanEllipse6_conf/f9dccb2eaabc6efa009822db0104fe3b6a374cf1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/flags/LanEllipse6_conf/dd115b1ef6c13a24f90965f3aae3e7353b881a65 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/flags/LanEllipse6_conf/aea5de1fdbc8b4d3fb9e30801cad728975cb1a3f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/flags/LanEllipse6_conf/3468a379ab029e44f7324dc2c1ed6a2ce405a520 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  .generated_files/flags/LanEllipse6_conf/25363447197775124f01eaa50575a9233b2fc044 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  .generated_files/flags/LanEllipse6_conf/a8c8355f662282c36517d9b6d13b4cdd40256898 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  .generated_files/flags/LanEllipse6_conf/60ac079fc5c842bae6ae7cdc83692169f057b7f9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  .generated_files/flags/LanEllipse6_conf/29d78db0ee3c2ae1d57bfe0aa3a22e1c56deee7c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  .generated_files/flags/LanEllipse6_conf/f40847a671d107b3081f7d62fe336062690c38ea .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  .generated_files/flags/LanEllipse6_conf/d511dfb77d39f8cc04f0cd05195aa19fc61185f7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  .generated_files/flags/LanEllipse6_conf/f692d100a746342af645fc0b04948dd872a2ec93 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  .generated_files/flags/LanEllipse6_conf/8fdcf4e706e4ab429571c8e0202247d9d8cd7c5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  .generated_files/flags/LanEllipse6_conf/514a6ca5d7df97c15ace4114223c28a43cedbbfc .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/adler32.o: ../src/third_party/zlib/adler32.c  .generated_files/flags/LanEllipse6_conf/dcf797b931481ecccc2153b0f939b88f3b483297 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/adler32.o.d" -o ${OBJECTDIR}/_ext/905221350/adler32.o ../src/third_party/zlib/adler32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/compress.o: ../src/third_party/zlib/compress.c  .generated_files/flags/LanEllipse6_conf/50159db4c98f83658c3d957b090a5eb04643a3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/compress.o.d" -o ${OBJECTDIR}/_ext/905221350/compress.o ../src/third_party/zlib/compress.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/crc32.o: ../src/third_party/zlib/crc32.c  .generated_files/flags/LanEllipse6_conf/9c88e024ae80986403b4716b10d1e11acdb7a1d1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/crc32.o.d" -o ${OBJECTDIR}/_ext/905221350/crc32.o ../src/third_party/zlib/crc32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/deflate.o: ../src/third_party/zlib/deflate.c  .generated_files/flags/LanEllipse6_conf/c3ec7f1650c347526382b4b5c589f573384341ca .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/deflate.o.d" -o ${OBJECTDIR}/_ext/905221350/deflate.o ../src/third_party/zlib/deflate.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/gzclose.o: ../src/third_party/zlib/gzclose.c  .generated_files/flags/LanEllipse6_conf/de015ca4c12fdfa70d97af8a8a30fe817a856da4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/gzclose.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/gzclose.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/gzclose.o.d" -o ${OBJECTDIR}/_ext/905221350/gzclose.o ../src/third_party/zlib/gzclose.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/infback.o: ../src/third_party/zlib/infback.c  .generated_files/flags/LanEllipse6_conf/a103ee7b30a06ab3be6c1cea22ccdc8229de211e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/infback.o.d" -o ${OBJECTDIR}/_ext/905221350/infback.o ../src/third_party/zlib/infback.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inffast.o: ../src/third_party/zlib/inffast.c  .generated_files/flags/LanEllipse6_conf/88368c5b8d0effe01fc27d66465029562b5c1561 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inffast.o.d" -o ${OBJECTDIR}/_ext/905221350/inffast.o ../src/third_party/zlib/inffast.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inflate.o: ../src/third_party/zlib/inflate.c  .generated_files/flags/LanEllipse6_conf/21729068afafad925cdaf6f0a0c5425475023db9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inflate.o.d" -o ${OBJECTDIR}/_ext/905221350/inflate.o ../src/third_party/zlib/inflate.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inftrees.o: ../src/third_party/zlib/inftrees.c  .generated_files/flags/LanEllipse6_conf/f90bbe0ed9d842c919122f779fe1dcd32c9e7ae8 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inftrees.o.d" -o ${OBJECTDIR}/_ext/905221350/inftrees.o ../src/third_party/zlib/inftrees.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/trees.o: ../src/third_party/zlib/trees.c  .generated_files/flags/LanEllipse6_conf/6be4a0a2394452a3f33d72d53568d3a6a0621701 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/trees.o.d" -o ${OBJECTDIR}/_ext/905221350/trees.o ../src/third_party/zlib/trees.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/uncompr.o: ../src/third_party/zlib/uncompr.c  .generated_files/flags/LanEllipse6_conf/3f9dbba31b1a600b30747f18b776f3d423ac6d0c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/uncompr.o.d" -o ${OBJECTDIR}/_ext/905221350/uncompr.o ../src/third_party/zlib/uncompr.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/zutil.o: ../src/third_party/zlib/zutil.c  .generated_files/flags/LanEllipse6_conf/986c935c9eb5c1e2ac1e4fcf67815ba56f3cb7b9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/zutil.o.d" -o ${OBJECTDIR}/_ext/905221350/zutil.o ../src/third_party/zlib/zutil.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/LanEllipse6_conf/3f4ea1aff3f25ee3c20acd949bfb732abb122236 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LanEllipse6_conf/565ad6e7cd3d10af4063ad47267f812f6debe974 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTcpIp.o: ../src/OrTcpIp.c  .generated_files/flags/LanEllipse6_conf/4e68d896584e759121d280899cc2cc76710d51e2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTcpIp.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o ../src/OrTcpIp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrGpio.o: ../src/OrGpio.c  .generated_files/flags/LanEllipse6_conf/3f4951368ed881636ae8240ccbf575791d718b20 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrGpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrGpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrGpio.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrGpio.o ../src/OrGpio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrAdc.o: ../src/OrAdc.c  .generated_files/flags/LanEllipse6_conf/28703ad10e9c5414027b9e8af3483661e5cbeb36 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrAdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrAdc.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrAdc.o ../src/OrAdc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrFlash.o: ../src/OrFlash.c  .generated_files/flags/LanEllipse6_conf/8824bf11559931378406c3d2bb11380ed254355f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrFlash.o ../src/OrFlash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrUtils.o: ../src/OrUtils.c  .generated_files/flags/LanEllipse6_conf/914e79b1bf20b1a3b4785add74e447c0424fe86e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrUtils.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrUtils.o ../src/OrUtils.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTime.o: ../src/OrTime.c  .generated_files/flags/LanEllipse6_conf/d42a80bc1ebd4cae57891d8fd0e929e90b0cb28a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTime.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTime.o ../src/OrTime.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTCA9539.o: ../src/OrTCA9539.c  .generated_files/flags/LanEllipse6_conf/502c65827f3a2fc3b5519c4107d0a05f20eec563 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTCA9539.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o ../src/OrTCA9539.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrParser.o: ../src/OrParser.c  .generated_files/flags/LanEllipse6_conf/c7e698e22fd475d86119fdc13e4305dd99416df6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrParser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrParser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrParser.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrParser.o ../src/OrParser.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrOp.o: ../src/OrOp.c  .generated_files/flags/LanEllipse6_conf/2b73bc2f82eba80770d2087c44f3d454d1a981a6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrOp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrOp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrOp.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrOp.o ../src/OrOp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrI2c.o: ../src/OrI2c.c  .generated_files/flags/LanEllipse6_conf/21df7653c7b2dc12d61575f4369062e59e6ba431 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrI2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrI2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrI2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrI2c.o ../src/OrI2c.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTmp117.o: ../src/OrTmp117.c  .generated_files/flags/LanEllipse6_conf/680644e781223b0c00c9c5590af059f38c278f41 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTmp117.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTmp117.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTmp117.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTmp117.o ../src/OrTmp117.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrEmc2305.o: ../src/OrEmc2305.c  .generated_files/flags/LanEllipse6_conf/abe23beabe9e1eb4771fd92ea4f59b98e5db21ab .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrEmc2305.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o ../src/OrEmc2305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrLm75.o: ../src/OrLm75.c  .generated_files/flags/LanEllipse6_conf/913a8bb6cf18ee5b9c623cdfbad70f7cfda9a40d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrLm75.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrLm75.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrLm75.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrLm75.o ../src/OrLm75.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrDs1682.o: ../src/OrDs1682.c  .generated_files/flags/LanEllipse6_conf/307bf1eab6cff16598691fc94c3376103b5d9c5e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrDs1682.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrDs1682.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrDs1682.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrDs1682.o ../src/OrDs1682.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Or24Fc512.o: ../src/Or24Fc512.c  .generated_files/flags/LanEllipse6_conf/ca1a9c7e2dfece2543c53baae3a0ba7eec8ca653 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Or24Fc512.o.d" -o ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o ../src/Or24Fc512.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/flags/LanEllipse6_conf/9ff932186e7e2b89187c6190ed6b0d58ffe693c4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/flags/LanEllipse6_conf/e0828dcae3df1eae7572fae729e99f200dec49fb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/282933696/crypto.o: ../src/config/LanEllipse6_conf/crypto/src/crypto.c  .generated_files/flags/LanEllipse6_conf/d914fdd328afd23a039aea69acd09a0525ce8293 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/282933696" 
	@${RM} ${OBJECTDIR}/_ext/282933696/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/282933696/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/282933696/crypto.o.d" -o ${OBJECTDIR}/_ext/282933696/crypto.o ../src/config/LanEllipse6_conf/crypto/src/crypto.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_ethmac.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/LanEllipse6_conf/dd809070d9732bee3ad87b1c871174f6a196561a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_ethmac.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/LanEllipse6_conf/39fe872eb2e51e7fcb09a2d1ee1d4fa41bbe72c5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_ethmac_lib.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o: ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/LanEllipse6_conf/b757061485d51138a0b300803c81ef8624ff4853 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2102244728" 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/2102244728/drv_eth_pic32_lib.o ../src/config/LanEllipse6_conf/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/926090922/drv_ethphy.o: ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/LanEllipse6_conf/c069eefba9330df407446e50b60cf793fdce1e8a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/926090922" 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/926090922/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/926090922/drv_ethphy.o ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o: ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c  .generated_files/flags/LanEllipse6_conf/dd1d6b3962260d03adc6c75f49e29aba4acaed3d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/926090922" 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o.d" -o ${OBJECTDIR}/_ext/926090922/drv_extphy_dp83848.o ../src/config/LanEllipse6_conf/driver/ethphy/src/dynamic/drv_extphy_dp83848.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1493300322/drv_miim.o: ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/LanEllipse6_conf/8ae3f26b615c2c2be93e0d85fc035dcbd8385051 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1493300322" 
	@${RM} ${OBJECTDIR}/_ext/1493300322/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1493300322/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1493300322/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1493300322/drv_miim.o ../src/config/LanEllipse6_conf/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/helpers.o: ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c  .generated_files/flags/LanEllipse6_conf/c71e5d4f1a00ceaeb414f019032c10d264ddfaa6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/helpers.o.d" -o ${OBJECTDIR}/_ext/505056673/helpers.o ../src/config/LanEllipse6_conf/library/tcpip/src/helpers.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c  .generated_files/flags/LanEllipse6_conf/ce0f3cf067283d81be0d8067bba6525fd016e2b7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcp.o.d" -o ${OBJECTDIR}/_ext/505056673/tcp.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/arp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c  .generated_files/flags/LanEllipse6_conf/b88dc21f25d634a27a581636789dbfd482171ffb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/arp.o.d" -o ${OBJECTDIR}/_ext/505056673/arp.o ../src/config/LanEllipse6_conf/library/tcpip/src/arp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/berkeley_api.o: ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c  .generated_files/flags/LanEllipse6_conf/a6c3be3ed74d64c41f75b24f5915a6f59a14c133 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/berkeley_api.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/berkeley_api.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/berkeley_api.o.d" -o ${OBJECTDIR}/_ext/505056673/berkeley_api.o ../src/config/LanEllipse6_conf/library/tcpip/src/berkeley_api.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/ipv4.o: ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c  .generated_files/flags/LanEllipse6_conf/8e753b29c692d20f3465eb08476c9d3422425836 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/ipv4.o.d" -o ${OBJECTDIR}/_ext/505056673/ipv4.o ../src/config/LanEllipse6_conf/library/tcpip/src/ipv4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/LanEllipse6_conf/e81d7ddbbbcd8ccf5bd8e24d87726d303ec63f5b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_heap_alloc.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/LanEllipse6_conf/4bd132cd519f3c2eaeebc6eae1622b814ebdb735 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_heap_internal.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/dhcp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c  .generated_files/flags/LanEllipse6_conf/3e972c1bdece9152bc48d19c055cfdbbe7e4ffd7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/dhcp.o.d" -o ${OBJECTDIR}/_ext/505056673/dhcp.o ../src/config/LanEllipse6_conf/library/tcpip/src/dhcp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/dns.o: ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c  .generated_files/flags/LanEllipse6_conf/cef01b1924b3f5b7a9a9976da6fdd87e96c147a0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/dns.o.d" -o ${OBJECTDIR}/_ext/505056673/dns.o ../src/config/LanEllipse6_conf/library/tcpip/src/dns.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/hash_fnv.o: ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c  .generated_files/flags/LanEllipse6_conf/b9aea212ad26dc2e0d2ff18ac31f7c96693dd5f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/505056673/hash_fnv.o ../src/config/LanEllipse6_conf/library/tcpip/src/hash_fnv.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/oahash.o: ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c  .generated_files/flags/LanEllipse6_conf/40a0e5d10bf5e8d4f177ea7bc069ba092ba14bc .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/oahash.o.d" -o ${OBJECTDIR}/_ext/505056673/oahash.o ../src/config/LanEllipse6_conf/library/tcpip/src/oahash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_helpers.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/LanEllipse6_conf/40f514080a490d347eb4e37439e1c53bacf8d5c5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_helpers.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_helpers.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_manager.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c  .generated_files/flags/LanEllipse6_conf/2b94483ee832072403f1e46f0610bd7010990d6c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_manager.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_manager.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_notify.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c  .generated_files/flags/LanEllipse6_conf/177640ae62012b9ecae75f16810aac186ec42322 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_notify.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_notify.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_packet.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c  .generated_files/flags/LanEllipse6_conf/f0fb44dc2a430320e77547f055916fddc6449890 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_packet.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_packet.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_announce.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c  .generated_files/flags/LanEllipse6_conf/bad4ff19b8da22089eef5a7b7221f633cfe127f2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_announce.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_announce.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_announce.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_announce.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/udp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c  .generated_files/flags/LanEllipse6_conf/6c2d6b73d4ee2700f6697b5b23867aa2bedb5fbe .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/udp.o.d" -o ${OBJECTDIR}/_ext/505056673/udp.o ../src/config/LanEllipse6_conf/library/tcpip/src/udp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/icmp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c  .generated_files/flags/LanEllipse6_conf/a66c5b7298bcb8aacdbb34c0f2acc3870ba49f17 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/icmp.o.d" -o ${OBJECTDIR}/_ext/505056673/icmp.o ../src/config/LanEllipse6_conf/library/tcpip/src/icmp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/tcpip_commands.o: ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c  .generated_files/flags/LanEllipse6_conf/700f5429ea3e5ee79e9c929584534f2bcdad19c1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/505056673/tcpip_commands.o ../src/config/LanEllipse6_conf/library/tcpip/src/tcpip_commands.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/505056673/sntp.o: ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c  .generated_files/flags/LanEllipse6_conf/995529afa8e7c7339625b9152ed4412e55dbcba3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/505056673" 
	@${RM} ${OBJECTDIR}/_ext/505056673/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/505056673/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/505056673/sntp.o.d" -o ${OBJECTDIR}/_ext/505056673/sntp.o ../src/config/LanEllipse6_conf/library/tcpip/src/sntp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2036033016/net_pres.o: ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c  .generated_files/flags/LanEllipse6_conf/78a3abe6b432e17343c48a86b605cc81d6d152e2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2036033016" 
	@${RM} ${OBJECTDIR}/_ext/2036033016/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/2036033016/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2036033016/net_pres.o.d" -o ${OBJECTDIR}/_ext/2036033016/net_pres.o ../src/config/LanEllipse6_conf/net_pres/pres/src/net_pres.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o: ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c  .generated_files/flags/LanEllipse6_conf/8a8cc3b3ff7ee28591d1fa2687636bb1e53ff30c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1174475811" 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1174475811/net_pres_enc_glue.o ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o: ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c  .generated_files/flags/LanEllipse6_conf/4384bb881259373fd6ed6c0983ec4be4cce6d476 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1174475811" 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1174475811/net_pres_cert_store.o ../src/config/LanEllipse6_conf/net_pres/pres/net_pres_cert_store.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423019703/plib_adc.o: ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c  .generated_files/flags/LanEllipse6_conf/f1eab24a5b6ef955acbc441de2e2f25964f70c20 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423019703" 
	@${RM} ${OBJECTDIR}/_ext/1423019703/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423019703/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423019703/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1423019703/plib_adc.o ../src/config/LanEllipse6_conf/peripheral/adc/plib_adc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423021881/plib_clk.o: ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c  .generated_files/flags/LanEllipse6_conf/d1962ff5ca3c225056eaa9a23e9528ee105681f3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423021881" 
	@${RM} ${OBJECTDIR}/_ext/1423021881/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423021881/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423021881/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1423021881/plib_clk.o ../src/config/LanEllipse6_conf/peripheral/clk/plib_clk.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164074580/plib_evic.o: ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c  .generated_files/flags/LanEllipse6_conf/f022bb30550d176a8225900508947d78c8ecf4d2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164074580" 
	@${RM} ${OBJECTDIR}/_ext/1164074580/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164074580/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164074580/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1164074580/plib_evic.o ../src/config/LanEllipse6_conf/peripheral/evic/plib_evic.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164128408/plib_gpio.o: ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c  .generated_files/flags/LanEllipse6_conf/2228d25577b0770a762c0a151ad89f1359a9a5d5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164128408" 
	@${RM} ${OBJECTDIR}/_ext/1164128408/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164128408/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164128408/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1164128408/plib_gpio.o ../src/config/LanEllipse6_conf/peripheral/gpio/plib_gpio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o: ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c  .generated_files/flags/LanEllipse6_conf/a7b4a70a04ab10ee70e9c3b8694932732a3ba335 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/430549888" 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o.d" -o ${OBJECTDIR}/_ext/430549888/plib_i2c2_master.o ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c2_master.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o: ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c  .generated_files/flags/LanEllipse6_conf/9b5ee858b3294d059f36d3de09dd5f17f2aaf70b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/430549888" 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o.d" -o ${OBJECTDIR}/_ext/430549888/plib_i2c3_master.o ../src/config/LanEllipse6_conf/peripheral/i2c/master/plib_i2c3_master.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164175250/plib_icap2.o: ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c  .generated_files/flags/LanEllipse6_conf/a9f6da822bee299da84aaf3910625fb09b3ec05c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164175250" 
	@${RM} ${OBJECTDIR}/_ext/1164175250/plib_icap2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164175250/plib_icap2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164175250/plib_icap2.o.d" -o ${OBJECTDIR}/_ext/1164175250/plib_icap2.o ../src/config/LanEllipse6_conf/peripheral/icap/plib_icap2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423032764/plib_nvm.o: ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c  .generated_files/flags/LanEllipse6_conf/d7360a1cfd9b3d82f83579105b2be3161a440173 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423032764" 
	@${RM} ${OBJECTDIR}/_ext/1423032764/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423032764/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423032764/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1423032764/plib_nvm.o ../src/config/LanEllipse6_conf/peripheral/nvm/plib_nvm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1423038256/plib_tmr2.o: ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c  .generated_files/flags/LanEllipse6_conf/83573730da2139b6902cbe87ebf44f18f6c32af9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1423038256" 
	@${RM} ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1423038256/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1423038256/plib_tmr2.o ../src/config/LanEllipse6_conf/peripheral/tmr/plib_tmr2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164513025/plib_tmr1.o: ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/LanEllipse6_conf/1dc84d5646b6e1eedbed0fb088d8ba7d43573dd4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164513025" 
	@${RM} ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164513025/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1164513025/plib_tmr1.o ../src/config/LanEllipse6_conf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1164531351/plib_uart2.o: ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c  .generated_files/flags/LanEllipse6_conf/2f5c65234d0a8bdd756d0943017e82ade7ebbd67 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1164531351" 
	@${RM} ${OBJECTDIR}/_ext/1164531351/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1164531351/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1164531351/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1164531351/plib_uart2.o ../src/config/LanEllipse6_conf/peripheral/uart/plib_uart2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1377786337/xc32_monitor.o: ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c  .generated_files/flags/LanEllipse6_conf/d3df1511c167aadf9768c5b1871ff1bb8177539d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1377786337" 
	@${RM} ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1377786337/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1377786337/xc32_monitor.o ../src/config/LanEllipse6_conf/stdio/xc32_monitor.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2107050346/sys_command.o: ../src/config/LanEllipse6_conf/system/command/src/sys_command.c  .generated_files/flags/LanEllipse6_conf/f7b88bfc50bedf486cdf039cf0d9ae3836750ccb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2107050346" 
	@${RM} ${OBJECTDIR}/_ext/2107050346/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2107050346/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2107050346/sys_command.o.d" -o ${OBJECTDIR}/_ext/2107050346/sys_command.o ../src/config/LanEllipse6_conf/system/command/src/sys_command.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1650338166/sys_console_uart.o: ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c  .generated_files/flags/LanEllipse6_conf/b71494cb9f2e462a47fd3e6dd4fa03f7a1fc6cec .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1650338166" 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1650338166/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1650338166/sys_console_uart.o ../src/config/LanEllipse6_conf/system/console/src/sys_console_uart.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1650338166/sys_console.o: ../src/config/LanEllipse6_conf/system/console/src/sys_console.c  .generated_files/flags/LanEllipse6_conf/7476d6f9ae6375374b592572b381cfb3e1e39fc1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1650338166" 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1650338166/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1650338166/sys_console.o.d" -o ${OBJECTDIR}/_ext/1650338166/sys_console.o ../src/config/LanEllipse6_conf/system/console/src/sys_console.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/684820210/sys_debug.o: ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c  .generated_files/flags/LanEllipse6_conf/1b3c8b794d051e6402adc8251cf378560baf7714 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/684820210" 
	@${RM} ${OBJECTDIR}/_ext/684820210/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/684820210/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/684820210/sys_debug.o.d" -o ${OBJECTDIR}/_ext/684820210/sys_debug.o ../src/config/LanEllipse6_conf/system/debug/src/sys_debug.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1050442482/sys_int.o: ../src/config/LanEllipse6_conf/system/int/src/sys_int.c  .generated_files/flags/LanEllipse6_conf/e70d0a970fa8bd0739a84962daa05d68de17cc02 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1050442482" 
	@${RM} ${OBJECTDIR}/_ext/1050442482/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1050442482/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1050442482/sys_int.o.d" -o ${OBJECTDIR}/_ext/1050442482/sys_int.o ../src/config/LanEllipse6_conf/system/int/src/sys_int.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/216512231/sys_reset.o: ../src/config/LanEllipse6_conf/system/reset/sys_reset.c  .generated_files/flags/LanEllipse6_conf/7f5ecbdb3f80428a7f2ad38b4414008ed3222fdd .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/216512231" 
	@${RM} ${OBJECTDIR}/_ext/216512231/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/216512231/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/216512231/sys_reset.o.d" -o ${OBJECTDIR}/_ext/216512231/sys_reset.o ../src/config/LanEllipse6_conf/system/reset/sys_reset.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/803010664/sys_time.o: ../src/config/LanEllipse6_conf/system/time/src/sys_time.c  .generated_files/flags/LanEllipse6_conf/698af92d1a966ee75b85cf63cbad99028deb78a4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/803010664" 
	@${RM} ${OBJECTDIR}/_ext/803010664/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/803010664/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/803010664/sys_time.o.d" -o ${OBJECTDIR}/_ext/803010664/sys_time.o ../src/config/LanEllipse6_conf/system/time/src/sys_time.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o: ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c  .generated_files/flags/LanEllipse6_conf/9c8db2d869fffe81cebb4c306b5ef6e7a42bfe59 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/243371353" 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/243371353/sys_time_h2_adapter.o ../src/config/LanEllipse6_conf/system/sys_time_h2_adapter.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o: ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c  .generated_files/flags/LanEllipse6_conf/67903a4a8de4a26fc785fce59914b74924ec3af5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/243371353" 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/243371353/sys_random_h2_adapter.o ../src/config/LanEllipse6_conf/system/sys_random_h2_adapter.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/tasks.o: ../src/config/LanEllipse6_conf/tasks.c  .generated_files/flags/LanEllipse6_conf/7b471d5add2000e558ce9bc46ab464ebaef6ae84 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/tasks.o.d" -o ${OBJECTDIR}/_ext/354746917/tasks.o ../src/config/LanEllipse6_conf/tasks.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/initialization.o: ../src/config/LanEllipse6_conf/initialization.c  .generated_files/flags/LanEllipse6_conf/856e8591db04b25c370f9bead7dbeab2e871e27 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/initialization.o.d" -o ${OBJECTDIR}/_ext/354746917/initialization.o ../src/config/LanEllipse6_conf/initialization.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/interrupts.o: ../src/config/LanEllipse6_conf/interrupts.c  .generated_files/flags/LanEllipse6_conf/a74c99fd0addf475c51a69cf651967654c291db9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/interrupts.o.d" -o ${OBJECTDIR}/_ext/354746917/interrupts.o ../src/config/LanEllipse6_conf/interrupts.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/354746917/exceptions.o: ../src/config/LanEllipse6_conf/exceptions.c  .generated_files/flags/LanEllipse6_conf/30e90b5e2e43ea3b3bd9da99cec1fe805aa077a2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/354746917" 
	@${RM} ${OBJECTDIR}/_ext/354746917/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/354746917/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/354746917/exceptions.o.d" -o ${OBJECTDIR}/_ext/354746917/exceptions.o ../src/config/LanEllipse6_conf/exceptions.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/flags/LanEllipse6_conf/9801c4606ff66eb5599fa7b7575955f7869da456 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/flags/LanEllipse6_conf/e4c17351a332a262af09b01ba84b8077a43a9a7d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/flags/LanEllipse6_conf/1a701c1f7cd84cbeca6ad18c8d9c28484e81 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/flags/LanEllipse6_conf/30f69b6ae3092e33e5cad5692f070b8d1ee17cc1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/flags/LanEllipse6_conf/b4ff2fa43b83cccbeb4e6fffa044db22e51a8286 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/flags/LanEllipse6_conf/8282c108a613dd432d28626ceb592beca4a3eaeb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/flags/LanEllipse6_conf/ac7df3565970fe010378fd66fb27b6f9fd896630 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/flags/LanEllipse6_conf/cc78a882306652df824520bffa5838be29dd7782 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/flags/LanEllipse6_conf/a10d455f08ee904ed51cf934013e439dcedab234 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/flags/LanEllipse6_conf/d49f6a049f27199be02c70d91c01b438288747a0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/flags/LanEllipse6_conf/e9d36e4beeb28c9f00a826c4fa77c416b53d1843 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/flags/LanEllipse6_conf/a5b38a974cf9693cc854a1c4ccb4710a5b6daacc .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/flags/LanEllipse6_conf/c5cdcedaab8ffa88478ef436fb8e66ffaac6daa0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/flags/LanEllipse6_conf/4e8928afb087109a2306a8d7c8be3b3c4c42de5a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/flags/LanEllipse6_conf/3a0ee2de9d361d6d56d57014cdba91205061e5d9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/flags/LanEllipse6_conf/ddbde4243ff3b5b0c1a976cc6822a6a001629784 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/flags/LanEllipse6_conf/92c2e6dbe3445d5c3f705e5a01292c70de1b681d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/flags/LanEllipse6_conf/dd86c9408741e68302695625d74cadf99ff4ab0f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/flags/LanEllipse6_conf/d5a8f9aef280abe38759955b6fb566e6d0e29176 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/flags/LanEllipse6_conf/da3e8e92abfadf9e222fa98628fea7ffd87a12b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/flags/LanEllipse6_conf/43a6ddb8f3fa72d868ed75afa315df547ed9ac57 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/flags/LanEllipse6_conf/cc112101ce7af6503324299401758003f636432b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/flags/LanEllipse6_conf/2a45e99f31bcddfa79ab706b94564ed6159e0eae .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/flags/LanEllipse6_conf/e1f9231f010d7dee04862fd948406ebbb292bc3e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/flags/LanEllipse6_conf/36448b8557ac115ab23517f1526ae78ad1bf5785 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/flags/LanEllipse6_conf/4ca812775e8d6f15407a7b81072231b386dc3614 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/flags/LanEllipse6_conf/41acf3fa47bccca56bc429272a3e8cfe81293adf .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/flags/LanEllipse6_conf/f5237ef7a2c023c1fa8c99740f3be0e96cd1925e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/flags/LanEllipse6_conf/ab9da7d039883abd1671dbdfdf32ac651b41302 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/flags/LanEllipse6_conf/ed40320a60bed752e66aadc2cc12593ebc3b206c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/flags/LanEllipse6_conf/c3847aa017ee4c605be4c73f30944ae1e7edd5ef .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/flags/LanEllipse6_conf/4af8751e6c86c2c2be35c97873e349fbcd8859f8 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/flags/LanEllipse6_conf/8f90f5369b46515162f48b827728d3fd78fd7bd2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/flags/LanEllipse6_conf/275acb36cfbf7ad4e90cf12fa804975cfca1c002 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/flags/LanEllipse6_conf/f95e79d51daf7f0977f4452ee6c8896d7638f92f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/flags/LanEllipse6_conf/e6805a8f3598012c4157a903f49144176b6b1c52 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/flags/LanEllipse6_conf/b6b870ffbef25cc9343268d9d83966f673d46271 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/flags/LanEllipse6_conf/6f7e0eb53e7a2a7aa3ceaaa5f119da84fc4fe774 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/flags/LanEllipse6_conf/216e21fdf2c90b8e243797b0025873f975c4a9ae .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/flags/LanEllipse6_conf/a283e3ed39f21277c272377d71da7d6717aea91a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/flags/LanEllipse6_conf/29c8e7d13df569b9a5832ef34accd70825a7842 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/flags/LanEllipse6_conf/1defe5abb2fdafa0514bf594dc66d01dd4343f32 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/flags/LanEllipse6_conf/2be59ed59cd06c6ff53a0cf20906e4ac3828f88b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/flags/LanEllipse6_conf/125f0d6776d3d1a4eb142f342e7296d8db0aa533 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/flags/LanEllipse6_conf/a33997a46a84fe5571cbfaaa36f2cc49179e1b0d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/flags/LanEllipse6_conf/6279d5b1281006de4cb0ea8e9d58454671886717 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/flags/LanEllipse6_conf/8a606db7b833e31ce8d7ba00dad3450b887eaf43 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/flags/LanEllipse6_conf/978f81f9c220d799263e557705a1b07375fbfab1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/flags/LanEllipse6_conf/4b477fe198d070393abf44b69516942407420b1f .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/flags/LanEllipse6_conf/97a1760c1ebe6b02a233c193da256211055ea410 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/flags/LanEllipse6_conf/25ed74631b617be04b3827b91266d0b91d4df7cf .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/flags/LanEllipse6_conf/38ab9a408f16612b462eccdcfdf5fe4c5bb95bdb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/flags/LanEllipse6_conf/fa77592d3e127c057a43c566709dcaebe0756381 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/flags/LanEllipse6_conf/66a89469aade098b2acfff1e7035d39029226704 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/flags/LanEllipse6_conf/3fc7b9529e88fc3120738adcd7ca8d377fa8f581 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/flags/LanEllipse6_conf/e3ac57a1c6b410bc755e749538053cee545cc7fa .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/flags/LanEllipse6_conf/6dcf7cad8585b1ceb8a1a2add96e51407bbed101 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/flags/LanEllipse6_conf/b50d6b09ea4f270fceb74c28ec18b618c6d23b07 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/flags/LanEllipse6_conf/67ce4014457e0a1e9913cd8f4a2f38b3768387c2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/flags/LanEllipse6_conf/e6bdfef5b728e141b025ae98d362af30311de63 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/flags/LanEllipse6_conf/c3017a996b7cd47234b9fbbc7ba30463e29a7ee5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/flags/LanEllipse6_conf/16d564034365fbfd6cc7df94e26a478903c41fab .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/flags/LanEllipse6_conf/b0eac06b1147315a08b55cd84bedf54827a1e869 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/flags/LanEllipse6_conf/766c0ad08b1d4ebfcebcd7b64261371808b783ea .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/flags/LanEllipse6_conf/2a25c2a7ded5775b5eff46e08bcaaad4d3e63b40 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/flags/LanEllipse6_conf/e1c88056590fc2c952c851bab4a96b95110476bb .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/flags/LanEllipse6_conf/a3f525284a816006bded8f48f3b56a311b654a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/flags/LanEllipse6_conf/f76dd26fcb7f6b96c3bc8b8a84627e43dfc906a1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/flags/LanEllipse6_conf/f0bd682f43618fc7fe7fbfb7473ec139897eb60c .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/flags/LanEllipse6_conf/8b781bdbbdc857343b32129f5320eb6f9edea87d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/flags/LanEllipse6_conf/6c38a0db7694da3ab749aa262910cf7ab7ecc479 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/flags/LanEllipse6_conf/140e174c25a5ae5f63fb9ba2c9e7745fce76b08d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/flags/LanEllipse6_conf/6b2cc6bb14864c505de56b293c99f21011c67a58 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/flags/LanEllipse6_conf/465e7823e13ee7f7040259dfa4e523a9ddd3745d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/flags/LanEllipse6_conf/9d66a2786afbc5c03d1a3cc05d6e59d98c94e7a3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/flags/LanEllipse6_conf/5c9be43f1a76e82050ec63e21d7eeddc00ae70d1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/flags/LanEllipse6_conf/466cd1056bc8f715a187ca6726354da9508b830e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/flags/LanEllipse6_conf/73b74add6b82a1c38e5557277fd90586b2caa5a9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/flags/LanEllipse6_conf/8f015b2d650aaddb801e33a38d55fca404166674 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/flags/LanEllipse6_conf/3c088693345df3352634136715e89f75350de50 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/flags/LanEllipse6_conf/816d6ec068c98f788a40df670a8802f20977571a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/flags/LanEllipse6_conf/49b0af40c1685f011ae1886216c06856390b4d44 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/flags/LanEllipse6_conf/4abba96df1f07b7429210c355c9ee457292defd0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/flags/LanEllipse6_conf/e298c7ef7f59e0405affa3199a7b83eeb2fbf013 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/flags/LanEllipse6_conf/466a24b26bf56ccc46e3835c306fe931d18ca47d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/flags/LanEllipse6_conf/25620de7846e3fa5c5d4033eb2d05be58bc1d0cd .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/flags/LanEllipse6_conf/1728e940252d156bb5fecd0e77c363e36eb5d105 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/flags/LanEllipse6_conf/ca3150576484df11deccef1c5b2d107ea937cf3b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/flags/LanEllipse6_conf/5d4320b824755dac375d6a467b12343f097dfb5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/flags/LanEllipse6_conf/3d60caf41b31b8f102fb0c8330672821ebd8d9a9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/flags/LanEllipse6_conf/2c6fc1915149792bdb5f72f8f99a45983630eea1 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  .generated_files/flags/LanEllipse6_conf/245b4ea51b4020e6bbe1f098b63ebcb55587820d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  .generated_files/flags/LanEllipse6_conf/e7444bf87b7a4a47ee9f1d19b59782af30986df2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  .generated_files/flags/LanEllipse6_conf/55e640da6f253d0ec95fde6ef07cd5ca998fd172 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  .generated_files/flags/LanEllipse6_conf/7136d1792a3dc553f89a88f9e008112843c0c58b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  .generated_files/flags/LanEllipse6_conf/5eba5cde5b3d174feac52122a57be1dfffdfbbc5 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  .generated_files/flags/LanEllipse6_conf/ca86ca6ff5dea82baec3e3d43db013c34ac716a .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  .generated_files/flags/LanEllipse6_conf/fc09b64b17739e30f941e8162f14ac0a17501a9b .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  .generated_files/flags/LanEllipse6_conf/d84721c0fb7efa9774b622be6d29bbb3ef9194ea .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  .generated_files/flags/LanEllipse6_conf/f925493b9f3aa8a0fc567f0a3b7f51ae98b26303 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/adler32.o: ../src/third_party/zlib/adler32.c  .generated_files/flags/LanEllipse6_conf/bd53960cc09f5d28346c8e472b486e40f501b5dc .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/adler32.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/adler32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/adler32.o.d" -o ${OBJECTDIR}/_ext/905221350/adler32.o ../src/third_party/zlib/adler32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/compress.o: ../src/third_party/zlib/compress.c  .generated_files/flags/LanEllipse6_conf/4d6ff54f37b5e519eed415d413b4a707900c49ee .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/compress.o.d" -o ${OBJECTDIR}/_ext/905221350/compress.o ../src/third_party/zlib/compress.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/crc32.o: ../src/third_party/zlib/crc32.c  .generated_files/flags/LanEllipse6_conf/49aac7a23aaf39466cad80019ec618f855243ec .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/crc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/crc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/crc32.o.d" -o ${OBJECTDIR}/_ext/905221350/crc32.o ../src/third_party/zlib/crc32.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/deflate.o: ../src/third_party/zlib/deflate.c  .generated_files/flags/LanEllipse6_conf/d32e43632c73119884271d826014129a172b5b14 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/deflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/deflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/deflate.o.d" -o ${OBJECTDIR}/_ext/905221350/deflate.o ../src/third_party/zlib/deflate.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/gzclose.o: ../src/third_party/zlib/gzclose.c  .generated_files/flags/LanEllipse6_conf/e170659ff98d34248560270e500460f2570fde7d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/gzclose.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/gzclose.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/gzclose.o.d" -o ${OBJECTDIR}/_ext/905221350/gzclose.o ../src/third_party/zlib/gzclose.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/infback.o: ../src/third_party/zlib/infback.c  .generated_files/flags/LanEllipse6_conf/6f721528edb0fd97f42271581d22aa31508dd70d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/infback.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/infback.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/infback.o.d" -o ${OBJECTDIR}/_ext/905221350/infback.o ../src/third_party/zlib/infback.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inffast.o: ../src/third_party/zlib/inffast.c  .generated_files/flags/LanEllipse6_conf/f116623b1de9661626463b3924e918b5563c72ac .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inffast.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inffast.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inffast.o.d" -o ${OBJECTDIR}/_ext/905221350/inffast.o ../src/third_party/zlib/inffast.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inflate.o: ../src/third_party/zlib/inflate.c  .generated_files/flags/LanEllipse6_conf/d60848c2e9623462298d6223e2007d95d40663a3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inflate.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inflate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inflate.o.d" -o ${OBJECTDIR}/_ext/905221350/inflate.o ../src/third_party/zlib/inflate.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/inftrees.o: ../src/third_party/zlib/inftrees.c  .generated_files/flags/LanEllipse6_conf/51500e72285202f562e58e13898da0592dc67f81 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/inftrees.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/inftrees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/inftrees.o.d" -o ${OBJECTDIR}/_ext/905221350/inftrees.o ../src/third_party/zlib/inftrees.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/trees.o: ../src/third_party/zlib/trees.c  .generated_files/flags/LanEllipse6_conf/426095faf50db093f7b224574a6442013d92f255 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/trees.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/trees.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/trees.o.d" -o ${OBJECTDIR}/_ext/905221350/trees.o ../src/third_party/zlib/trees.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/uncompr.o: ../src/third_party/zlib/uncompr.c  .generated_files/flags/LanEllipse6_conf/677af67eacd3a7919543c774916e2d520b6f3ec3 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/uncompr.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/uncompr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/uncompr.o.d" -o ${OBJECTDIR}/_ext/905221350/uncompr.o ../src/third_party/zlib/uncompr.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/905221350/zutil.o: ../src/third_party/zlib/zutil.c  .generated_files/flags/LanEllipse6_conf/974552f401098a66a030bc634684df4d590d826e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/905221350" 
	@${RM} ${OBJECTDIR}/_ext/905221350/zutil.o.d 
	@${RM} ${OBJECTDIR}/_ext/905221350/zutil.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/905221350/zutil.o.d" -o ${OBJECTDIR}/_ext/905221350/zutil.o ../src/third_party/zlib/zutil.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/LanEllipse6_conf/de62305ed619f1bb6c439932e0acac1741beb893 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/LanEllipse6_conf/41038b267945a4556276a0f293e73d867250e9a6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTcpIp.o: ../src/OrTcpIp.c  .generated_files/flags/LanEllipse6_conf/13d155bc66f9e6f970d611d31e2869c981aac0b0 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTcpIp.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTcpIp.o ../src/OrTcpIp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrGpio.o: ../src/OrGpio.c  .generated_files/flags/LanEllipse6_conf/f7c3a9fa0828aa8dd579c89882aa37f44ef4b79d .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrGpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrGpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrGpio.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrGpio.o ../src/OrGpio.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrAdc.o: ../src/OrAdc.c  .generated_files/flags/LanEllipse6_conf/40a433a58d978ff4c6524723ba55c852097f58f4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrAdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrAdc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrAdc.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrAdc.o ../src/OrAdc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrFlash.o: ../src/OrFlash.c  .generated_files/flags/LanEllipse6_conf/e65cd1d84647943a11339b38fcfc1e3f8b72ff78 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrFlash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrFlash.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrFlash.o ../src/OrFlash.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrUtils.o: ../src/OrUtils.c  .generated_files/flags/LanEllipse6_conf/c230d3c13578318578d703ffc17e45cdcb3f65c6 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrUtils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrUtils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrUtils.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrUtils.o ../src/OrUtils.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTime.o: ../src/OrTime.c  .generated_files/flags/LanEllipse6_conf/b410dbf05a7dfe51913bcd3a7a11fdb555560c4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTime.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTime.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTime.o ../src/OrTime.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTCA9539.o: ../src/OrTCA9539.c  .generated_files/flags/LanEllipse6_conf/fe3cc31eac8c682de35c207d52a14db7d3352c9 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTCA9539.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTCA9539.o ../src/OrTCA9539.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrParser.o: ../src/OrParser.c  .generated_files/flags/LanEllipse6_conf/8232a9b1c1944a0ae46eaa10943c60dbbf223c7 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrParser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrParser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrParser.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrParser.o ../src/OrParser.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrOp.o: ../src/OrOp.c  .generated_files/flags/LanEllipse6_conf/d6c8203136f23d3fd6360807ec6d23f79b84e997 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrOp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrOp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrOp.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrOp.o ../src/OrOp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrI2c.o: ../src/OrI2c.c  .generated_files/flags/LanEllipse6_conf/691fa71254ba3a40a551cc6b0b00c44a584e9dc2 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrI2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrI2c.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrI2c.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrI2c.o ../src/OrI2c.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrTmp117.o: ../src/OrTmp117.c  .generated_files/flags/LanEllipse6_conf/751cc28d06fc7891bfce2a0a57731eaca87e1a16 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTmp117.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrTmp117.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrTmp117.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrTmp117.o ../src/OrTmp117.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrEmc2305.o: ../src/OrEmc2305.c  .generated_files/flags/LanEllipse6_conf/7c7f136b54c173c5abf41a5fffd86e7329a6ba46 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrEmc2305.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrEmc2305.o ../src/OrEmc2305.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrLm75.o: ../src/OrLm75.c  .generated_files/flags/LanEllipse6_conf/557434f3a61d1eae31030797a4f2a10c92b200e .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrLm75.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrLm75.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrLm75.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrLm75.o ../src/OrLm75.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/OrDs1682.o: ../src/OrDs1682.c  .generated_files/flags/LanEllipse6_conf/a84e06b869aa03aecd52a9a6fe8155edfc533c24 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrDs1682.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/OrDs1682.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/OrDs1682.o.d" -o ${OBJECTDIR}/_ext/1360937237/OrDs1682.o ../src/OrDs1682.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/Or24Fc512.o: ../src/Or24Fc512.c  .generated_files/flags/LanEllipse6_conf/b4b090d61fecdf39ff758580a61a9f84ff14e485 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/Or24Fc512.o.d" -o ${OBJECTDIR}/_ext/1360937237/Or24Fc512.o ../src/Or24Fc512.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/flags/LanEllipse6_conf/ca1c493eff684b77fe386fc1da9a8ac2c46431e4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/flags/LanEllipse6_conf/4a3b51798a122f3d324c291cd9f4ae4c303744b4 .generated_files/flags/LanEllipse6_conf/60f636d10c6b8cd93f7de671de7e5fd4dbdba416
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/LanEllipse6_conf" -I"../src/config/LanEllipse6_conf/library" -I"../src/config/LanEllipse6_conf/library/tcpip/src" -I"../src/config/LanEllipse6_conf/library/tcpip/src/common" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/zlib" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/LanEllipse6_conf/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD3=1,--defsym=_min_heap_size=51200,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/PSU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/LanEllipse6_conf/p32MX795F512L.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/PSU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_LanEllipse6_conf=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=51200,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/PSU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
