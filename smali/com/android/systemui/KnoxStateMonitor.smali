.class public final Lcom/android/systemui/KnoxStateMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;,
        Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/KnoxStateMonitor;


# instance fields
.field private final DEBUG:Z

.field private final mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/KnoxStateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

.field private mContext:Landroid/content/Context;

.field private mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

.field private mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

.field private final mHandler:Landroid/os/Handler;

.field private mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

.field private mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

.field private mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/KnoxStateMonitor;->DEBUG:Z

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$1;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$2;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/KnoxStateMonitor$2;-><init>(Lcom/android/systemui/KnoxStateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    .line 142
    sput-object p0, Lcom/android/systemui/KnoxStateMonitor;->sInstance:Lcom/android/systemui/KnoxStateMonitor;

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpKnoxClass()V

    .line 148
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->initKnoxClass()V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/systemui/-$$Lambda$KnoxStateMonitor$ArmpDHuGLD07_DGAEQ46k2ENkj0;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$KnoxStateMonitor$ArmpDHuGLD07_DGAEQ46k2ENkj0;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/KnoxStateMonitor;)Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockTypeOverride()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtons()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelEdit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelUnavailableButtons()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarText()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarIcons()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarBatteryColour()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateStatusBarHidden()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateNavigationBarHidden()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/KnoxStateMonitor;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateKnoxKeyguardState(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateContainerKioskmode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDisableDeviceWhenReachMaxFailed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateQuickPanelButtonUsers()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableMDMWallpaper()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateAdminLock()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/KnoxStateMonitor;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleSetHardKeyIntentState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handleDoKeyguard(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleDPMPasswordChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleEnableUCMLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaStateChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/KnoxStateMonitor;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->handlePersonaLaunch(I)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui/KnoxStateMonitor;)Landroid/content/Context;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleRCPPolicyChange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->handleUpdateLockscreenHiddenItems()V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/KnoxStateMonitor;
    .locals 1

    .line 171
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    return-object v0

    .line 174
    :cond_0
    sget-object v0, Lcom/android/systemui/KnoxStateMonitor;->sInstance:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    :goto_0
    return-object v0
.end method

.method private handleDPMPasswordChanged()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleDPMPasswordChanged"

    .line 339
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDPMPasswordChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDisableDeviceWhenReachMaxFailed()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleDisableDeviceWhenReachMaxFailed"

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDisableDeviceWhenReachMaxFailed()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDoKeyguard(I)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDoKeyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onDoKeyguard(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableMDMWallpaper()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleEnableMDMWallpaper"

    .line 533
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 534
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableMDMWallpaper()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEnableUCMLock()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleEnableUCMLock"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onEnableUCMLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaLaunch(I)V
    .locals 2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePersonaLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaLaunch(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePersonaStateChange()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handlePersonaStateChange"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onPersonaStateChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRCPPolicyChange()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleRCPPolicyChange"

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onRCPPolicyChange()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSetHardKeyIntentState(Z)V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleSetHardKeyIntentState"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 554
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 557
    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onSetHardKeyIntentState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateAdminLock()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateAdminLock"

    .line 543
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 544
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateAdminLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateContainerKioskmode()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateContainerKioskmode"

    .line 513
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateContainerKioskmode()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateKnoxKeyguardState(Z)V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateKnoxKeyguardState"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1, p1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateKnoxKeyguardState(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockTypeOverride()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateLockTypeOverride"

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockTypeOverride()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateLockscreenHiddenItems()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateLockscreenHiddenItems"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateLockscreenHiddenItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateNavigationBarHidden()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateNavigationBarHidden"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateNavigationBarHidden()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtonUsers()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelButtonUsers"

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtonUsers()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelButtons()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelButtons"

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelButtons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelEdit()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelEdit"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelEdit()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelItems()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelItems"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 443
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelItems()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateQuickPanelUnavailableButtons()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateQuickPanelUnavailableButtons"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 453
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateQuickPanelUnavailableButtons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarBatteryColour()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarBatteryColour"

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 483
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarBatteryColour()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarHidden()V
    .locals 5

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateStatusBarHidden() - mCallbacks.size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 493
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarHidden()V

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "         -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarIcons()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarIcons"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarIcons()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUpdateStatusBarText()V
    .locals 2

    const-string v0, "KnoxStateMonitor"

    const-string v1, "handleUpdateStatusBarText"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitorCallback;->onUpdateStatusBarText()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initKnoxClass()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->init()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->init()V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->init()V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->init()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->init()V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->init()V

    return-void
.end method

.method private setUpIntentReceiver()V
    .locals 2

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.knox.keyguard.show"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ucs.ucsservice.stateblocked"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setUpKnoxClass()V
    .locals 1

    .line 178
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    .line 179
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    .line 180
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    .line 181
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    .line 182
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    .line 183
    new-instance v0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    invoke-direct {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;-><init>(Lcom/android/systemui/KnoxStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mUcmMonitor:Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    return-void
.end method


# virtual methods
.method public checkSdpCondition(I)Z
    .locals 0

    .line 2900
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSdpMonitor:Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$SdpMonitor;->isSdpSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "CustomSdkMonitor state:"

    .line 592
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomLockScreenHiddenItems="

    .line 593
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomLockScreenOverrideMode="

    .line 594
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomUnlockSimOnBootState="

    .line 595
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mUnlockSimPin="

    .line 596
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$2900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomQuickPanelButtons="

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mKnoxCustomQuickPanelButtonUsers="

    .line 598
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mKnoxCustomQuickPanelEditMode="

    .line 599
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mQuickPanelItems="

    .line 600
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mQuickPanelUnavailableButtons="

    .line 601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mKnoxCustomDoubleTapState="

    .line 602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mStatusBarText="

    .line 603
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mStatusBarMode="

    .line 604
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextStyle="

    .line 605
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextSize="

    .line 606
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$3900(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarTextWidth="

    .line 607
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4000(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarIconsState="

    .line 608
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4100(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 609
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "-mBatteryLevelColourItem="

    .line 610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4200(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "-mBatteryLevelColourItem=null"

    .line 612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string p1, "-mHideNotificationMessages="

    .line 614
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4300(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mStatusBarNotificationsState="

    .line 615
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4400(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mChargerConnectionSoundEnabledState="

    .line 616
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4500(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mVolumePanelEnabledState="

    .line 617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4600(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsCustomSdkStatusBarHidden="

    .line 618
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4700(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mHardKeyIntentState="

    .line 619
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->access$4800(Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "ContainerMonitor state:"

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mIsContainerKioskMode="

    .line 623
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$4900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "EdmMonitor state:"

    .line 626
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mIsStatusBarHidden="

    .line 627
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsNavigationBarHidden="

    .line 628
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsMDMKioskMode="

    .line 629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWipeExcludeExternalStorage="

    .line 630
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mLockDelay="

    .line 631
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mMaxNumFailedAttemptForDisable="

    .line 632
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mIsDeviceDisableForMaxFailedAttempt="

    .line 633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mPwdChangeRequest="

    .line 634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mSettingsChangesAllowed="

    .line 635
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mStatusBarExpandAllowed="

    .line 636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$5900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mAirplaneModeAllowed="

    .line 637
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mCellularDataAllowed="

    .line 638
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mNFCAllowed="

    .line 639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiTetheringAllowed="

    .line 640
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mBluetoothAllowed="

    .line 641
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mNFCStateChangeAllowed="

    .line 642
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6500(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiStateChangeAllowed="

    .line 643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6600(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiAllowed="

    .line 644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6700(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mLocationProviderAllowed="

    .line 645
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6800(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "-mGPSStateChangeAllowed="

    .line 646
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$6900(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsLockscreenInvisibleOverlayConfigured="

    .line 647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$7000(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsLockscreenWallpaperConfigured="

    .line 648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$7100(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mMultiFactorAuthEnabled="

    .line 649
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$7200(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsCameraDisabledByMdm="

    .line 650
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$7300(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsFaceRecognitionAllowedEvenCameraBlocked="

    .line 651
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->access$7400(Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "SharedDeviceMonitor state:"

    .line 654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-getSharedDeviceStatus()="

    .line 655
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "mCallback size="

    .line 658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p1, 0x0

    .line 659
    :goto_1
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 660
    iget-object p3, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/KnoxStateMonitorCallback;

    if-eqz p3, :cond_1

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public filterOutForKnoxContainer(ILjava/lang/String;Z)Z
    .locals 0

    .line 2475
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;
    .locals 0

    .line 2598
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2602
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxName(I)Ljava/lang/String;
    .locals 0

    .line 2509
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2513
    :cond_0
    invoke-static {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$9100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockDelay()I
    .locals 0

    .line 2739
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2743
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getLockDelay()I

    move-result p0

    return p0
.end method

.method public getQuickPanelItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2537
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2541
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getQuickPanelItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getQuickPanelUnavailableButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2545
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2549
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getQuickPanelUnavailableButtons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 0

    .line 2558
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2561
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatusBarTextSize()I
    .locals 0

    .line 2576
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2580
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextSize()I

    move-result p0

    return p0
.end method

.method public getStatusBarTextStyle()I
    .locals 0

    .line 2565
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2569
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextStyle()I

    move-result p0

    return p0
.end method

.method public getStatusBarTextWidth()I
    .locals 0

    .line 2587
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2590
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getStatusBarTextWidth()I

    move-result p0

    return p0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 0

    .line 2690
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2693
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->getUnlockSimPin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAdminLockEnabled()Z
    .locals 0

    .line 2962
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isAdminLockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 0

    .line 2747
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isAirplaneModeTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlockedEdmSettingsChange()Z
    .locals 1

    .line 2850
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 0

    .line 2779
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBlueLightFilterTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 0

    .line 2751
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBluetoothTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBrightnessBlocked()Z
    .locals 0

    .line 2795
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isBrightnessBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBrightnessControllerEnabled()Z
    .locals 0

    .line 2517
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isBrightnessControllerEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCellularDataAllowed()Z
    .locals 0

    .line 2705
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isCellularDataAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChargerConnectionSoundEnabledState()Z
    .locals 0

    .line 2888
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContainerKioskMode()Z
    .locals 0

    .line 2487
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8700(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 0

    .line 2721
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisableDeviceByMultifactor()Z
    .locals 2

    .line 2943
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDisableDeviceByMultifactor( = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 2945
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    .line 2944
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricsOptionEnabledforMultiFactor()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDndTileBlocked()Z
    .locals 0

    .line 2787
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isDndTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFaceRecognitionDisabledByMdm()Z
    .locals 1

    .line 2735
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isCameraDisabledByMdm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isFaceRecognitionAllowedEvenCameraBlocked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 0

    .line 2799
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isFlashlightTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z
    .locals 6

    .line 2470
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLegacyContainer(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 2494
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2495
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2496
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isMyKnox()Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2497
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLicenseExpired()Z
    .locals 0

    .line 2966
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLicenseExpired()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocationTileBlocked()Z
    .locals 0

    .line 2771
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isLocationTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 1

    .line 2643
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    .line 2644
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    .line 2645
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    .line 2646
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLockScreenDisabledbyKNOXForBoot()Z
    .locals 6

    .line 2657
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2659
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v3

    .line 2665
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "shared_device_status"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_3

    :cond_2
    move v0, v3

    .line 2673
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method public isLockscreenAllDisabled()Z
    .locals 0

    .line 2639
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenAllDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenBatteryInfoEnabled()Z
    .locals 0

    .line 2623
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenClockEnabled()Z
    .locals 0

    .line 2627
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenClockEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenDateEnabled()Z
    .locals 0

    .line 2631
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenDateEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenHelpTextEnabled()Z
    .locals 0

    .line 2619
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenHelpTextEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockscreenOwnerInfoEnabled()Z
    .locals 0

    .line 2635
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 0

    .line 2858
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMDMWallpaperEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 0

    .line 2759
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMobileDataTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 0

    .line 2936
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isMultifactorAuthEnforced()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2937
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isLock2StepVerificationEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNavigationBarHidden()Z
    .locals 0

    .line 2701
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isNavigationBarHidden()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedtoSetupAirplaneModeTileDialog()Z
    .locals 1

    .line 2862
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mSharedDeviceMonitor:Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 2

    .line 2606
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    .line 2607
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 0

    .line 2952
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isPasswordVisibilityEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPersona(I)Z
    .locals 1

    .line 2461
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isPwdChangeRequested()Z
    .locals 0

    .line 2896
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->getPwdChangeRequest()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQuickSettingEditEnabled()Z
    .locals 0

    .line 2525
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isQuickSettingEditEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 0

    .line 2775
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isRotationLockTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSetToSwipeLock()Z
    .locals 0

    .line 2682
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isSetToSwipeLock()Z

    move-result p0

    return p0
.end method

.method public isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z
    .locals 0

    .line 2483
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 0

    .line 2783
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSoundModeTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarDoubleTapEnabled()Z
    .locals 0

    .line 2533
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 1

    .line 2697
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isStatusBarHidden()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStatusBarIconsEnabled()Z
    .locals 0

    .line 2594
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isStatusBarIconsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubIdLockedByMDM()Z
    .locals 0

    .line 2932
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isSubIdLockedByAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnlockSimOnBootState()Z
    .locals 0

    .line 2686
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUnlockSimOnBootState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserMobileDataRestricted()Z
    .locals 0

    .line 2763
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isUserMobileDataRestricted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserWifiHotspotRestricted()Z
    .locals 0

    .line 2826
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isUserWifiHotspotRestricted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUsersEnabled()Z
    .locals 0

    .line 2529
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isUsersEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVolumeDialogEnabled()Z
    .locals 0

    .line 2892
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCustomSdkMonitor:Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$CustomSdkMonitor;->isVolumePanelEnabledState()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 0

    .line 2822
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiHotspotTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiTileBlocked()Z
    .locals 0

    .line 2830
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->isWifiTileBlocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public knoxContainerInSuperLockMode(I)Z
    .locals 0

    .line 2465
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContainerMonitor:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$KnoxStateMonitor()V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->initKnoxClass()V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor;->setUpIntentReceiver()V

    return-void
.end method

.method public lockSdp()V
    .locals 3

    .line 2904
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 2905
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const-string v1, "KnoxStateMonitor"

    if-eqz v0, :cond_0

    const-string v0, "lockSdp :: Device Owner has been locked"

    .line 2906
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2910
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2913
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockSdp :: Maybe keyguard shown as user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 3

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback() callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 578
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const-string p0, "removeCallback() mCallbacks has same callback"

    .line 580
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V
    .locals 3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback() callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const-string v2, "removeCallback() mCallbacks has same callback"

    .line 566
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v2, p0, Lcom/android/systemui/KnoxStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAdminLock(ZZ)V
    .locals 0

    .line 2956
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    .line 2957
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->setAdminLock(ZZ)V

    :cond_0
    return-void
.end method

.method public unlockSdp(Z)V
    .locals 2

    .line 2918
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    .line 2919
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const-string v1, "KnoxStateMonitor"

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "unlockSdp :: Device Owner has been authenticated with biometrics"

    .line 2920
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2924
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2927
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlockSdp :: Maybe keyguard hidden as user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 0

    .line 2725
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor;->mEdmMonitor:Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;

    if-eqz p0, :cond_0

    .line 2726
    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    :cond_0
    return-void
.end method
