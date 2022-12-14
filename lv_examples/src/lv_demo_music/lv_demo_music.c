
#include "lv_demo_music.h"

#if LV_USE_DEMO_MUSIC

#include "lv_demo_music_main.h"
#include "lv_demo_music_list.h"

static lv_obj_t * ctrl;
static lv_obj_t * list;

static const char * title_list[] = {
    "Waiting for true love",
    "Need a Better Future",
    "Vibrations",
    "Why now?",
    "Never Look Back",
    "It happened Yesterday",
    "Feeling so High",
    "Go Deeper",
    "Find You There",
    "Until the End",
    "Unknown",
    "Unknown",
    "Unknown",
    "Unknown",
};

static const char * artist_list[] = {
    "The John Smith Band",
    "My True Name",
    "Robotics",
    "John Smith",
    "My True Name",
    "Robotics",
    "Robotics",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
    "Unknown artist",
};

static const char * genre_list[] = {
    "Rock • 1997",
    "Drum'n bass • 2016",
    "Psy trance • 2020",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
    "Metal • 2015",
};

static const uint32_t time_list[] = {
    1*60 + 14,
    2*60 + 26,
    1*60 + 54,
    2*60 + 24,
    2*60 + 37,
    3*60 + 33,
    1*60 + 56,
    3*60 + 31,
    2*60 + 20,
    2*60 + 19,
    2*60 + 20,
    2*60 + 19,
    2*60 + 20,
    2*60 + 19,
};

void lv_demo_music(void)
{
    lv_obj_set_style_bg_color(lv_scr_act(),lv_color_hex(0x146262),0) ;
    _lv_demo_music_list_create(lv_scr_act());
    _lv_demo_music_main_create(lv_scr_act());
}

void lv_demo_music0(void)
{
    lv_obj_set_style_bg_color(lv_scr_act(), lv_color_hex(0x343247), 0);

    list = _lv_demo_music_list_create(lv_scr_act());
    ctrl = _lv_demo_music_main_create(lv_scr_act());

}

const char * _lv_demo_music_get_title(uint32_t track_id)
{
    if(track_id >= sizeof(title_list) / sizeof(title_list[0])) return NULL;
    return title_list[track_id];
}

const char * _lv_demo_music_get_artist(uint32_t track_id)
{
    if(track_id >= sizeof(artist_list) / sizeof(artist_list[0])) return NULL;
    return artist_list[track_id];
}

const char * _lv_demo_music_get_genre(uint32_t track_id)
{
    if(track_id >= sizeof(genre_list) / sizeof(genre_list[0])) return NULL;
    return genre_list[track_id];
}

uint32_t _lv_demo_music_get_track_length(uint32_t track_id)
{
    if(track_id >= sizeof(time_list) / sizeof(time_list[0])) return 0;
    return time_list[track_id];
}

#endif /*LV_USE_DEMO_MUSIC*/
