#include "lv_demo_music_list.h"
#if LV_USE_DEMO_MUSIC

#include "lv_demo_music_main.h"

#if 1
static lv_obj_t * add_list_btn(lv_obj_t * parent, uint32_t track_id);
static void btn_click_event_cb(lv_event_t * e);

static lv_obj_t * list;
static lv_font_t * font_small, * font_medium;
static lv_style_t style_scrollbar, style_btn, style_btn_pr, style_btn_chk, style_btn_dis, style_title, style_artist, style_time;
LV_IMG_DECLARE(img_lv_demo_music_btn_list_play);
LV_IMG_DECLARE(img_lv_demo_music_btn_list_pause);
#else
static lv_obj_t * add_list_btn(lv_obj_t * parent, uint32_t track_id);
static void btn_click_event_cb(lv_event_t * e);

static lv_obj_t * list;
static lv_font_t * font_small;
static lv_font_t * font_medium;
static lv_style_t style_scrollbar;
static lv_style_t style_btn;
static lv_style_t style_btn_pr;
static lv_style_t style_btn_chk;
static lv_style_t style_btn_dis;
static lv_style_t style_title;
static lv_style_t style_artist;
static lv_style_t style_time;
LV_IMG_DECLARE(img_lv_demo_music_btn_list_play);
LV_IMG_DECLARE(img_lv_demo_music_btn_list_pause);
#endif

lv_obj_t * _lv_demo_music_list_create(lv_obj_t * parent)
{
    font_small = &lv_font_montserrat_12;    // for LARGE 16 && 22
    font_medium = &lv_font_montserrat_16;

    lv_style_init(&style_scrollbar);
    lv_style_set_width(&style_scrollbar,  4);
    lv_style_set_bg_opa(&style_scrollbar, LV_OPA_COVER);
    lv_style_set_bg_color(&style_scrollbar, lv_color_hex3(0xeee));
    lv_style_set_radius(&style_scrollbar, LV_RADIUS_CIRCLE);
    lv_style_set_pad_right(&style_scrollbar, 4);

    static const lv_coord_t grid_cols[] = {LV_GRID_CONTENT, LV_GRID_FR(1), LV_GRID_CONTENT, LV_GRID_TEMPLATE_LAST};
    static const lv_coord_t grid_rows[] = {22,  17, LV_GRID_TEMPLATE_LAST};     // for LARGE 35 && 30
    lv_style_init(&style_btn);
    lv_style_set_bg_opa(&style_btn, LV_OPA_TRANSP);
    lv_style_set_grid_column_dsc_array(&style_btn, grid_cols);
    lv_style_set_grid_row_dsc_array(&style_btn, grid_rows);
    lv_style_set_grid_row_align(&style_btn, LV_GRID_ALIGN_CENTER);
    lv_style_set_layout(&style_btn, LV_LAYOUT_GRID);
    lv_style_set_pad_right(&style_btn, 10);                 // for LARGE 20
    lv_style_init(&style_btn_pr);
    lv_style_set_bg_opa(&style_btn_pr, LV_OPA_COVER);
    lv_style_set_bg_color(&style_btn_pr,  lv_color_hex(0x4c4965));

    lv_style_init(&style_btn_chk);
    lv_style_set_bg_opa(&style_btn_chk, LV_OPA_COVER);
    lv_style_set_bg_color(&style_btn_chk, lv_color_hex(0x4c4965));

    lv_style_init(&style_btn_dis);
    lv_style_set_text_opa(&style_btn_dis, LV_OPA_40);
    lv_style_set_img_opa(&style_btn_dis, LV_OPA_40);

    lv_style_init(&style_title);
    lv_style_set_text_font(&style_title, font_medium);
    lv_style_set_text_color(&style_title, lv_color_hex(0xffffff));

    lv_style_init(&style_artist);
    lv_style_set_text_font(&style_artist, font_small);
    lv_style_set_text_color(&style_artist,lv_color_hex(0xb1b0be));

    lv_style_init(&style_time);
    lv_style_set_text_font(&style_time, font_medium);
    lv_style_set_text_color(&style_time, lv_color_hex(0xffffff));

    /*Create an empty transparent container*/
    list = lv_obj_create(parent);
    lv_obj_remove_style_all(list);
    lv_obj_set_size(list, LV_HOR_RES, LV_VER_RES - LV_DEMO_MUSIC_HANDLE_SIZE);
    lv_obj_set_y(list, LV_DEMO_MUSIC_HANDLE_SIZE);
    lv_obj_add_style(list, &style_scrollbar, LV_PART_SCROLLBAR);
    lv_obj_set_flex_flow(list, LV_FLEX_FLOW_COLUMN);

    uint32_t track_id;
    for(track_id = 0; _lv_demo_music_get_title(track_id); track_id++) {
        add_list_btn(list,  track_id);
    }

    _lv_demo_music_list_btn_check(0, true);

    return list;
}

