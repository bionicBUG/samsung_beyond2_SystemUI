.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;
.super Ljava/lang/Enum;
.source "VolumeInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Conditions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_AUTO_MUTE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_BIXBY_SERVICE_FOREGROUND:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_BIXBY_SERVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_BLUETOOTH_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_KEYGUARD_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_KIOSK_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_LCD_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_SCREEN_SHARING:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_SHADE_LOCKED_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_SMART_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_STANDALONE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_USER_IN_CALL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_VALID_PLAYER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_ZEN_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum IS_ZEN_MODE_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

.field public static final enum SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v1, 0x0

    const-string v2, "IS_LCD_OFF"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_LCD_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 42
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v2, 0x1

    const-string v3, "IS_VOICE_CAPABLE"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 43
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v3, 0x2

    const-string v4, "IS_MEDIA_DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 44
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v4, 0x3

    const-string v5, "IS_SCREEN_SHARING"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SCREEN_SHARING:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 45
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v5, 0x4

    const-string v6, "IS_DUAL_PLAY_MODE"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 46
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v6, 0x5

    const-string v7, "IS_AUTO_MUTE"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUTO_MUTE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 47
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v7, 0x6

    const-string v8, "IS_SAFE_MEDIA_VOLUME_DEVICE_ON"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 48
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/4 v8, 0x7

    const-string v9, "IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 49
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v9, 0x8

    const-string v10, "HAS_VIBRATOR"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 50
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v10, 0x9

    const-string v11, "IS_KEYGUARD_STATE"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KEYGUARD_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 51
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v11, 0xa

    const-string v12, "IS_SHADE_LOCKED_STATE"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SHADE_LOCKED_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 52
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v12, 0xb

    const-string v13, "IS_ALL_SOUND_OFF"

    invoke-direct {v0, v13, v12}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 53
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v13, 0xc

    const-string v14, "IS_BLUETOOTH_SCO_ON"

    invoke-direct {v0, v14, v13}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BLUETOOTH_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 54
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v14, 0xd

    const-string v15, "IS_USER_IN_CALL"

    invoke-direct {v0, v15, v14}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_USER_IN_CALL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 55
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v15, 0xe

    const-string v14, "IS_KIOSK_MODE_ENABLED"

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KIOSK_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 56
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_BIXBY_SERVICE_ON"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 57
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_BIXBY_SERVICE_FOREGROUND"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_FOREGROUND:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 58
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_SMART_VIEW"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SMART_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 59
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_DLNA_ENABLED"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 60
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_AUDIO_DLNA_ENABLED"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 61
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "SUPPORT_TV_VOLUME_CONTROL"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 62
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_STANDALONE"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_STANDALONE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 63
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_ZEN_MODE_ENABLED"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 64
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_ZEN_MODE_PRIORITY_ONLY"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 65
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_VALID_PLAYER_TYPE"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VALID_PLAYER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 66
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_ORIENTATION_CHANGED"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 67
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const-string v14, "IS_DENSITY_OR_FONT_CHANGED"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    .line 40
    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_LCD_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VOICE_CAPABLE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_MEDIA_DEFAULT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SCREEN_SHARING:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DUAL_PLAY_MODE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUTO_MUTE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SAFE_MEDIA_VOLUME_PIN_DEVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->HAS_VIBRATOR:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KEYGUARD_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SHADE_LOCKED_STATE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ALL_SOUND_OFF:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BLUETOOTH_SCO_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_USER_IN_CALL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_KIOSK_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_ON:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_BIXBY_SERVICE_FOREGROUND:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_SMART_VIEW:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_AUDIO_DLNA_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->SUPPORT_TV_VOLUME_CONTROL:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_STANDALONE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ZEN_MODE_PRIORITY_ONLY:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_VALID_PLAYER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_ORIENTATION_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->IS_DENSITY_OR_FONT_CHANGED:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;
    .locals 1

    .line 40
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Conditions;

    return-object v0
.end method
