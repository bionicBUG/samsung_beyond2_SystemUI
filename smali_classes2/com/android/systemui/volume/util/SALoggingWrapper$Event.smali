.class public final enum Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
.super Ljava/lang/Enum;
.source "SALoggingWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/util/SALoggingWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/util/SALoggingWrapper$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

.field public static final enum VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v1, 0x0

    const-string v2, "EXPAND"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 9
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v2, 0x1

    const-string v3, "SHRINK"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 10
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v3, 0x2

    const-string v4, "MEDIA_DEFAULT_ON"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 11
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v4, 0x3

    const-string v5, "MEDIA_DEFAULT_OFF"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 12
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v5, 0x4

    const-string v6, "SAFETY_CANCEL"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 13
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v6, 0x5

    const-string v7, "SAFETY_OK"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 14
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v7, 0x6

    const-string v8, "VOLUME_LIMITER_SETTING"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 15
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/4 v8, 0x7

    const-string v9, "VOLUME_LIMITER_CANCEL"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 16
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v9, 0x8

    const-string v10, "VOLUME_KEY"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 17
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v10, 0x9

    const-string v11, "FINE_CONTROL_RINGTONE"

    invoke-direct {v0, v11, v10}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 18
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v11, 0xa

    const-string v12, "FINE_CONTROL_NOTIFICATION"

    invoke-direct {v0, v12, v11}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 19
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v12, 0xb

    const-string v13, "FINE_CONTROL_MEDIA"

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 20
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v13, 0xc

    const-string v14, "FINE_CONTROL_SYSTEM"

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 21
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v14, 0xd

    const-string v15, "FINE_CONTROL_BIXBY"

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 22
    new-instance v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v15, 0xe

    const-string v14, "FINE_CONTROL_ACCESSIBILITY"

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    .line 7
    sget-object v14, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->EXPAND:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SHRINK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_ON:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->MEDIA_DEFAULT_OFF:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->SAFETY_OK:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_SETTING:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_LIMITER_CANCEL:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->VOLUME_KEY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_RINGTONE:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_NOTIFICATION:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_MEDIA:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_SYSTEM:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_BIXBY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->FINE_CONTROL_ACCESSIBILITY:Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    aput-object v1, v0, v15

    sput-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    .line 7
    const-class v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;
    .locals 1

    .line 7
    sget-object v0, Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->$VALUES:[Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/util/SALoggingWrapper$Event;

    return-object v0
.end method
