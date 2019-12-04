.class public Lcom/samsung/systemui/splugins/volume/VolumeState;
.super Ljava/lang/Object;
.source "VolumeState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;,
        Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;
    }
.end annotation


# instance fields
.field private mBool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mBool:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mInt:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/List;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mStreamStates:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mStreamStates:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mBool:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mBool:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mInt:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mInt:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;)I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mInt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mInt:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getStreamStates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mStreamStates:Ljava/util/List;

    return-object p0
.end method

.method public isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mBool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState;->mBool:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
