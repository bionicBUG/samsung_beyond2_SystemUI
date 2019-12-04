.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mDisplayId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchedSystemUiVisibility:I

.field private mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mSystemUiVisibility:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 72
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 75
    const-class p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 76
    const-class p2, Landroid/view/IWindowManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    return-void
.end method

.method private cancelAutoHide()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTransientMask()I
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method private scheduleAutoHide()V
    .locals 3

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 3

    .line 192
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    :cond_1
    if-eqz p1, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_2
    return-void
.end method

.method hasNavigationBar()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasStatusBar()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$getCheckBarModesRunnable$1$AutoHideController()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$2$AutoHideController()V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    return-void
.end method

.method public synthetic lambda$new$0$AutoHideController()V
    .locals 2

    .line 64
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 65
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v1, v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method notifySystemUiVisibilityChanged(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 133
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(II)V

    .line 135
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AutoHideController"

    const-string p1, "Cannot get WindowManager"

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_0
    return-void
.end method

.method resumeSuspendedAutoHide()V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-void
.end method

.method setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10

    move-object v0, p0

    move v6, p5

    .line 100
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v2, p1

    if-eq v2, v1, :cond_0

    return-void

    .line 103
    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    not-int v2, v6

    and-int/2addr v2, v1

    and-int v3, p2, v6

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 108
    iput v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 112
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_2

    .line 116
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 120
    :cond_2
    iget v3, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v3, v2, :cond_3

    .line 121
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 126
    :cond_3
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_4
    return-void
.end method

.method suspendAutoHide()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void
.end method

.method touchAutoHide()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_0

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_0
    return-void
.end method
