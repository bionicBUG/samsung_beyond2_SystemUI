.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_BACKGROUND_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_CUSTOM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_MEDIA_VOLUME_DEFAULT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_PANEL_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_UPDATE_PANEL_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field public static final enum STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v1, 0x0

    const-string v2, "STATE_IDLE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 30
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v2, 0x1

    const-string v3, "STATE_SHOW"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 31
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v3, 0x2

    const-string v4, "STATE_DISMISS"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 32
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v4, 0x3

    const-string v5, "STATE_DISMISS_VOLUME_PANEL"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 33
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v5, 0x4

    const-string v6, "STATE_UPDATE"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 34
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v6, 0x5

    const-string v7, "STATE_NO_DISPATCH"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 35
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v7, 0x6

    const-string v8, "STATE_SET_STREAM_VOLUME"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 36
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/4 v8, 0x7

    const-string v9, "STATE_VOLUME_ICON_CLICKED"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 37
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v9, 0x8

    const-string v10, "STATE_UPDATE_PROGRESS_BAR"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 38
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v10, 0x9

    const-string v11, "STATE_UPDATE_PROGRESS_BAR_LATER"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 39
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v11, 0xa

    const-string v12, "STATE_MEDIA_VOLUME_DEFAULT_CHANGED"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_MEDIA_VOLUME_DEFAULT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 40
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v12, 0xb

    const-string v13, "STATE_TOUCH_PANEL"

    invoke-direct {v0, v13, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 41
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v13, 0xc

    const-string v14, "STATE_RESCHEDULE_TIME_OUT"

    invoke-direct {v0, v14, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 42
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v14, 0xd

    const-string v15, "STATE_PLAY_SOUND_ON"

    invoke-direct {v0, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 43
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v15, 0xe

    const-string v14, "STATE_SMART_VIEW_ICON_CLICKED"

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 44
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_SMART_VIEW_SEEKBAR_TOUCHED"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 45
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_SHOW_VOLUME_LIMITER_DIALOG"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 46
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 47
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 48
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 49
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 50
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 51
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 52
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 53
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_START_SLIDER_TRACKING"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 54
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_STOP_SLIDER_TRACKING"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 55
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_OPEN_THEME_CHANGED"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 56
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_DISMISS_VOLUME_PANEL_COMPLETED"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 57
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_UPDATE_PANEL_HEIGHT"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PANEL_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 58
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_EXPAND_STATE_CHANGED"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 59
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_BACKGROUND_ANIMATION_FINISHED"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_BACKGROUND_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 60
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_PANEL_ANIMATION_FINISHED"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PANEL_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 61
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_CONFIGURATION_CHANGED"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 62
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const-string v14, "STATE_CUSTOM"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CUSTOM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v0, 0x22

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    .line 28
    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SET_STREAM_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PROGRESS_BAR_LATER:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_MEDIA_VOLUME_DEFAULT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_RESCHEDULE_TIME_OUT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PLAY_SOUND_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_SETTINS_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_LIMITER_DIALOG_VOLUME_DOWN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_SHOW_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_FLAG_DISMISS:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_OK_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_VOLUME_SAFETY_WARNING_DIALOG_CANCEL_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_DISMISS_VOLUME_PANEL_COMPLETED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_UPDATE_PANEL_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_EXPAND_STATE_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_BACKGROUND_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_PANEL_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_CUSTOM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 1

    .line 28
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object v0
.end method
