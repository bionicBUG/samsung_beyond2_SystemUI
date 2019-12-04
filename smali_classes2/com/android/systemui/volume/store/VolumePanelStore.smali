.class public Lcom/android/systemui/volume/store/VolumePanelStore;
.super Ljava/lang/Object;
.source "VolumePanelStore.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObservable;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObservable<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction;",
        ">;"
    }
.end annotation


# instance fields
.field public mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field private mIsWorking:Z

.field private final mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

.field private mMiddlewares:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;",
            ">;"
        }
    .end annotation
.end field

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 38
    new-instance v0, Lcom/android/systemui/volume/reducer/VolumePanelReducer;

    invoke-direct {v0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/JSonLogger;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/JSonLogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/DeviceStateController;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/DeviceStateController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/AudioManagerController;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/AudioManagerController;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/SmartViewInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/SmartViewInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/BluetoothInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/BluetoothInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/BixbyServiceInteractor;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/middleware/SALogger;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/middleware/SALogger;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v0, Lcom/android/systemui/volume/util/LogWrapper;

    invoke-interface {p1, v0}, Lcom/android/systemui/volume/VolumeDependencyBase;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/util/LogWrapper;

    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    return-void
.end method

.method static synthetic lambda$onChanged$0(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;)V
    .locals 0

    .line 91
    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->applyState(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 1

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    .line 63
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 64
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeObserver;->onChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;Z)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    return-void
.end method

.method public onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V
    .locals 7

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mIsWorking:Z

    if-nez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] with ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecVolumeStore"

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/volume/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;

    .line 82
    invoke-interface {p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumeMiddleware;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  > New Action : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/android/systemui/volume/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    move-object p1, v4

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mReducer:Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;

    iget-object v1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-interface {v0, p1, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelReducerBase;->reduce(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mMiddlewares:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/volume/store/-$$Lambda$VolumePanelStore$tWi4WPK5up767oHiq9qo9lnYFG8;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/store/-$$Lambda$VolumePanelStore$tWi4WPK5up767oHiq9qo9lnYFG8;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_NO_DISPATCH:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/store/VolumePanelStore;->dispatch(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_1

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mCurrentState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 99
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mLogWrapper:Lcom/android/systemui/volume/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  > New State : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/volume/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_3
    new-instance p0, Lcom/android/systemui/volume/DispatchException;

    const-string p1, "use handler!!"

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/DispatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/store/VolumePanelStore;->onChanged(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)V

    return-void
.end method

.method public subscribe(Lcom/samsung/systemui/splugins/volume/VolumeObserver;)Lcom/samsung/systemui/splugins/volume/VolumeDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
            ">;)",
            "Lcom/samsung/systemui/splugins/volume/VolumeDisposable;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    iget-object p0, p0, Lcom/android/systemui/volume/store/VolumePanelStore;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;-><init>(Ljava/util/ArrayList;Lcom/samsung/systemui/splugins/volume/VolumeObserver;)V

    return-object v0
.end method
