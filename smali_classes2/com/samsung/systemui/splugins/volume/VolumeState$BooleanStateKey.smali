.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

.field public static final enum REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v1, 0x0

    const-string v2, "FIXED_SCO_VOLUME"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 14
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v2, 0x1

    const-string v3, "IS_DUAL_AUDIO"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 15
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v3, 0x2

    const-string v4, "IS_FROM_KEY"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 16
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v4, 0x3

    const-string v5, "DISALLOW_RINGER"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 17
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v5, 0x4

    const-string v6, "DISALLOW_SYSTEM"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 18
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v6, 0x5

    const-string v7, "DISALLOW_MEDIA"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 19
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v7, 0x6

    const-string v8, "REMOTE_MIC"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    .line 12
    sget-object v8, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->FIXED_SCO_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v8, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_DUAL_AUDIO:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->IS_FROM_KEY:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_RINGER:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_SYSTEM:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->DISALLOW_MEDIA:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->REMOTE_MIC:Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;

    return-object v0
.end method
