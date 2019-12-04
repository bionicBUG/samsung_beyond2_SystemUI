.class Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy$ThemePanelColorModel;
.super Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.source "PanelColorOpenThemeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemePanelColorModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;Landroid/content/Context;)V
    .locals 36

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 41
    iput-object v4, v2, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy$ThemePanelColorModel;->this$0:Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;

    .line 42
    sget v2, Lcom/android/systemui/R$color;->sec_qs_background:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;->access$000(Lcom/android/systemui/qs/panelcolor/PanelColorOpenThemeStrategy;)I

    move-result v4

    sget v5, Lcom/android/systemui/R$color;->status_bar_header_setting_tint_color:I

    .line 46
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    sget v6, Lcom/android/systemui/R$color;->qs_status_bar_clock_color:I

    .line 47
    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget v7, Lcom/android/systemui/R$color;->qs_page_indicator:I

    .line 48
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$color;->qs_page_indicator_tint_color:I

    .line 49
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    sget v9, Lcom/android/systemui/R$color;->qs_tile_text:I

    .line 51
    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    sget v10, Lcom/android/systemui/R$color;->qs_tile_icon_on_dim_tint_color:I

    .line 52
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    sget v11, Lcom/android/systemui/R$color;->qs_tile_icon_on_tint_color:I

    .line 53
    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v11

    sget v12, Lcom/android/systemui/R$color;->qs_tile_icon_off_tint_color:I

    .line 54
    invoke-virtual {v0, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    sget v13, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    .line 55
    invoke-virtual {v0, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    sget v14, Lcom/android/systemui/R$color;->qs_tile_round_background_dim:I

    .line 56
    invoke-virtual {v0, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    sget v15, Lcom/android/systemui/R$color;->qs_tile_round_background_off:I

    .line 57
    invoke-virtual {v0, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    move-object/from16 v35, v1

    sget v1, Lcom/android/systemui/R$color;->qs_tile_round_bottom_background:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v16

    sget v1, Lcom/android/systemui/R$color;->qs_ripple_background:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v17

    sget v1, Lcom/android/systemui/R$color;->qs_detail_background:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v18

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_text_color:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v19

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_background_on:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v20

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_background_off:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v21

    sget v1, Lcom/android/systemui/R$color;->qs_detail_description_text_color:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_on_text_color:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v23

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_off_text_color:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v24

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_on_text_color_land:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v25

    sget v1, Lcom/android/systemui/R$color;->qs_detail_header_off_text_color_land:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v26

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_device_bt_icon_tint_color:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v27

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_icon_circle_bg_color:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v28

    sget v1, Lcom/android/systemui/R$color;->qs_detail_primary_text_color:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v29

    sget v1, Lcom/android/systemui/R$color;->qs_detail_secondary_text_color:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v30

    sget v1, Lcom/android/systemui/R$color;->qs_detail_item_active_color:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v31

    sget v1, Lcom/android/systemui/R$color;->qs_detail_list_divider_color:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v32

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_selected_color:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v33

    sget v1, Lcom/android/systemui/R$color;->quick_settings_sound_mode_detail_unselected_color:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v34

    move-object/from16 v1, v35

    .line 42
    invoke-direct/range {v1 .. v34}, Lcom/android/systemui/qs/panelcolor/PanelColorModel;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-void
.end method
