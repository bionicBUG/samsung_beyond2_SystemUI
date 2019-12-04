.class public Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;
.super Ljava/lang/Object;
.source "VolumeUnsubscriber.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;>;",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mHandler:Landroid/os/Handler;

    .line 15
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObservers:Ljava/util/ArrayList;

    .line 16
    iput-object p2, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObservers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/-$$Lambda$VolumeUnsubscriber$v2ajb8vSXYufouW8cfz8l0NCDXk;

    invoke-direct {v1, p0}, Lcom/samsung/systemui/splugins/volume/-$$Lambda$VolumeUnsubscriber$v2ajb8vSXYufouW8cfz8l0NCDXk;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$dispose$0$VolumeUnsubscriber()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObservers:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->mObserver:Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