#if 1
void _lv_demo_music_list_btn_check(uint32_t tid, bool state)
{
    lv_obj_t * btn = lv_obj_get_child(list, tid);
    lv_obj_t * icon = lv_obj_get_child(btn,0);
    if(state) {
        lv_obj_add_state(btn,LV_STATE_CHECKED);
        lv_img_set_src(icon,&img_lv_demo_music_btn_list_play);
    } else {
        lv_obj_clear_state(btn,LV_STATE_CHECKED);
        lv_img_set_src(icon,&img_lv_demo_music_btn_list_pause);
    }
}
#else
void _lv_demo_music_list_btn_check(uint32_t track_id, bool state)
{
    lv_obj_t * btn = lv_obj_get_child(list, track_id);
    lv_obj_t * icon = lv_obj_get_child(btn, 0);

    if(state) {
        lv_obj_add_state(btn, LV_STATE_CHECKED);
        lv_img_set_src(icon, &img_lv_demo_music_btn_list_play);
    }
    else {
        lv_obj_clear_state(btn, LV_STATE_CHECKED);
        lv_img_set_src(icon, &img_lv_demo_music_btn_list_pause);
    }
}
#endif

#if 1
static lv_obj_t * add_list_btn(lv_obj_t * parent, uint32_t tid)
{
    uint32_t t = _lv_demo_music_get_track_length(tid);
    char time[32];
    lv_snprintf(time,sizeof(time),"%d:%02d",t/60,t%60);
    const char * title = _lv_demo_music_get_title(tid);
    const char * artist = _lv_demo_music_get_artist(tid);

    lv_obj_t * btn = lv_obj_create(parent);
        lv_obj_remove_style_all(btn);
        lv_obj_set_size(btn,lv_pct(100),60);
        lv_obj_add_style(btn,&style_btn,0);
        lv_obj_add_style(btn,&style_btn_pr,LV_STATE_PRESSED);
        lv_obj_add_style(btn,&style_btn_chk,LV_STATE_PRESSED);
        lv_obj_add_style(btn,&style_btn_dis,LV_STATE_DISABLED);

        lv_obj_add_event_cb(btn,btn_click_event_cb,LV_EVENT_CLICKED,NULL);
        if(tid>=3)  {
            lv_obj_add_state(btn,LV_STATE_DISABLED);
        }

        lv_obj_t * icon = lv_img_create(btn);
            lv_img_set_src(icon,&img_lv_demo_music_btn_list_pause);
            lv_obj_set_grid_cell(icon, LV_GRID_ALIGN_START, 0, 1, LV_GRID_ALIGN_CENTER, 0,20);
        lv_obj_t * title_label = lv_label_create(btn);
            lv_label_set_text(title_label, title);
            lv_obj_set_grid_cell(title_label,LV_GRID_ALIGN_START,1,1,LV_GRID_ALIGN_CENTER,0,1);
            lv_obj_add_style(title_label,&style_title,0);
        lv_obj_t * artist_label = lv_label_create(btn);
            lv_label_set_text(artist_label,artist);
            lv_obj_set_grid_cell(artist_label,LV_GRID_ALIGN_START,1,1,LV_GRID_ALIGN_CENTER,1,1);
            lv_obj_add_style(artist_label,&style_artist,0);
        lv_obj_t * time_label = lv_label_create(btn);
            lv_label_set_text(time_label,time);
            lv_obj_set_grid_cell(time_label,LV_GRID_ALIGN_END,2,1,LV_GRID_ALIGN_CENTER,0,2);
            lv_obj_add_style(time_label,&style_time,0);
        LV_IMG_DECLARE(img_lv_demo_music_list_border);
        lv_obj_t * border = lv_img_create(btn);
            lv_img_set_src(border,&img_lv_demo_music_list_border);
            lv_obj_set_width(border,lv_pct(120));
            lv_obj_align(border, LV_ALIGN_BOTTOM_MID, 0, 0);
            lv_obj_add_flag(border,LV_OBJ_FLAG_IGNORE_LAYOUT);
    return btn;
}
#else
static lv_obj_t * add_list_btn(lv_obj_t * parent, uint32_t track_id)
{
    uint32_t t = _lv_demo_music_get_track_length(track_id);
    char time[32];
    lv_snprintf(time, sizeof(time), "%d:%02d", t / 60, t % 60);
    const char * title = _lv_demo_music_get_title(track_id);
    const char * artist = _lv_demo_music_get_artist(track_id);

    lv_obj_t * btn = lv_obj_create(parent);
    lv_obj_remove_style_all(btn);
    lv_obj_set_size(btn, lv_pct(100), 60);          // for LARGE 110

    lv_obj_add_style(btn, &style_btn, 0);
    lv_obj_add_style(btn, &style_btn_pr, LV_STATE_PRESSED);
    lv_obj_add_style(btn, &style_btn_chk, LV_STATE_CHECKED);
    lv_obj_add_style(btn, &style_btn_dis, LV_STATE_DISABLED);
    lv_obj_add_event_cb(btn, btn_click_event_cb, LV_EVENT_CLICKED, NULL);

    if(track_id >= 3) {
        lv_obj_add_state(btn, LV_STATE_DISABLED);
    }

    lv_obj_t * icon = lv_img_create(btn);
    lv_img_set_src(icon, &img_lv_demo_music_btn_list_pause);
    lv_obj_set_grid_cell(icon, LV_GRID_ALIGN_START, 0, 1, LV_GRID_ALIGN_CENTER, 0, 2);

    lv_obj_t * title_label = lv_label_create(btn);
    lv_label_set_text(title_label, title);
    lv_obj_set_grid_cell(title_label, LV_GRID_ALIGN_START, 1, 1, LV_GRID_ALIGN_CENTER, 0, 1);
    lv_obj_add_style(title_label, &style_title, 0);

    lv_obj_t * artist_label = lv_label_create(btn);
    lv_label_set_text(artist_label, artist);
    lv_obj_add_style(artist_label, &style_artist, 0);
    lv_obj_set_grid_cell(artist_label, LV_GRID_ALIGN_START, 1, 1, LV_GRID_ALIGN_CENTER, 1, 1);

    lv_obj_t * time_label = lv_label_create(btn);
    lv_label_set_text(time_label, time);
    lv_obj_add_style(time_label, &style_time, 0);
    lv_obj_set_grid_cell(time_label, LV_GRID_ALIGN_END, 2, 1, LV_GRID_ALIGN_CENTER, 0, 2);

    LV_IMG_DECLARE(img_lv_demo_music_list_border);
    lv_obj_t * border = lv_img_create(btn);
    lv_img_set_src(border, &img_lv_demo_music_list_border);
    lv_obj_set_width(border, lv_pct(120));
    lv_obj_align(border, LV_ALIGN_BOTTOM_MID, 0, 0);
    lv_obj_add_flag(border, LV_OBJ_FLAG_IGNORE_LAYOUT);


    return btn;
}
#endif

#if 1
static void btn_click_event_cb(lv_event_t * e)
{
    _lv_demo_music_play(lv_obj_get_child_id(e->target));
}
#else
static void btn_click_event_cb(lv_event_t * e)
{
    lv_obj_t * btn = lv_event_get_target(e);

    uint32_t idx = lv_obj_get_child_id(btn);

    _lv_demo_music_play(idx);
}
#endif
#endif /*LV_USE_DEMO_MUSIC*/

