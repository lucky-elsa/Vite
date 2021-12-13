# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := cpp_addon
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=cpp_addon' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Debug := \
	-I/home/matias/.cache/node-gyp/16.9.1/include/node \
	-I/home/matias/.cache/node-gyp/16.9.1/src \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/openssl/config \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/openssl/openssl/include \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/uv/include \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/zlib \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/v8/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=cpp_addon' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D__STDC_FORMAT_MACROS' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++14

INCS_Release := \
	-I/home/matias/.cache/node-gyp/16.9.1/include/node \
	-I/home/matias/.cache/node-gyp/16.9.1/src \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/openssl/config \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/openssl/openssl/include \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/uv/include \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/zlib \
	-I/home/matias/.cache/node-gyp/16.9.1/deps/v8/include

OBJS := \
	$(obj).target/$(TARGET)/main.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/cpp_addon.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/cpp_addon.node: LIBS := $(LIBS)
$(obj).target/cpp_addon.node: TOOLSET := $(TOOLSET)
$(obj).target/cpp_addon.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/cpp_addon.node
# Add target alias
.PHONY: cpp_addon
cpp_addon: $(builddir)/cpp_addon.node

# Copy this to the executable output path.
$(builddir)/cpp_addon.node: TOOLSET := $(TOOLSET)
$(builddir)/cpp_addon.node: $(obj).target/cpp_addon.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/cpp_addon.node
# Short alias for building this executable.
.PHONY: cpp_addon.node
cpp_addon.node: $(obj).target/cpp_addon.node $(builddir)/cpp_addon.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/cpp_addon.node

