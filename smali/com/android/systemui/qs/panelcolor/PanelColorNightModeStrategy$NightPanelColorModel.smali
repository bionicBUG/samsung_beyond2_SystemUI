.class Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy$NightPanelColorModel;
.super Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.source "PanelColorNightModeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NightPanelColorModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;Landroid/content/Context;)V
    .locals 36

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 23
    iput-object v3, v2, Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy$NightPanelColorModel;->this$0:Lcom/android/systemui/qs/panelcolor/PanelColorNightModeStrategy;

    .line 24
    sget v2, Lcom/android/systemui/R$color;->sec_qs_background:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    .line 25
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget v4, Lcom/android/systemui/R$color;->panel_indicator_icon_tint:I

    .line 27
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    sget v5, Lcom/android/systemui/R$color;->status_bar_header_setting_tint_color:I

    .line 28
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    sget v6, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    .line 29
    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget v7, Lcom/android/systemui/R$color;->qs_page_indicator:I

    .line 30
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color:I

    .line 31
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    sget v9, Lcom/android/systemui/R$color;->qs_tile_text:I

    .line 33
    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    sget v10, Lcom/android/systemui/R$color;->qs_tile_icon_on_dim_tint_color:I

    .line 34
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    sget v11, Lcom/android/systemui/R$color;->qs_tile_icon_on_tint_color:I

    .line 35
    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    sget v12, Lcom/android/systemui/R$color;->qs_tile_icon_off_tint_color:I

    .line 36
    invoke-virtual {v0, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    sget v13, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    .line 37
    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    sget v14, Lcom/android/systemui/R$color;->qs_tile_round_background_dim:I

    .line 38
    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    sget v15, Lcom/android/systemui/R$color;->qs_tile_round_background_off:I

    .line 39
    invoke-virtual {v0, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    move-object/from16 v35, v1

    sget v1, Lcom/android/systemui/R$color;->qs_tile_round_bottom_background:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v16

    sget v1, Lcom/android/systemui/R$color;->qs_ripple_background:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v17

    sget v1, Lcom/android/systemui/R$color;->qs_detail_background:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v18

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_text_color:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v19

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_background_on:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v20

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_background_off:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v21

    sget v1, Lcom/android/systemui/R$color;->qs_detail_description_text_color:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_on_text_color:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v23

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_off_text_color:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v24

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_on_text_color_land:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v25

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_off_text_color_land:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v26

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_device_bt_icon_tint_color:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v27

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_icon_circle_bg_color:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v28

    sget v1, Lcom/android/systemui/R$color;->qs_detail_primary_text_color:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v29

    sget v1, Lcom/android/systemui/R$color;->qs_detail_secondary_text_color:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v30

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_active_color:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v31

    sget v1, Lcom/android/systemui/R$color;->qs_detail_list_divider_color:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v32

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_selected_color:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v33

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_unselected_color:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v34

    move-object/from16 v1, v35

    .line 24
    invoke-direct/range {v1 .. v34}, Lcom/android/systemui/qs/panelcolor/PanelColorModel;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method
