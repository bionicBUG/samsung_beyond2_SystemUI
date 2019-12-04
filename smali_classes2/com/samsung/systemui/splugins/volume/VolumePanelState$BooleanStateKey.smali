.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

.field public static final enum ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 80
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v1, 0x0

    const-string v2, "SHOWING"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 81
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v2, 0x1

    const-string v3, "DLNA_ENABLED"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 82
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v3, 0x2

    const-string v4, "SUPPORT_TV_VOLUME_CONTROL"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 83
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v4, 0x3

    const-string v5, "MEDIA_DEFAULT_ENABLED"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 84
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v5, 0x4

    const-string v6, "ANIMATING"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 85
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v6, 0x5

    const-string v7, "PENDING_STATE"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 86
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v7, 0x6

    const-string v8, "VOICE_CAPABLE"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 87
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/4 v8, 0x7

    const-string v9, "SAFE_MEDIA_DEVICE_ON"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 88
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v9, 0x8

    const-string v10, "SAFE_MEDIA_PIN_DEVICE_ON"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 89
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v10, 0x9

    const-string v11, "EXPANDED"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 90
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v11, 0xa

    const-string v12, "TRACKING"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 91
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v12, 0xb

    const-string v13, "HAS_VIBRATOR"

    invoke-direct {v0, v13, v12}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 92
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v13, 0xc

    const-string v14, "ALL_SOUND_OFF"

    invoke-direct {v0, v14, v13}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 93
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v14, 0xd

    const-string v15, "IS_DUAL_AUDIO"

    invoke-direct {v0, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 94
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v15, 0xe

    const-string v14, "SHOW_A11Y_STREAM"

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 95
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "IS_FROM_KEY"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 96
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "CONFIGURATION_CHANGED"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 97
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "IS_COVER_CLOSED"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 98
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "SHOWING_VOLUME_LIMITER_DIALOG"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 99
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "SHOWING_VOLUME_SAFETY_WARNING_DIALOG"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 100
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "OPEN_THEME_CHANGED"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 101
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "ZEN_MODE"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 102
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "WITH_ANIMATION"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 103
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "IS_LOCKSCREEN"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 104
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "REMOTE_MIC"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 105
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const-string v14, "IS_BT_SCO_ON"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    .line 79
    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->MEDIA_DEFAULT_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ANIMATING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->PENDING_STATE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SAFE_MEDIA_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->EXPANDED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOW_A11Y_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->CONFIGURATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_COVER_CLOSED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_LIMITER_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->SHOWING_VOLUME_SAFETY_WARNING_DIALOG:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->OPEN_THEME_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->WITH_ANIMATION:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_LOCKSCREEN:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->IS_BT_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;
    .locals 1

    .line 79
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;
    .locals 1

    .line 79
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;

    return-object v0
.end method
