# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),release)
  OBJDIR     = obj/Release/Sample-SFML
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/SFMLSample
  DEFINES   += -DNDEBUG
  INCLUDES  += -I../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -msse -O2 -ffast-math
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../../lib -L../../../lib/linux -L../../../lib/linux/gmake
  LIBS      += ../../../lib/linux/gmake/libunittest.a ../../../lib/linux/gmake/libGWEN-Renderer-SFML.a ../../../lib/linux/gmake/libgwen_static.a -lsfml-graphics -lsfml-window -lsfml-system -lGL
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../../../lib/linux/gmake/libunittest.a ../../../lib/linux/gmake/libGWEN-Renderer-SFML.a ../../../lib/linux/gmake/libgwen_static.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug)
  OBJDIR     = obj/Debug/Sample-SFML
  TARGETDIR  = ../../../bin
  TARGET     = $(TARGETDIR)/SFMLSample_Dd
  DEFINES   += -D_DEBUG
  INCLUDES  += -I../../../include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -msse
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../../lib -L../../../lib/linux -L../../../lib/linux/gmake
  LIBS      += ../../../lib/linux/gmake/libunittestd.a ../../../lib/linux/gmake/libGWEND-Renderer-SFMLd.a ../../../lib/linux/gmake/libgwen_staticd.a -lsfml-graphics -lsfml-window -lsfml-system -lGL
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += ../../../lib/linux/gmake/libunittestd.a ../../../lib/linux/gmake/libGWEND-Renderer-SFMLd.a ../../../lib/linux/gmake/libgwen_staticd.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/SFML.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking Sample-SFML
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning Sample-SFML
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/SFML.o: ../../../Samples/SFML/SFML.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
