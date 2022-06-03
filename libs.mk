#	lv_drivers/display/R61581.c		lv_drivers/display/ST7565.c				lv_drivers/display/SSD1963.c	lv_drivers/display/UC1610.c		lv_drivers/display/GC9A01.c	\
	lv_drivers/display/ILI9341.c	lv_drivers/display/SHARP_MIP.c 		lv_drivers/display/drm.c 			lv_drivers/display/fbdev.c	:: ignorable
SRC_LVDR_DISPLAY=lv_drivers/display/monitor.c	lv_drivers/mouse_cursor_icon.c
#	lv_drivers/indev/XPT2046.c		lv_drivers/indev/FT5406EE8.c	lv_drivers/indev/AD_touch.c		lv_drivers/indev/libinput.c 		lv_drivers/indev/evdev.c	:: ignorable
SRC_LVDR_INDEV=lv_drivers/indev/keyboard.c 			lv_drivers/indev/mouse.c 			lv_drivers/indev/mousewheel.c

SRC_LVGL_EXAMP_ASSE=lvgl/examples/assets/animimg001.c 		lvgl/examples/assets/animimg002.c 			lvgl/examples/assets/animimg003.c \
	lvgl/examples/assets/imgbtn_left.c 								lvgl/examples/assets/imgbtn_mid.c 										lvgl/examples/assets/imgbtn_right.c  \
	lvgl/examples/assets/img_caret_down.c					lvgl/examples/assets/img_cogwheel_alpha16.c 				lvgl/examples/assets/img_cogwheel_argb.c  \
	lvgl/examples/assets/img_cogwheel_chroma_keyed.c	lvgl/examples/assets/img_cogwheel_indexed16.c lvgl/examples/assets/img_cogwheel_rgb.c 	\
	lvgl/examples/assets/img_hand.c 								lvgl/examples/assets/img_skew_strip.c 									lvgl/examples/assets/img_star.c
SRC_LVGL_EXAMP_LAYOUT=lvgl/examples/layouts/flex/lv_example_flex_1.c 	lvgl/examples/layouts/flex/lv_example_flex_2.c \
	lvgl/examples/layouts/flex/lv_example_flex_3.c 	lvgl/examples/layouts/flex/lv_example_flex_4.c 	lvgl/examples/layouts/flex/lv_example_flex_5.c \
	lvgl/examples/layouts/flex/lv_example_flex_6.c 	lvgl/examples/layouts/grid/lv_example_grid_1.c lvgl/examples/layouts/grid/lv_example_grid_2.c \
	lvgl/examples/layouts/grid/lv_example_grid_3.c lvgl/examples/layouts/grid/lv_example_grid_4.c lvgl/examples/layouts/grid/lv_example_grid_5.c \
	lvgl/examples/layouts/grid/lv_example_grid_6.c
SRC_LVGL_EXAMP_SCROLL=lvgl/examples/scroll/lv_example_scroll_1.c 	lvgl/examples/scroll/lv_example_scroll_2.c 	lvgl/examples/scroll/lv_example_scroll_3.c	\
	lvgl/examples/scroll/lv_example_scroll_4.c 	lvgl/examples/scroll/lv_example_scroll_5.c lvgl/examples/scroll/lv_example_scroll_6.c
