.class public final enum Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

.field public static final enum MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const/4 v1, 0x0

    const-string v2, "LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 21
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const/4 v2, 0x1

    const-string v3, "MIN"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 22
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const/4 v3, 0x2

    const-string v4, "MAX"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    .line 19
    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    aput-object v4, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MIN:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->MAX:Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
    .locals 1

    .line 19
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;

    return-object v0
.end method
