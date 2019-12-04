.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
.super Ljava/lang/Enum;
.source "VolumeInfraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public static final enum TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 71
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v1, 0x0

    const-string v2, "BT_SCO_DEVICE_NAME"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 72
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v2, 0x1

    const-string v3, "SMART_VIEW_DEVICE_NAME"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 73
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v3, 0x2

    const-string v4, "ACTIVE_BT_DEVICE_NAME"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 74
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v4, 0x3

    const-string v5, "PIN_DEVICE"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 75
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v5, 0x4

    const-string v6, "EAR_PROTECT_LIMIT"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 76
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v6, 0x5

    const-string v7, "SYSTEM_TIME"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 77
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v7, 0x6

    const-string v8, "TIMEOUT_CONTROLS"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 78
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/4 v8, 0x7

    const-string v9, "TIMEOUT_CONTROLS_TEXT"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 79
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v9, 0x8

    const-string v10, "PIN_APP_NAME"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 80
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v10, 0x9

    const-string v11, "PIN_DEVICE_NAME"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 81
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v11, 0xa

    const-string v12, "DEVICES_FOR_STREAM_MUSIC"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 82
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v12, 0xb

    const-string v13, "MUSIC_FINE_VOLUME"

    invoke-direct {v0, v13, v12}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 83
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v13, 0xc

    const-string v14, "CUTOUT_HEIGHT"

    invoke-direct {v0, v14, v13}, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 70
    sget-object v14, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->EAR_PROTECT_LIMIT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->SYSTEM_TIME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->TIMEOUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->DEVICES_FOR_STREAM_MUSIC:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    aput-object v1, v0, v13

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
    .locals 1

    .line 70
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;
    .locals 1

    .line 70
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    return-object v0
.end method