SRC_LVGL_EXAMP_WIDG=lvgl/examples/widgets/animimg/lv_example_animimg_1.c 	\
	lvgl/examples/widgets/arc/lv_example_arc_1.c 	lvgl/examples/widgets/arc/lv_example_arc_2.c \
	lvgl/examples/widgets/bar/lv_example_bar_1.c 	lvgl/examples/widgets/bar/lv_example_bar_2.c 	lvgl/examples/widgets/bar/lv_example_bar_3.c \
	lvgl/examples/widgets/bar/lv_example_bar_4.c 	lvgl/examples/widgets/bar/lv_example_bar_5.c 	lvgl/examples/widgets/bar/lv_example_bar_6.c \
	lvgl/examples/widgets/btn/lv_example_btn_1.c 	lvgl/examples/widgets/btn/lv_example_btn_2.c 	lvgl/examples/widgets/btn/lv_example_btn_3.c \
	lvgl/examples/widgets/btnmatrix/lv_example_btnmatrix_1.c 	lvgl/examples/widgets/btnmatrix/lv_example_btnmatrix_2.c \
	lvgl/examples/widgets/btnmatrix/lv_example_btnmatrix_3.c \
	lvgl/examples/widgets/calendar/lv_example_calendar_1.c 	lvgl/examples/widgets/canvas/lv_example_canvas_1.c lvgl/examples/widgets/canvas/lv_example_canvas_2.c \
	lvgl/examples/widgets/chart/lv_example_chart_1.c 	lvgl/examples/widgets/chart/lv_example_chart_2.c 	lvgl/examples/widgets/chart/lv_example_chart_3.c \
	lvgl/examples/widgets/chart/lv_example_chart_4.c 	lvgl/examples/widgets/chart/lv_example_chart_5.c 	lvgl/examples/widgets/chart/lv_example_chart_6.c \
	lvgl/examples/widgets/chart/lv_example_chart_7.c \
	lvgl/examples/widgets/checkbox/lv_example_checkbox_1.c 		lvgl/examples/widgets/colorwheel/lv_example_colorwheel_1.c \
	lvgl/examples/widgets/dropdown/lv_example_dropdown_1.c 	lvgl/examples/widgets/dropdown/lv_example_dropdown_2.c \
	lvgl/examples/widgets/dropdown/lv_example_dropdown_3.c 	lvgl/examples/widgets/imgbtn/lv_example_imgbtn_1.c \
	lvgl/examples/widgets/img/lv_example_img_1.c 	lvgl/examples/widgets/img/lv_example_img_2.c 	lvgl/examples/widgets/img/lv_example_img_3.c \
	lvgl/examples/widgets/img/lv_example_img_4.c 	lvgl/examples/widgets/keyboard/lv_example_keyboard_1.c \
	lvgl/examples/widgets/label/lv_example_label_1.c 	lvgl/examples/widgets/label/lv_example_label_2.c lvgl/examples/widgets/label/lv_example_label_3.c \
	lvgl/examples/widgets/led/lv_example_led_1.c 	lvgl/examples/widgets/line/lv_example_line_1.c 	lvgl/examples/widgets/list/lv_example_list_1.c \
	lvgl/examples/widgets/meter/lv_example_meter_1.c 	lvgl/examples/widgets/meter/lv_example_meter_2.c 	lvgl/examples/widgets/meter/lv_example_meter_3.c \
	lvgl/examples/widgets/meter/lv_example_meter_4.c 	lvgl/examples/widgets/msgbox/lv_example_msgbox_1.c \
	lvgl/examples/widgets/obj/lv_example_obj_1.c 	lvgl/examples/widgets/obj/lv_example_obj_2.c \
	lvgl/examples/widgets/roller/lv_example_roller_1.c 	lvgl/examples/widgets/roller/lv_example_roller_2.c 	lvgl/examples/widgets/roller/lv_example_roller_3.c \
	lvgl/examples/widgets/slider/lv_example_slider_1.c 	lvgl/examples/widgets/slider/lv_example_slider_2.c lvgl/examples/widgets/slider/lv_example_slider_3.c \
	lvgl/examples/widgets/span/lv_example_span_1.c 	lvgl/examples/widgets/spinbox/lv_example_spinbox_1.c lvgl/examples/widgets/spinner/lv_example_spinner_1.c \
	lvgl/examples/widgets/switch/lv_example_switch_1.c 	lvgl/examples/widgets/table/lv_example_table_1.c 	lvgl/examples/widgets/table/lv_example_table_2.c \
	lvgl/examples/widgets/tabview/lv_example_tabview_1.c \
	lvgl/examples/widgets/textarea/lv_example_textarea_1.c 	lvgl/examples/widgets/textarea/lv_example_textarea_2.c lvgl/examples/widgets/textarea/lv_example_textarea_3.c \
	lvgl/examples/widgets/tileview/lv_example_tileview_1.c 	lvgl/examples/widgets/win/lv_example_win_1.c

SRC_LVGL_EXAMP_EVENT=lvgl/examples/event/lv_example_event_1.c 	lvgl/examples/event/lv_example_event_2.c 	lvgl/examples/event/lv_example_event_3.c

