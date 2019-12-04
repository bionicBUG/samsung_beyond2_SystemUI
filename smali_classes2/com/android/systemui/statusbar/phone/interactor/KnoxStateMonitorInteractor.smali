.class public Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;
.super Ljava/lang/Object;
.source "KnoxStateMonitorInteractor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/interactor/Interactor;


# instance fields
.field mHardKeyIntentCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field mNavbarHiddenCallBack:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor$1;-><init>(Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 35
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mKnoxStateMonitorCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 0

    .line 40
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isNavigationBarHidden()Z

    move-result p0

    return p0
.end method

.method public setHardKeyIntentCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mHardKeyIntentCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public setNavbarHiddenCallBack(Ljava/lang/Runnable;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;->mNavbarHiddenCallBack:Ljava/lang/Runnable;

    return-void
.end method
