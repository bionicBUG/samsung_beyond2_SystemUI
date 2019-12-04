.class public Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;
.super Ljava/lang/Object;
.source "TimeTravelDebugActionTrigger.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependency;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mObservers:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;

    .line 24
    iget-object p1, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;

    const-class v0, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 38
    invoke-interface {p2, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 16
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public handleActionString(Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    const-class v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    new-instance v1, Lcom/android/systemui/volume/testinfra/-$$Lambda$TimeTravelDebugActionTrigger$5h9l2v3rrgg2Jl_cX24eoF5tXxU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/testinfra/-$$Lambda$TimeTravelDebugActionTrigger$5h9l2v3rrgg2Jl_cX24eoF5tXxU;-><init>(Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$handleActionString$0$TimeTravelDebugActionTrigger(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/testinfra/TimeTravelDebugActionTrigger;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
