.class public abstract Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.super Ljava/lang/Object;
.source "PanelColorModel.java"


# instance fields
.field public final BasicBackground:I

.field public final BasicText:I

.field public final ClockText:I

.field public final DetailBackground:I

.field public final DetailDescriptionText:I

.field public final DetailHeaderBackgroundOff:I

.field public final DetailHeaderBackgroundOn:I

.field public final DetailHeaderOffText:I

.field public final DetailHeaderOffTextLand:I

.field public final DetailHeaderOnText:I

.field public final DetailHeaderOnTextLand:I

.field public final DetailHeaderTextColor:I

.field public final DetailItemActive:I

.field public final DetailItemDeviceBluetoothIconTint:I

.field public final DetailItemIconCircleBackground:I

.field public final DetailListDivider:I

.field public final DetailPrimaryText:I

.field public final DetailSecondaryText:I

.field public final DetailSoundSelected:I

.field public final DetailSoundUnSelected:I

.field public final HeaderSettingsTint:I

.field public final PageIndicator:I

.field public final PageIndicatorTint:I

.field public final PanelIndicatorIconTint:I

.field public final RippleBackground:I

.field public final TileIconOffTint:I

.field public final TileIconOnDimTint:I

.field public final TileIconOnTint:I

.field public final TileRoundBackgroundDim:I

.field public final TileRoundBackgroundOff:I

.field public final TileRoundBackgroundOn:I

.field public final TileRoundBottomBackground:I

.field public final TileText:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 60
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicBackground:I

    move v1, p2

    .line 61
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicText:I

    move v1, p3

    .line 62
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PanelIndicatorIconTint:I

    move v1, p4

    .line 63
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    move v1, p5

    .line 64
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->ClockText:I

    move v1, p6

    .line 65
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PageIndicator:I

    move v1, p7

    .line 66
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->PageIndicatorTint:I

    move v1, p8

    .line 67
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileText:I

    move v1, p9

    .line 68
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileIconOnDimTint:I

    move v1, p10

    .line 69
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileIconOnTint:I

    move v1, p11

    .line 70
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileIconOffTint:I

    move v1, p12

    .line 71
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileRoundBackgroundOn:I

    move v1, p13

    .line 72
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileRoundBackgroundDim:I

    move/from16 v1, p14

    .line 73
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileRoundBackgroundOff:I

    move/from16 v1, p15

    .line 74
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->TileRoundBottomBackground:I

    move/from16 v1, p16

    .line 75
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->RippleBackground:I

    move/from16 v1, p17

    .line 76
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailBackground:I

    move/from16 v1, p18

    .line 77
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderTextColor:I

    move/from16 v1, p19

    .line 78
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderBackgroundOn:I

    move/from16 v1, p20

    .line 79
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderBackgroundOff:I

    move/from16 v1, p21

    .line 80
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailDescriptionText:I

    move/from16 v1, p22

    .line 81
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderOnText:I

    move/from16 v1, p23

    .line 82
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderOffText:I

    move/from16 v1, p24

    .line 83
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderOnTextLand:I

    move/from16 v1, p25

    .line 84
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailHeaderOffTextLand:I

    move/from16 v1, p26

    .line 85
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemDeviceBluetoothIconTint:I

    move/from16 v1, p27

    .line 86
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemIconCircleBackground:I

    move/from16 v1, p28

    .line 87
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailPrimaryText:I

    move/from16 v1, p29

    .line 88
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailSecondaryText:I

    move/from16 v1, p30

    .line 89
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailItemActive:I

    move/from16 v1, p31

    .line 90
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailListDivider:I

    move/from16 v1, p32

    .line 91
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailSoundSelected:I

    move/from16 v1, p33

    .line 92
    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->DetailSoundUnSelected:I

    return-void
.end method
