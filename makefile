include srcs.mk
include libs.mk

PROJECT 			?= lvgl-sdl
MAKEFLAGS 			:= -j $(shell nproc)

WORKING_DIR			:= ./build
BUILD_DIR			:= $(WORKING_DIR)/obj
LIB_DIR	= ui/lib
BIN_DIR				:= $(WORKING_DIR)
BIN 				:= $(BIN_DIR)/demo

LIB_FONT = $(LIB_DIR)/libfont.a
LIB_WIDGETS=$(LIB_DIR)/libwidgets.a
LIB_MISC=$(LIB_DIR)/libmisc.a
LIB_EXTRA=$(LIB_DIR)/libextra.a
LIB_CORE=$(LIB_DIR)/libcore.a
LIB_DRAW=$(LIB_DIR)/libdraw.a
LIB_GPU=$(LIB_DIR)/libgpu.a
LIB_LVGL_EXAM_ASSE=$(LIB_DIR)/liblvgl-example-asset.a
LIB_LVGL_EXAM_LAYO=$(LIB_DIR)/liblvgl-example-layout.a
LIB_LVGL_EXAM_WIDG=$(LIB_DIR)/liblvgl-example-widgets.a
LIB_LVGL_EXAM_SCRO=$(LIB_DIR)/liblvgl-example-scroll.a
LIB_LVDR_IO=$(LIB_DIR)/liblv-drivers-io.a
LIB_LVGL_HAL_EVENT=$(LIB_DIR)/libhal-event.a

WARNINGS  = -Wall -Wextra -Wshadow -Wundef -Wmaybe-uninitialized -Wmissing-prototypes -Wno-discarded-qualifiers -Wno-unused-function \
	-Wno-error=strict-prototypes -Wpointer-arith -fno-strict-aliasing -Wno-error=cpp -Wuninitialized -Wno-unused-parameter -Wno-missing-field-initializers \
	-Wno-format-nonliteral -Wno-cast-qual -Wunreachable-code -Wno-switch-default -Wreturn-type -Wmultichar -Wformat-security -Wno-ignored-qualifiers \
	-Wno-error=pedantic -Wno-sign-compare -Wno-error=missing-prototypes -Wdouble-promotion -Wclobbered -Wdeprecated -Wempty-body \
	-Wshift-negative-value -Wstack-usage=2048 -Wtype-limits -Wsizeof-pointer-memaccess -Wpointer-arith
# Add simulator define to allow modification of source
DEFINES=-DSIMULATOR=1 -DLV_BUILD_TEST=0
# Include simulator inc folder first so lv_conf.h from custom UI can be used instead
INC=-I. -Ilvgl
CFLAGS=$(DEFINES) $(INC) -O0 -g $(WARNINGS)
LDLIBS	 			:= -lSDL2 -lm -L$(LIB_DIR) -lfont -lwidgets -lmisc -lextra -lcore -lgpu	-llvgl-example-asset	-llvgl-example-layout	\
																					-llvgl-example-widgets -llvgl-example-scroll -llv-drivers-io -lhal-event
CC	= gcc $(CFLAGS)

OBJ_FONT=$(patsubst %.c,%.o,$(SRC_LVGL_FONT))
OBJ_WIDGETS=$(patsubst %.c,%.o,$(SRC_LVGL_WIDG))
OBJ_MISC=$(patsubst %.c,%.o,$(SRC_LVGL_MISC))
OBJ_EXTRA=$(patsubst %.c,%.o,$(SRC_LVGL_EXTR))
OBJ_CORE=$(patsubst %.c,%.o,$(SRC_LVGL_CORE))
OBJ_DRAW=$(patsubst %.c,%.o,$(SRC_LVGL_DRAW))
OBJ_GPU=$(patsubst %.c,%.o,$(SRC_LVGL_GPU))
OBJ_LVGL_EXAM_ASSE=$(patsubst %.c,%.o,$(SRC_LVGL_EXAMP_ASSE))
OBJ_LVGL_EXAM_LAYO=$(patsubst %.c,%.o,$(SRC_LVGL_EXAMP_LAYOUT))
OBJ_LVGL_EXAM_WIDG=$(patsubst %.c,%.o,$(SRC_LVGL_EXAMP_WIDG))
OBJ_LVGL_EXAM_SCRO=$(patsubst %.c,%.o,$(SRC_LVGL_EXAMP_SCROLL))
OBJ_LVDR_IO=$(patsubst %.c,%.o,$(SRC_LVDR_DISPLAY))  $(patsubst %.c,%.o,$(SRC_LVDR_INDEV))
OBJ_LVGL_HAL_EVENT=$(patsubst %.c,%.o,$(SRC_LVGL_EXAMP_EVENT))  $(patsubst %.c,%.o,$(SRC_LVGL_HAL))

#		$(SRC_LVDR_WIN32DRV)			$(SRC_LVDR_WAYLAND)				$(SRC_LVDR_GTK)				$(SRC_LVDR_WIN)				$(SRC_LVGL_TEST)
SRCS 				:=  $(SRC_LVEX) 	$(SRC_MAIN)
OBJS=$(patsubst %.c,$(BUILD_DIR)/%.o, $(SRCS))	# $(notdir $(SRCS) )  -->>  VPATH=$(dir $(SRCS))

all: $(BIN)

$(BUILD_DIR)/%.o: %.c
	@echo CC  $<
	@mkdir -p $(dir $@)
	@ccache $(CC) -c -o $@ $<

$(LIB_LVDR_IO) : $(OBJ_LVDR_IO)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_FONT) : $(OBJ_FONT)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_WIDGETS) : $(OBJ_WIDGETS)	$(OBJ_FONT)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_MISC) : $(OBJ_MISC)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_EXTRA) : $(OBJ_EXTRA)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_DRAW) : $(OBJ_DRAW)	$(OBJ_FONT)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_GPU) : $(OBJ_GPU)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_CORE) : $(OBJ_CORE)	$(OBJ_MISC)		$(OBJ_EXTRA)	$(OBJ_DRAW)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^

$(LIB_LVGL_HAL_EVENT) : $(OBJ_LVGL_HAL_EVENT)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_LVGL_EXAM_ASSE) : $(OBJ_LVGL_EXAM_ASSE)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_LVGL_EXAM_LAYO) : $(OBJ_LVGL_EXAM_LAYO)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_LVGL_EXAM_WIDG) : $(OBJ_LVGL_EXAM_WIDG)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^
$(LIB_LVGL_EXAM_SCRO) : $(OBJ_LVGL_EXAM_SCRO)
	@echo -e "\t $@"
	@mkdir -p $(dir $@)
	@ar rc $@ $^

$(BIN): $(OBJS) $(LIB_FONT) $(LIB_WIDGETS)	$(LIB_MISC)	$(LIB_EXTRA) $(LIB_CORE)	$(LIB_DRAW)	$(LIB_GPU)	$(LIB_LVGL_EXAM_ASSE)	\
								$(LIB_LVGL_EXAM_LAYO)	$(LIB_LVGL_EXAM_WIDG)	$(LIB_LVGL_EXAM_SCRO) $(LIB_LVDR_IO)	$(LIB_LVGL_HAL_EVENT)
	@mkdir -p $(dir $@)
	@echo -e "\n\t\t >>>	$@\t<<<\n"
	@gcc -o $@ $(OBJS) $(LDLIBS)

clean:
	rm -rf $(WORKING_DIR)

install: ${BIN}
	install -d ${DESTDIR}/usr/lib/${PROJECT}/bin
	install $< ${DESTDIR}/usr/lib/${PROJECT}/bin/
