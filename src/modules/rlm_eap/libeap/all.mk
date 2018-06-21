TARGET := libfreeradius-eap.a

SOURCES	:= eapcommon.c eap_chbind.c fips186prf.c comp128.c
ifneq (${OPENSSL_LIBS},)
SOURCES		+= eap_tls.c mppe_keys.c
endif

SRC_CFLAGS	:= -DEAPLIB

SRC_INCDIRS	:= . ..
