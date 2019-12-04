.class public Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "StatusBarKnoxMediator.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mDoubleTapCount:I

.field private mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.log.seclevel"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    .line 365
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$-o24-xTmjqkmO9WuFN69qtpZvMc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$-o24-xTmjqkmO9WuFN69qtpZvMc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private animateHide(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    .line 349
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x4

    .line 350
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private animateShow(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 p0, 0x0

    .line 338
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 339
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private executeKnoxCustomDoubleTapScreenOff(Z)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "StatusBarKnoxMediator"

    if-eqz p1, :cond_2

    .line 370
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    .line 371
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    if-ne p1, v2, :cond_1

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "setKnoxCustomDoubleTapScreenOff: posting delayed message"

    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    const-string p1, "setKnoxCustomDoubleTapScreenOff: going to sleep"

    .line 376
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    :cond_2
    const-string p0, "setKnoxCustomDoubleTapScreenOff: not tapped"

    .line 383
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private isFirstTimeDoubleTapCount()Z
    .locals 0

    .line 366
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateNotifications()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    .line 76
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 77
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$7Wbp6ymJU-7YsFSWkytVTIlQr-o;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarKnoxMediator$7Wbp6ymJU-7YsFSWkytVTIlQr-o;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$init$0$StatusBarKnoxMediator()V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->onUpdateStatusBarText()V

    return-void
.end method

.method public synthetic lambda$new$1$StatusBarKnoxMediator()V
    .locals 1

    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mDoubleTapCount:I

    return-void
.end method

.method public onBarInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 392
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    const-string v1, "StatusBarKnoxMediator"

    if-eqz v0, :cond_1

    const-string v0, "onBarInterceptTouchEvent()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->isFirstTimeDoubleTapCount()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 399
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 404
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "setKnoxCustomDoubleTapScreenOff: ACTION_UP"

    .line 406
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->executeKnoxCustomDoubleTapScreenOff(Z)V

    return-void
.end method

.method public onNPVInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 419
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onNPVInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 424
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->isFirstTimeDoubleTapCount()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 428
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    goto :goto_0

    .line 435
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    .line 439
    :cond_6
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->executeKnoxCustomDoubleTapScreenOff(Z)V

    :cond_7
    return-void
.end method

.method public onPersonaLaunch(I)V
    .locals 2

    .line 127
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPersonaLaunch(userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBarKnoxMediator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onPersonaStateChange()V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onPersonaStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onRCPPolicyChange()V
    .locals 2

    .line 118
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onRCPPolicyChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->updateNotifications()V

    return-void
.end method

.method public onUpdateNavigationBarHidden()V
    .locals 1

    .line 306
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "StatusBarKnoxMediator"

    const-string v0, "onUpdateNavigationBarHidden()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUpdateQuickPanelButtonUsers()V
    .locals 2

    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateQuickPanelButtonUsers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    .line 160
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->updateEverything()V

    :cond_1
    return-void
.end method

.method public onUpdateQuickPanelButtons()V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBarKnoxMediator"

    const-string v1, "onUpdateQuickPanelButtons()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController;->refreshBarList()V

    :cond_1
    return-void
.end method

.method public onUpdateStatusBarHidden()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    const-string v1, "StatusBarKnoxMediator"

    if-eqz v0, :cond_6

    .line 181
    :try_start_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->isExpandedVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isShadeLockedState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->animateCollapsePanels()V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->makeExpandedInvisibleForKnox()V

    .line 186
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox and Collapsed panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "onUpdateStatusBarHidden() Visibilities of StatusBarViews for home,lock are GONE by Knox..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "onUpdateStatusBarHidden() Visibility of StatusBarView is VISIBLE by Knox."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v0, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 196
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed Applying policy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 201
    :cond_6
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "onUpdateStatusBarHidden() but, mStatusBar is null.."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public onUpdateStatusBarIcons()V
    .locals 6

    .line 213
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    const-string v1, "StatusBarKnoxMediator"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateStatusBarIcons() mStatusBar is null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_2

    return-void

    .line 215
    :cond_2
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isStatusBarIconsEnabled()Z

    move-result v0

    .line 217
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const-string v3, "onUpdateStatusBarIcons() show:"

    if-eqz v2, :cond_5

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$id;->system_icons:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 219
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", phoneSystemIcons:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    .line 221
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_1

    .line 223
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    .line 226
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$id;->system_icons:I

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 228
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", lockSystemIcons:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_7

    .line 230
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateShow(Landroid/view/View;)V

    goto :goto_2

    .line 232
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->animateHide(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public onUpdateStatusBarText()V
    .locals 8

    .line 246
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->DEBUG:Z

    const-string v1, "StatusBarKnoxMediator"

    if-eqz v0, :cond_0

    const-string v0, "onUpdateStatusBarText()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    if-nez v0, :cond_1

    return-void

    .line 251
    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$id;->qs_knox_custom_statusbar_viewstub:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$id;->qs_knox_custom_statusbar_text:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_4

    return-void

    .line 269
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ", barTextView:"

    const/4 v6, 0x0

    if-nez v4, :cond_6

    .line 270
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextSize()I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 273
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextStyle()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 276
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v4

    if-lez v4, :cond_5

    .line 277
    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->getStatusBarTextWidth()I

    move-result v3

    .line 278
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 279
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 280
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0xa

    .line 281
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 282
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x6c

    .line 285
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 286
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 287
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move v3, v4

    :goto_1
    int-to-float v3, v3

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p0

    float-to-int p0, v3

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdateStatusBarText(VISIBLE) barTextString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", barScrollWidth:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 292
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateStatusBarText(GONE) barTextString:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 295
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void
.end method
