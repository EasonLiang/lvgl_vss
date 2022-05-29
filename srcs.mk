
SRC_LVEX_WIDG=lv_examples/src/lv_demo_widgets/lv_demo_widgets.c 			lv_examples/src/lv_demo_widgets/assets/img_clothes.c \
	lv_examples/src/lv_demo_widgets/assets/img_demo_widgets_avatar.c 			lv_examples/src/lv_demo_widgets/assets/img_lvgl_logo.c
SRC_LVEX_STRE=lv_examples/src/lv_demo_stress/lv_demo_stress.c 						lv_examples/src/lv_demo_stress/assets/lv_font_montserrat_12_compr_az.c \
	lv_examples/src/lv_demo_stress/assets/lv_font_montserrat_16_compr_az.c 	lv_examples/src/lv_demo_stress/assets/lv_font_montserrat_28_compr_az.c

SRC_LVEX=lv_examples/src/lv_demo_benchmark/lv_demo_benchmark.c 		$(SRC_LVEX_WIDG)		$(SRC_LVEX_STRE)	\
	lv_examples/src/lv_demo_music/lv_demo_music_list.c                                                 lv_examples/src/lv_demo_keypad_encoder/lv_demo_keypad_encoder.c \
	lv_examples/src/lv_demo_music/lv_demo_music_main.c                                             lv_examples/src/lv_demo_music/lv_demo_music.c  \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_logo.c						lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_corner_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_list_pause.c  lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_list_pause_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_list_play.c 		lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_list_play_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_loop.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_loop_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_next.c 			lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_next_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_pause.c 		lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_pause_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_play.c 			lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_play_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_prev.c 			lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_prev_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_rnd.c 			lv_examples/src/lv_demo_music/assets/img_lv_demo_music_btn_rnd_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_corner_left.c 		lv_examples/src/lv_demo_music/assets/img_lv_demo_music_corner_left_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_corner_right.c 	  lv_examples/src/lv_demo_music/assets/img_lv_demo_music_corner_right_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_1.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_1_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_2.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_2_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_3.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_cover_3_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_1.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_1_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_2.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_2_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_3.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_3_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_4.c 				lv_examples/src/lv_demo_music/assets/img_lv_demo_music_icon_4_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_list_border.c 		lv_examples/src/lv_demo_music/assets/img_lv_demo_music_list_border_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_slider_knob.c 		lv_examples/src/lv_demo_music/assets/img_lv_demo_music_slider_knob_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_wave_bottom.c 	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_wave_bottom_large.c \
	lv_examples/src/lv_demo_music/assets/img_lv_demo_music_wave_top.c 			 lv_examples/src/lv_demo_music/assets/img_lv_demo_music_wave_top_large.c

SRC_MAIN=main/src/mouse_cursor_icon.c 		main/src/main.c

#	Introduction :: # means ignorable, while ## means it was integrated into a respective library.

#SRC_LVDR_WIN=lv_drivers/win_drv.c
#SRC_LVDR_GTK=	lv_drivers/gtkdrv/gtkdrv.c
#SRC_LVDR_WAYLAND=lv_drivers/wayland/wayland.c
#SRC_LVDR_WIN32DRV=lv_drivers/win32drv/win32drv.c
#SRC_LVGL_TEST=lvgl/tests/lv_test_widgets/lv_test_label.c 		lvgl/tests/lv_test_assert.c 	lvgl/tests/lv_test_core/lv_test_font_loader.c 	\
	lvgl/tests/lv_test_core/lv_test_obj.c 						lvgl/tests/lv_test_core/lv_test_core.c 			lvgl/tests/lv_test_core/lv_test_style.c \
	lvgl/tests/lv_test_fonts/font_1.c 			lvgl/tests/lv_test_fonts/font_2.c 		lvgl/tests/lv_test_fonts/font_3.c 	lvgl/tests/lv_test_main.c

#	SRC_LVGL_EXAMP_ANIM=lvgl/examples/anim/lv_example_anim_1.c 	lvgl/examples/anim/lv_example_anim_2.c
#	SRC_LVGL_EXAMP_GETST=lvgl/examples/get_started/lv_example_get_started_1.c 	lvgl/examples/get_started/lv_example_get_started_2.c lvgl/examples/get_started/lv_example_get_started_3.c
#	SRC_LVGL_EXAMP_PORT=lvgl/examples/porting/lv_port_disp_template.c 	lvgl/examples/porting/lv_port_fs_template.c lvgl/examples/porting/lv_port_indev_template.c
#	SRC_LVGL_EXAMP_STYLE=lvgl/examples/styles/lv_example_style_10.c 	lvgl/examples/styles/lv_example_style_11.c 	lvgl/examples/styles/lv_example_style_12.c \
		lvgl/examples/styles/lv_example_style_13.c 		lvgl/examples/styles/lv_example_style_14.c 		lvgl/examples/styles/lv_example_style_1.c 	\
		lvgl/examples/styles/lv_example_style_2.c 		lvgl/examples/styles/lv_example_style_3.c 		lvgl/examples/styles/lv_example_style_4.c \
		lvgl/examples/styles/lv_example_style_5.c 		lvgl/examples/styles/lv_example_style_6.c 		lvgl/examples/styles/lv_example_style_7.c \
		lvgl/examples/styles/lv_example_style_8.c 		lvgl/examples/styles/lv_example_style_9.c
