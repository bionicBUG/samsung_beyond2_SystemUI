.class public Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;
.super Ljava/lang/Object;
.source "VolumeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeState;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    .line 49
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$000(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$002(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/List;)Ljava/util/List;

    .line 50
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$100(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$102(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 51
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$200(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$202(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p0
.end method

.method public setEnabled(Lcom/samsung/systemui/splugins/volume/VolumeState$BooleanStateKey;Z)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$100(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumeState$IntegerStateKey;I)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$200(Lcom/samsung/systemui/splugins/volume/VolumeState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setStreamStates(Ljava/util/List;)Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumeStreamState;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeState$Builder;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    invoke-static {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeState;->access$002(Lcom/samsung/systemui/splugins/volume/VolumeState;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