SRC_LVGL_EXAMP=		$(SRC_LVGL_EXAMP_EVENT) 	\
	##	$(SRC_LVGL_EXAMP_ASSE)	 $(SRC_LVGL_EXAMP_LAYOUT)	$(SRC_LVGL_EXAMP_WIDG)	$(SRC_LVGL_EXAMP_SCROLL)	:: integrated in a respective library
#	$(SRC_LVGL_EXAMP_GETST)	$(SRC_LVGL_EXAMP_STYLE)	$(SRC_LVGL_EXAMP_PORT) $(SRC_LVGL_EXAMP_ANIM)	:: ignorable

SRC_LVGL_HAL=lvgl/src/hal/lv_hal_tick.c 	lvgl/src/hal/lv_hal_disp.c 	lvgl/src/hal/lv_hal_indev.c

SRC_LVGL_SRC= $(SRC_LVGL_HAL)
## $(SRC_LVGL_WIDG)	$(SRC_LVGL_FONT)	$(SRC_LVGL_MISC)	$(SRC_LVGL_EXTR)	$(SRC_LVGL_CORE)	$(SRC_LVGL_DRAW)	$(SRC_LVGL_GPU)	:: integrated in a respective library

SRC_LVGL_CORE=	lvgl/src/core/lv_event.c 		lvgl/src/core/lv_disp.c 		lvgl/src/core/lv_obj.c 		lvgl/src/core/lv_obj_class.c 		lvgl/src/core/lv_obj_style.c \
	lvgl/src/core/lv_obj_draw.c 		lvgl/src/core/lv_refr.c 			lvgl/src/core/lv_indev_scroll.c 		lvgl/src/core/lv_obj_style_gen.c 	lvgl/src/core/lv_theme.c \
	lvgl/src/core/lv_obj_tree.c 		lvgl/src/core/lv_obj_scroll.c 	lvgl/src/core/lv_group.c 					lvgl/src/core/lv_indev.c 					lvgl/src/core/lv_obj_pos.c
SRC_LVGL_FONT=	lvgl/src/font/lv_font.c			lvgl/src/font/lv_font_dejavu_16_persian_hebrew.c	lvgl/src/font/lv_font_fmt_txt.c	lvgl/src/font/lv_font_loader.c	\
	lvgl/src/font/lv_font_montserrat_10.c	lvgl/src/font/lv_font_montserrat_12.c	lvgl/src/font/lv_font_montserrat_12_subpx.c	lvgl/src/font/lv_font_montserrat_14.c	\
	lvgl/src/font/lv_font_montserrat_16.c	lvgl/src/font/lv_font_montserrat_18.c	lvgl/src/font/lv_font_montserrat_20.c	lvgl/src/font/lv_font_montserrat_22.c	\
	lvgl/src/font/lv_font_montserrat_24.c	lvgl/src/font/lv_font_montserrat_26.c	lvgl/src/font/lv_font_montserrat_28.c	lvgl/src/font/lv_font_montserrat_28_compressed.c \
	lvgl/src/font/lv_font_montserrat_30.c	lvgl/src/font/lv_font_montserrat_32.c	lvgl/src/font/lv_font_montserrat_34.c	lvgl/src/font/lv_font_montserrat_36.c	\
	lvgl/src/font/lv_font_montserrat_38.c	lvgl/src/font/lv_font_montserrat_40.c	lvgl/src/font/lv_font_montserrat_42.c	lvgl/src/font/lv_font_montserrat_44.c	\
	lvgl/src/font/lv_font_montserrat_46.c	lvgl/src/font/lv_font_montserrat_48.c	lvgl/src/font/lv_font_montserrat_8.c	 lvgl/src/font/lv_font_simsun_16_cjk.c	\
	lvgl/src/font/lv_font_unscii_16.c	lvgl/src/font/lv_font_unscii_8.c
