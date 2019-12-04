.class public Lcom/android/systemui/doze/AODUi;
.super Lcom/android/systemui/doze/DozeUi;
.source "AODUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeWindow;


# instance fields
.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 18
    new-instance p2, Lcom/android/systemui/doze/AODUi$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/doze/AODUi$1;-><init>(Lcom/android/systemui/doze/AODUi;)V

    iput-object p2, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 33
    const-class p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p2, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 34
    iget-object p2, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p3, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p2, p3}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    .line 37
    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeUi;->mNeedScreenOff:Z

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    goto :goto_0

    .line 40
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeUi;->mNeedScreenOff:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    .line 44
    :goto_0
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/doze/PluginAODManager;->isSameOrientation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p3}, Lcom/android/systemui/doze/DozeHost;->setDisplayBlanking(Z)V

    goto :goto_1

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p4}, Lcom/android/systemui/doze/DozeHost;->setDisplayBlanking(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v1, Lcom/android/systemui/doze/-$$Lambda$AODUi$FjA8ZiW7Al_Eev-iaOTrLzomQis;->INSTANCE:Lcom/android/systemui/doze/-$$Lambda$AODUi$FjA8ZiW7Al_Eev-iaOTrLzomQis;

    invoke-interface {p0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/systemui/doze/DozeUi;->transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 54
    sget-object p1, Lcom/android/systemui/doze/AODUi$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/doze/AODUi;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateWindowLayoutParams()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->updateAODWindowLayoutParams()V

    return-void
.end method
