.class public Lcom/samsung/systemui/splugins/volume/VolumeStreamState;
.super Ljava/lang/Object;
.source "VolumeStreamState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumeStreamState$Builder;,
        Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;
    }
.end annotation


# instance fields
.field private mBool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStream:I

.field private mString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mBool:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mInt:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mString:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mStream:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mStream:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mBool:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mBool:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mInt:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mInt:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mString:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mString:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$IntegerStateKey;)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mInt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mInt:Ljava/util/HashMap;

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

.method public getStreamType()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mStream:I

    return p0
.end method

.method public getStringValue(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$StringStateKey;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mString:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mString:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isEnabled(Lcom/samsung/systemui/splugins/volume/VolumeStreamState$BooleanStateKey;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mBool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->mBool:Ljava/util/HashMap;

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