SRC_LVGL_WIDG=lvgl/src/widgets/lv_arc.c 	lvgl/src/widgets/lv_bar.c 	lvgl/src/widgets/lv_btn.c 	lvgl/src/widgets/lv_btnmatrix.c 	lvgl/src/widgets/lv_canvas.c \
	lvgl/src/widgets/lv_checkbox.c 	lvgl/src/widgets/lv_dropdown.c 	lvgl/src/widgets/lv_img.c 	lvgl/src/widgets/lv_label.c 	lvgl/src/widgets/lv_line.c \
	lvgl/src/widgets/lv_objx_templ.c 	lvgl/src/widgets/lv_roller.c 	lvgl/src/widgets/lv_slider.c 	lvgl/src/widgets/lv_switch.c 	lvgl/src/widgets/lv_table.c \
	lvgl/src/widgets/lv_textarea.c
SRC_LVGL_EXTR=lvgl/src/extra/layouts/flex/lv_flex.c 	lvgl/src/extra/layouts/grid/lv_grid.c 	lvgl/src/extra/lv_extra.c 	lvgl/src/extra/themes/basic/lv_theme_basic.c \
	lvgl/src/extra/themes/default/lv_theme_default.c 	lvgl/src/extra/themes/mono/lv_theme_mono.c 	lvgl/src/extra/widgets/animimg/lv_animimg.c \
	lvgl/src/extra/widgets/calendar/lv_calendar.c 	lvgl/src/extra/widgets/calendar/lv_calendar_header_arrow.c lvgl/src/extra/widgets/calendar/lv_calendar_header_dropdown.c \
	lvgl/src/extra/widgets/chart/lv_chart.c 	lvgl/src/extra/widgets/colorwheel/lv_colorwheel.c 	lvgl/src/extra/widgets/imgbtn/lv_imgbtn.c lvgl/src/extra/widgets/keyboard/lv_keyboard.c \
	lvgl/src/extra/widgets/led/lv_led.c 	lvgl/src/extra/widgets/list/lv_list.c 	lvgl/src/extra/widgets/meter/lv_meter.c 	lvgl/src/extra/widgets/msgbox/lv_msgbox.c \
	lvgl/src/extra/widgets/span/lv_span.c 	lvgl/src/extra/widgets/spinbox/lv_spinbox.c 	lvgl/src/extra/widgets/spinner/lv_spinner.c 	lvgl/src/extra/widgets/tabview/lv_tabview.c \
	lvgl/src/extra/widgets/tileview/lv_tileview.c 	lvgl/src/extra/widgets/win/lv_win.c
SRC_LVGL_MISC=lvgl/src/misc/lv_anim.c 	lvgl/src/misc/lv_area.c 	lvgl/src/misc/lv_async.c 	lvgl/src/misc/lv_bidi.c 	lvgl/src/misc/lv_color.c 	lvgl/src/misc/lv_fs.c \
	lvgl/src/misc/lv_gc.c 	lvgl/src/misc/lv_ll.c 	lvgl/src/misc/lv_log.c 	lvgl/src/misc/lv_math.c 	lvgl/src/misc/lv_mem.c 	lvgl/src/misc/lv_printf.c 	lvgl/src/misc/lv_style.c \
	lvgl/src/misc/lv_style_gen.c 	lvgl/src/misc/lv_templ.c 	lvgl/src/misc/lv_timer.c 	lvgl/src/misc/lv_tlsf.c 	lvgl/src/misc/lv_txt_ap.c 	lvgl/src/misc/lv_txt.c lvgl/src/misc/lv_utils.c
SRC_LVGL_DRAW=lvgl/src/draw/lv_draw_arc.c 	lvgl/src/draw/lv_draw_blend.c 	lvgl/src/draw/lv_draw_img.c 	lvgl/src/draw/lv_draw_label.c 	\
	lvgl/src/draw/lv_draw_line.c 	lvgl/src/draw/lv_draw_mask.c 	lvgl/src/draw/lv_draw_rect.c 	lvgl/src/draw/lv_draw_triangle.c 	\
	lvgl/src/draw/lv_img_buf.c		lvgl/src/draw/lv_img_cache.c 	lvgl/src/draw/lv_img_decoder.c
SRC_LVGL_GPU=lvgl/src/gpu/lv_gpu_stm32_dma2d.c 		lvgl/src/gpu/lv_gpu_nxp_vglite.c 	lvgl/src/gpu/lv_gpu_nxp_pxp_osa.c 	lvgl/src/gpu/lv_gpu_nxp_pxp.c
