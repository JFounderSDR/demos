TAO_IDL=$(ACE_ROOT)/bin/tao_idl.exe
TAO_IDLFLAGS=-g $(ACE_ROOT)/bin/ace_gperf.exe
VXWORKS_VERSION_FLAG=-DACE_VXWORKS=0x690
rtp=0
#设置CPU类型，必选项
#CPU=SIMNT
CPU=PPC85XX
#设置工具链类型，这个根据具体的目标平台而定
TOOL=e500v2diab
TOOL_FAMILY=diab

VDIR=
VSHDIR=

#定制 20150923
#minimum_corba=1
ACE_COMPONENTS=FOR_TAO 

inline=0
#ami=1
#rt_corba=1
#smart_proxies=1
#interceptors=1
#interface_repo=1
#corba_messaging=1

probe=0
profile=0
fakesvcconf=0
debug=0
optimize=0
#编译静态库
#static_libs_only=1
#编译共享库
shared_libs=1

include $(ACE_ROOT)/include/makeinclude/platform_vxworks6.9.GNU