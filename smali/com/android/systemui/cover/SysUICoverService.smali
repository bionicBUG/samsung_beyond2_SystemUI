.class public Lcom/android/systemui/cover/SysUICoverService;
.super Lcom/samsung/android/cover/SemCoverService;
.source "SysUICoverService.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/cover/SemCoverService;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/cover/PluginViewCover;",
        ">;",
        "Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SysUICoverService"


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field private mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAttached:Z

.field private mIsCoverAppCovered:Z

.field private mIsNeedSleepToken:Z

.field private mPlugin:Z

.field private mPluginContext:Landroid/content/Context;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private mUpdateCoverWindowLpTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/cover/SemCoverService;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$PH528UjvgCoY_D2027eC1zV0jd0;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/-$$Lambda$SysUICoverService$PH528UjvgCoY_D2027eC1zV0jd0;-><init>(Lcom/android/systemui/cover/SysUICoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mUpdateCoverWindowLpTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    .line 62
    new-instance v0, Lcom/android/systemui/cover/SysUICoverService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/SysUICoverService$1;-><init>(Lcom/android/systemui/cover/SysUICoverService;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/cover/SysUICoverService;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/cover/SysUICoverService;Lcom/samsung/android/cover/CoverState;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/SysUICoverService;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/cover/SysUICoverService;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->updatePluginListener()V

    return-void
.end method

.method private getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/samsung/android/cover/SemCoverService;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 305
    check-cast p1, Lcom/android/systemui/SystemUIApplication;

    .line 306
    const-class v0, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {p1, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/cover/CoverHost;

    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    return-object p0
.end method

.method private isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1

    .line 312
    iget p0, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private startCover()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverWindowDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    iget-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {v1}, Lcom/android/systemui/cover/CoverWindowDelegate;->attach()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onCoverAttached(Landroid/view/ViewGroup;Lcom/samsung/android/cover/CoverState;)V

    .line 274
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    :cond_1
    return-void
.end method

.method private stopCover()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onCoverDetached()V

    .line 281
    iput-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->detach()V

    .line 285
    iput-object v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    :cond_1
    return-void
.end method

.method private updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 291
    sget-object p0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCoverWindowLp: CS is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 295
    :cond_0
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsNeedSleepToken:Z

    .line 297
    iget-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/cover/SysUICoverService;->mUpdateCoverWindowLpTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mUpdateCoverWindowLpTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePluginListener()V
    .locals 3

    .line 257
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    .line 258
    iget-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 260
    iput-boolean v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    :cond_0
    if-eqz v0, :cond_1

    .line 263
    const-class v1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SysUICoverService()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    if-nez v0, :cond_0

    .line 39
    sget-object p0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateCoverWindowLp: CWD is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    sget-object p0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateCoverWindowLp: lp is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverWindowDelegate:Lcom/android/systemui/cover/CoverWindowDelegate;

    invoke-virtual {p0, v0}, Lcom/android/systemui/cover/CoverWindowDelegate;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/cover/SemCoverService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)I
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 181
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAppCovered() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    .line 184
    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->onCoverAppCovered(Z)I

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onCoverAppCovered: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onCoverAppCovered(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/cover/SysUICoverService;->updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/16 p0, 0x10

    goto :goto_1

    :cond_3
    const/16 p0, 0x20

    :goto_1
    return p0
.end method

.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAttached() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/cover/SysUICoverService;->isUseCoverPlugin(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 110
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    if-eqz v0, :cond_1

    .line 112
    const-class v2, Lcom/android/systemui/plugins/cover/PluginViewCover;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v2, v3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 113
    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    .line 116
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 119
    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    .line 120
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 121
    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 124
    :cond_2
    sget-object p1, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v0, "onCoverAttached: CoverHost is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->startCover()V

    return-void
.end method

.method public onCoverDetached()V
    .locals 3

    .line 131
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 135
    iget-object v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v2, "onCoverDetached: CoverHost is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->stopCover()V

    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsAttached:Z

    .line 141
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    .line 142
    iget-boolean v2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 145
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/cover/SysUICoverService;->mPlugin:Z

    .line 146
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onCoverStateUpdated need to register mScreenLifecycle.Observer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 161
    :cond_1
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateUpdated() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 164
    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/cover/CoverHost;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onCoverStateUpdated: CoverHost is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz v0, :cond_3

    .line 171
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onCoverStateUpdated(Lcom/samsung/android/cover/CoverState;)V

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mIsCoverAppCovered:Z

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/cover/SysUICoverService;->updateCoverWindowLp(Lcom/samsung/android/cover/CoverState;Z)V

    :cond_3
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onCreate()V

    .line 75
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p0}, Lcom/android/systemui/cover/SysUICoverService;->getHost(Lcom/android/systemui/cover/SysUICoverService;)Lcom/android/systemui/cover/CoverHost;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    sget-object p0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v0, "onCreate() fail to get CoverHost"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 88
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/cover/SemCoverService;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/cover/SysUICoverService;->onPluginConnected(Lcom/android/systemui/plugins/cover/PluginViewCover;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/cover/PluginViewCover;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onPluginConnected() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object p1, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    .line 213
    iput-object p2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPluginContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/cover/SysUICoverService;->mPluginContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/doze/PluginAODManager;->setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginViewCover;)V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/cover/SysUICoverService;->startCover()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenInternalTurningOff()V
    .locals 2

    .line 250
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onScreenInternalTurningOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 252
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onScreenInternalTurningOff()V

    :cond_0
    return-void
.end method

.method public onScreenInternalTurningOn()V
    .locals 2

    .line 242
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onScreenInternalTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onScreenInternalTurningOn()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 234
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 236
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 2

    .line 226
    sget-object v0, Lcom/android/systemui/cover/SysUICoverService;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurningOn() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/android/systemui/cover/SysUICoverService;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginViewCover;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0}, Lcom/android/systemui/plugins/cover/PluginViewCover;->onScreenTurningOn()V

    :cond_0
    return-void
.end method
