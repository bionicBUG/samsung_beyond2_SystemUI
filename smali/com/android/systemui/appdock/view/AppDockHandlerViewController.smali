.class public Lcom/android/systemui/appdock/view/AppDockHandlerViewController;
.super Ljava/lang/Object;
.source "AppDockHandlerViewController.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;


# instance fields
.field private mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mH:Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;

.field private mIsAdded:Z

.field private mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mIsAdded:Z

    .line 50
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mH:Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/appdock/view/AppDockHandlerViewController;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->sInstance:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->sInstance:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    .line 58
    :cond_0
    sget-object p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->sInstance:Lcom/android/systemui/appdock/view/AppDockHandlerViewController;

    return-object p0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method private initHandler()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->appdock_handler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockHandlerView;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/view/AppDockHandlerView;->setController(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mIsAdded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->getLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mIsAdded:Z

    return-void
.end method

.method private initListener()V
    .locals 4

    .line 101
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$1;-><init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController$2;-><init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 133
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "multi_window_tray"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 66
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->appdock_handler_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 67
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->appdock_handler_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 68
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->appdock_handler_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 70
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x8b2

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x50

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    .line 73
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v2, 0x35

    .line 74
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getCutoutRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 76
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->appdock_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->appdock_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    .line 78
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v1
.end method

.method public init(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 83
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 85
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 86
    iput-object p2, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->initHandler()V

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->initListener()V

    return-void
.end method

.method public synthetic lambda$showAndHide$0$AppDockHandlerViewController()V
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$showAndHide$1$AppDockHandlerViewController()V
    .locals 1

    .line 164
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mAppDockHandlerView:Lcom/android/systemui/appdock/view/AppDockHandlerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "multi_window_tray"

    .line 176
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isAppDockSettingsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    :cond_0
    return-void
.end method

.method public showAndHide(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 138
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Prevent to show AppDock when lockscreen is showing."

    .line 140
    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 143
    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->APPDOCK_ENABLED:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isAppDockSettingsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/utils/AppDockSystemProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/utils/AppDockSystemProxy;->isScreenPinningActive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Prevent to show AppDock when screen pinning is active."

    .line 148
    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_2
    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isUnFolding()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKidsMode()Z

    move-result v1

    if-eqz v1, :cond_6

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Appdock does not support in KidsMode"

    .line 156
    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Setupwizard is not completed or display state is folding"

    .line 152
    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "AppDock setting is disabled."

    .line 144
    invoke-static {v1, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v0, p1

    :goto_2
    if-eqz v0, :cond_7

    .line 162
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mH:Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;

    new-instance v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockHandlerViewController$EFMrDajpxgxO-cFbXZHj5SdEiiw;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockHandlerViewController$EFMrDajpxgxO-cFbXZHj5SdEiiw;-><init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mH:Lcom/android/systemui/appdock/view/AppDockHandlerViewController$H;

    new-instance v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockHandlerViewController$E-gCDSNTw72NFWJPQ3L71nRTdsY;

    invoke-direct {v0, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockHandlerViewController$E-gCDSNTw72NFWJPQ3L71nRTdsY;-><init>(Lcom/android/systemui/appdock/view/AppDockHandlerViewController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    return-void
.end method

.method public showAppDock()V
    .locals 1

    .line 169
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/appdock/view/AppDockWindowController;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/view/AppDockWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/view/AppDockWindowController;->show()V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockHandlerViewController;->showAndHide(Z)V

    return-void
.end method
