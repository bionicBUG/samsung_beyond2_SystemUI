.class public final enum Lcom/android/systemui/statusbar/IndicationEventType;
.super Ljava/lang/Enum;
.source "IndicationEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/IndicationEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_DEFAULT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

.field public static final enum UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;


# instance fields
.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "EMPTY_LOW"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v3, 0x14

    const-string v4, "LEGACY_DEFAULT"

    invoke-direct {v0, v4, v1, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_DEFAULT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v4, 0x2

    const-string v5, "BATTERY_RESTING"

    invoke-direct {v0, v5, v4, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v3, 0x19

    const/4 v5, 0x3

    const-string v6, "RESTING"

    invoke-direct {v0, v6, v5, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v6, 0x4

    const-string v7, "UNLOCK_GUIDE"

    invoke-direct {v0, v7, v6, v3}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v3, 0x5

    const-string v7, "BATTERY"

    const/16 v8, 0x28

    invoke-direct {v0, v7, v3, v8}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v7, 0x6

    const-string v8, "EMPTY_HIGH"

    const/16 v9, 0x2d

    invoke-direct {v0, v8, v7, v9}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v8, 0x7

    const-string v9, "LEGACY_TRANSIENT"

    invoke-direct {v0, v9, v8, v2}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v9, 0x8

    const-string v10, "NOTI_GUIDE"

    const/16 v11, 0x32

    invoke-direct {v0, v10, v9, v11}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v10, 0x9

    const-string v11, "BIOMETRICS_HELP"

    const/16 v12, 0x3c

    invoke-direct {v0, v11, v10, v12}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v11, 0xa

    const-string v12, "TRUST_AGENT_ERROR"

    const/16 v13, 0x41

    invoke-direct {v0, v12, v11, v13}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v12, 0xb

    const-string v13, "BIOMETRICS_COOLDOWN"

    const/16 v14, 0x55

    invoke-direct {v0, v13, v12, v14}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v13, 0xc

    const-string v14, "PPP_COOLDOWN"

    const/16 v15, 0x5a

    invoke-direct {v0, v14, v13, v15}, Lcom/android/systemui/statusbar/IndicationEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/statusbar/IndicationEventType;

    .line 19
    sget-object v14, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v14, v0, v2

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_DEFAULT:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 19
    const-class v0, Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/IndicationEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/IndicationEventType;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->$VALUES:[Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/IndicationEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/IndicationEventType;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/statusbar/IndicationEventType;->mPriority:I

    return p0
.end method
