.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

.field public static final enum ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const/4 v1, 0x0

    const-string v2, "ACTIVE_STREAM"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    .line 24
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const/4 v2, 0x1

    const-string v3, "RINGER_MODE_INTERNAL"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    .line 25
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const/4 v3, 0x2

    const-string v4, "ZEN_MODE"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    .line 22
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->RINGER_MODE_INTERNAL:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->ZEN_MODE:Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
    .locals 1

    .line 22
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;

    return-object v0
.end method
