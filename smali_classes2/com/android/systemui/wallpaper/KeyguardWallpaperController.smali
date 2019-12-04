.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;
.implements Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperController"

.field private static sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# instance fields
.field private mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

.field private mBottom:I

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentWhich:I

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mDlsViewMode:I

.field private mFadingAway:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsEnabledDCMLauncher:Z

.field private mIsInfinityWallpaper:Z

.field private mIsKeyguardShowing:Z

.field private mIsLockscreenDisabled:Z

.field private mIsPendingTypeChange:Z

.field private mIsPluginLockReady:Z

.field private mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field private mNaturalBarHeight:I

.field private mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;

.field private mOccluded:Z

.field private mOldLockScreenTransparent:I

.field private mOldLockScreenTransparentSub:I

.field private mOldTransparentType:I

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScreenOn:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mService:Landroid/app/IWallpaperManager;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mVisibility:I

.field private mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

.field private mWallpaperType:I

.field private mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 520
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    const/4 v1, -0x1

    .line 148
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    .line 149
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    const/4 v2, 0x2

    .line 150
    iput v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    const/4 v3, 0x4

    .line 151
    iput v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 153
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 157
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparent:I

    .line 158
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparentSub:I

    .line 183
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 189
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/net/Uri;

    const-string v4, "lockscreen_wallpaper"

    .line 192
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "lockscreen_wallpaper_sub"

    .line 193
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-string v0, "ultra_powersaving_mode"

    .line 194
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "emergency_mode"

    .line 195
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v1, v5

    const-string v0, "lock_adaptive_color"

    .line 196
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "lockscreen_wallpaper_transparent"

    .line 197
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsValueList:[Landroid/net/Uri;

    .line 200
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 267
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    .line 338
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 426
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 465
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    .line 477
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 487
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 521
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 523
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    .line 525
    new-instance v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    .line 526
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)I

    .line 527
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setOnAdaptiveColorChangedListener(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;)V

    .line 529
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "wallpaper"

    .line 530
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    .line 531
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 532
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 534
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    .line 537
    invoke-static {v4}, Lcom/samsung/android/graphics/SemImageFilter;->createImageFilter(I)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    .line 541
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 544
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(Landroid/content/Context;)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 547
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "WallpaperManagerService is not ready yet! Just return here!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "setLockWallpaperCallback(this)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    .line 555
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 556
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreeLifeCycleObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 557
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 558
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->registerOMCWallpaperUpdatedReceiver()V

    .line 564
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;)V

    .line 567
    sget-boolean p1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_1

    .line 568
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 572
    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz p1, :cond_2

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setWallpaperRegisterReceiver()V

    .line 574
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    .line 575
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    if-eqz p1, :cond_2

    .line 576
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateIsEnabledDCMLauncher()V

    .line 581
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->migrateOldKeyguardWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 583
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System dead?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparent:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparent:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onLiveWallpaperChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperResourceUpdated()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleCleanUp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setMultipack(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateIsEnabledDCMLauncher()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUserSwitching(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onBootCompleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparentSub:I

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldLockScreenTransparentSub:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/view/ViewGroup;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isVideoWallpaper()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isFbeWallpaperInDisplay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    return p0
.end method

.method static synthetic access$2502(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return p0
.end method

.method static synthetic access$2802(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)I
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->forceBroadcastWhiteKeyguardWallpaper(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setKeyguardWallpaperColorsInternal(Landroid/os/Bundle;)V

    return-void
.end method

.method private apply()V
    .locals 8

    .line 665
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 667
    :goto_0
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 668
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x3

    iget v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v6, v7, :cond_2

    move v2, v5

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "mIsKeyguardShowing=%s, mOccluded=%s, mFadingAway=%s, match_parent=%s"

    .line 667
    invoke-static {v3, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 671
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 674
    :cond_3
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    if-eq v1, v0, :cond_5

    if-nez v0, :cond_4

    .line 675
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-ne v1, v5, :cond_4

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onResume()V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPause()V

    .line 681
    :cond_5
    :goto_1
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mVisibility:I

    return-void
.end method

.method private extractAdaptiveColors()V
    .locals 3

    .line 1453
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    if-eqz v0, :cond_0

    .line 1454
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->extractInfinityAdaptiveColor()V

    goto :goto_0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_3

    .line 1458
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1460
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1462
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v2, "extractAdaptiveColors(): Starting extract colors with copied bitamp."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->extractAdaptiveColor(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1465
    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "extractAdaptiveColors(): bitmapTobeExtracted is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1468
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "extractAdaptiveColors(): mWallpaperView.getBitmap() returns null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1471
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractAdaptiveColors(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1474
    :cond_3
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "extractAdaptiveColors(): mWallpaperView is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private forceBroadcastWhiteKeyguardWallpaper(I)V
    .locals 3

    .line 1114
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceBroadcastWhiteKeyguardWallpaper, cur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 1117
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->forceBroadcastWhiteKeyguardWallpaper()V

    .line 1119
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOldTransparentType:I

    return-void
.end method

.method private getDummyHintItem()Landroid/app/SemWallpaperColors$Item;
    .locals 3

    .line 1437
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "getDummyHintItem()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance p0, Landroid/app/SemWallpaperColors$Item;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1, v2}, Landroid/app/SemWallpaperColors$Item;-><init>(IFF)V

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .locals 1

    .line 588
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 591
    :cond_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-object p0
.end method

.method private getLockWallpaperType()I
    .locals 1

    const/4 v0, 0x1

    .line 1671
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result p0

    return p0
.end method

.method private getLockWallpaperType(Z)I
    .locals 4

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1681
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1682
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperType()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1683
    :try_start_1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockWallpaperType: from PluginLockmanager type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, p1

    goto :goto_1

    .line 1685
    :cond_0
    :try_start_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 1690
    :cond_1
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move v1, p1

    goto :goto_2

    .line 1693
    :goto_1
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_2
    :goto_2
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockWallpaperType: mIsPluginLockReady = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne v1, p1, :cond_3

    .line 1697
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-nez p1, :cond_3

    const/4 v1, 0x0

    .line 1700
    :cond_3
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockWallpaperType: mCurrentWhich = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleCleanUp()V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 1128
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    const/4 v0, 0x0

    .line 1129
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    .line 1131
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    :cond_2
    return-void
.end method

.method private handleWallpaperResourceUpdated()V
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz p0, :cond_1

    .line 717
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->update()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleWallpaperTypeChanged()V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(Z)V

    return-void
.end method

.method private handleWallpaperTypeChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "upsm_or_emergency_mode_changed"

    .line 735
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 737
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result p1

    .line 738
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    .line 739
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->handlePowerSavingNEmergencyMode(Z)I

    move-result p1

    if-eqz p1, :cond_3

    .line 741
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperColors have been changed while switching EM or UPSM."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->writeSettingsAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    .line 743
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/app/SemWallpaperColors;)V

    .line 748
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(Z)V

    return-void
.end method

.method private handleWallpaperTypeChanged(Z)V
    .locals 11

    .line 752
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v1

    .line 758
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v2

    .line 759
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v3

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->manageMultipackLifeCycle()Z

    const-string v4, "type:"

    .line 763
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",which:"

    .line 764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",upsm:"

    .line 765
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",em:"

    .line 766
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 768
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v4

    const-string v5, "handleWallpaperTypeChanged :"

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    const-string v1, " \ndex mode"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowingState(Z)V

    return-void

    :cond_1
    if-nez v2, :cond_16

    if-eqz v3, :cond_2

    goto/16 :goto_7

    .line 781
    :cond_2
    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, " \n mdm mode"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowingState(Z)V

    return-void

    .line 787
    :cond_3
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v2

    const/4 v9, 0x0

    const/4 v3, 0x0

    if-nez v2, :cond_14

    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 788
    invoke-static {v2}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 789
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    .line 804
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v2

    const/16 v4, 0x8

    if-nez v2, :cond_6

    .line 805
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 806
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v9

    :goto_0
    const-string v2, ",default(DLS)"

    .line 811
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    move v10, v1

    .line 817
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v1, :cond_7

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 818
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 819
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isVideoWallpaper()Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->setLockScreenRotationAllowed(Z)V

    const-string v1, ",ro"

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_7
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_11

    if-eq v10, v8, :cond_10

    const/4 v0, 0x2

    if-eq v10, v0, :cond_10

    const/4 v1, 0x3

    if-eq v10, v1, :cond_f

    const/4 v1, 0x4

    const-string v2, "System dead?"

    if-eq v10, v1, :cond_e

    if-eq v10, v4, :cond_b

    .line 884
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_OPERATOR_WALLPAPER:Z

    if-eqz v1, :cond_8

    .line 885
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "default OMC wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V

    goto/16 :goto_5

    .line 887
    :cond_8
    sget-object v1, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    const-string v2, "MOTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 888
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "default MOTION wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    goto/16 :goto_5

    .line 890
    :cond_9
    sget-object v1, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "MULTIPLE"

    .line 891
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 892
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 893
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "default MULTIPACK wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-direct {p0, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setMultipack(Z)V

    goto/16 :goto_5

    .line 900
    :cond_a
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "default IMAGE wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V

    goto/16 :goto_5

    .line 848
    :cond_b
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_VIDEO_WALLPAPER:Z

    if-eqz v0, :cond_12

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 854
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v0, v4}, Landroid/app/IWallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 855
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v3

    .line 858
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, ""

    if-eqz v0, :cond_c

    .line 859
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v4, v5

    .line 863
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_d

    .line 864
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 865
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    .line 872
    :goto_1
    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_2
    move-object v5, v3

    move-object v3, v1

    .line 874
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "VIDEO wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {v8}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setVideoWallpaper(Z)V

    .line 876
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    move-object v1, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Z)V

    goto :goto_4

    .line 840
    :cond_e
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 842
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_3
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    :goto_4
    move-object v3, v0

    goto :goto_5

    .line 880
    :cond_f
    invoke-direct {p0, v9}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setMultipack(Z)V

    goto :goto_5

    .line 832
    :cond_10
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v0, :cond_12

    .line 833
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    goto :goto_5

    .line 828
    :cond_11
    new-instance v3, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;IZ)V

    .line 905
    :cond_12
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowingState(Z)V

    .line 907
    iput v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    .line 908
    iput-boolean v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    .line 911
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    if-ne v0, v8, :cond_13

    .line 912
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperController$yHU8Wl9I-YWEgN3ULXT1kneqK2M;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperController$yHU8Wl9I-YWEgN3ULXT1kneqK2M;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void

    .line 790
    :cond_14
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, -0x2

    .line 791
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    .line 794
    :cond_15
    invoke-direct {p0, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    const-string v1, " \n live wallpaper"

    .line 795
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowingState(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->wallpaperTypeChanged()V

    return-void

    :cond_16
    :goto_7
    const-string v1, " \nisUpsmMode or isEmergencyMode "

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V

    .line 779
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBackdropShowingState(Z)V

    return-void
.end method

.method private isEnabledDCMLauncher(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1070
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz p1, :cond_0

    .line 1072
    :try_start_0
    invoke-interface {p1}, Landroid/app/IWallpaperManager;->getDCMLauncherEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1074
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System dead?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result p0

    return p0
.end method

.method private isFbeWallpaperInDisplay()Z
    .locals 1

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperVideo()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1716
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "isFbeWallpaperInDisplay(): true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSubDisplay()Z
    .locals 3

    .line 965
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz p0, :cond_0

    .line 967
    :try_start_0
    invoke-interface {p0}, Landroid/app/IWallpaperManager;->getLidState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 969
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System dead?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoWallpaper()Z
    .locals 1

    .line 1706
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private manageMultipackLifeCycle()Z
    .locals 6

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, -0x1

    .line 924
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3, v0}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 926
    sget-object v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_1

    .line 929
    sget-object v2, Lcom/android/systemui/Rune;->WPAPER_VALUE_DEFAULT_WALLPAPER_STYLE:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "MULTIPLE"

    .line 932
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 933
    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 935
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->clear()V

    const/4 v0, 0x0

    .line 946
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 938
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-nez v1, :cond_4

    .line 939
    new-instance v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 940
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMultipackDisptacher() : crated. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private migrateOldKeyguardWallpaper()V
    .locals 4

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1017
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "lockscreen_wallpaper_path"

    .line 1016
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1063
    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private onBootCompleted()V
    .locals 4

    .line 630
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    .line 639
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    .line 642
    :goto_0
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootCompleted mWallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wallpaperType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    if-eq v1, v0, :cond_2

    .line 646
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    .line 647
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    .line 652
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 653
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 654
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    .line 655
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 652
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 658
    :catch_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "onBootCompleted() RemoteException"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private onLiveWallpaperChanged()V
    .locals 2

    .line 1518
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "onLiveWallpaperChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method private onUserSwitchComplete(I)V
    .locals 3

    .line 602
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    .line 604
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->loadDeviceState(Landroid/content/Context;)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->initFlags()V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)I

    .line 611
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->clear()V

    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    .line 620
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    .line 621
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    .line 619
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "onUserSwitchComplete() RemoteException"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onUserSwitching(I)V
    .locals 3

    .line 595
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 598
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    return-void
.end method

.method private registerOMCWallpaperUpdatedReceiver()V
    .locals 3

    .line 1728
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.RSCUPDATE_START"

    .line 1729
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1730
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/wallpaper/KeyguardWallpaperController$1;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;

    .line 1731
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOMCWallpaperUpdatedReceiver:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$OMCWallpaperUpdatedReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBackground(Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;)V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    .line 695
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 699
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 705
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    .line 707
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->cleanUp()V

    :cond_2
    return-void
.end method

.method private setKeyguardWallpaperColorsInternal(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_2

    const-string v0, "wallpaper_colors"

    .line 1482
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const-string v2, "which"

    .line 1484
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1485
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "userid"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1486
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/app/SemWallpaperColors;)V

    goto :goto_0

    .line 1490
    :cond_0
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "setKeyguardWallpaperColorsInternal() no changes!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->extractAdaptiveColors()V

    goto :goto_1

    .line 1497
    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "setKeyguardWallpaperColorsInternal() colors is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1500
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "setKeyguardWallpaperColorsInternal() extra is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setMultipack(Z)V
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-nez v0, :cond_0

    .line 954
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "setMultipack : mIsPluginLockReady is false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz v0, :cond_1

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isSubDisplay()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->start(ZZ)V

    :cond_1
    return-void
.end method

.method private setWallpaperRegisterReceiver()V
    .locals 2

    .line 1086
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    .line 1087
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateIsEnabledDCMLauncher()V
    .locals 3

    .line 1757
    :try_start_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1758
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    .line 1759
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p0, v0}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1761
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    .line 1762
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {p0, v0}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1765
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System dead?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public applyBlur(F)V
    .locals 3

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 1099
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    .line 1101
    invoke-interface {v0, p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->updateBlurState(Z)V

    const/4 p0, 0x0

    .line 1102
    invoke-virtual {v1, p0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1104
    invoke-interface {v0, v2}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->updateBlurState(Z)V

    .line 1105
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {v1, p0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 1107
    :goto_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blurred dim Amount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 2

    .line 1627
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1628
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardWallpaperController : "

    .line 1771
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsInfinityWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWallpaperType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1779
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-eqz p0, :cond_1

    .line 1780
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 4

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1508
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdaptiveColorResult() has been called while not adaptive color condition. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    return-object p0
.end method

.method public getHint(I)Landroid/app/SemWallpaperColors$Item;
    .locals 2

    .line 1366
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 1367
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_1

    .line 1372
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 1378
    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 1381
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 1385
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1387
    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    return-object p0

    .line 1392
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getDummyHintItem()Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    return-object p0
.end method

.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 2

    .line 1345
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 1346
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1351
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 1355
    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "getHints() : getBlankWallpaperColors!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0

    .line 1349
    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperRootView()Landroid/view/View;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public handleDlsViewMode(IZ)V
    .locals 3

    .line 981
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDlsViewMode() mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 982
    iget p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    if-eq p2, p1, :cond_4

    .line 983
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz p2, :cond_1

    .line 984
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onDlsViewModeChanged(IZ)V

    .line 987
    :cond_1
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    .line 989
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_2
    move p1, v0

    .line 991
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setRadius(F)V

    .line 992
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    check-cast p2, Landroid/view/View;

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    .line 994
    invoke-virtual {p2, p0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    goto :goto_1

    .line 996
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mBlurFilter:Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    invoke-virtual {p2, p0}, Landroid/view/View;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    .line 998
    :goto_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDlsViewMode() amount:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 1614
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mWallpaperView.handleTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public isEnabledDCMLauncher()Z
    .locals 2

    .line 1082
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsEnabledDCMLauncher:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$handleWallpaperTypeChanged$0$KeyguardWallpaperController()V
    .locals 2

    .line 912
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mDlsViewMode:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleDlsViewMode(IZ)V

    return-void
.end method

.method public onAdaptiveColorChanged(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 1

    .line 1337
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x25b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1338
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDataCleared()V
    .locals 2

    .line 1319
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "onDataCleared()"

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->manageMultipackLifeCycle()Z

    const/4 v0, 0x1

    .line 1321
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setMultipack(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 1607
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mWallpaperView.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 1326
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1329
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPluginLockReady:Z

    const/4 v0, 0x0

    .line 1330
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->setMultipack(Z)V

    .line 1331
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v0, "onReady()"

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 1596
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mWallpaperView.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 1598
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mSemDisplaySolutionManager is called : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    .line 1601
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_1
    return-void
.end method

.method public onSemBackupStatusChanged(III)V
    .locals 3

    .line 1250
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSemBackupStatusChanged which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1254
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockManager;->onSemBackupStatusChanged(III)V

    :cond_1
    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1217
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "onSemWallpaperColorsChanged() SemWallpaperColors == null"

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 1223
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "onSemWallpaperColorsChanged() Not for lockscreen."

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1228
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1235
    :cond_2
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSemWallpaperColorsChanged() colors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1240
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wallpaper_colors"

    .line 1241
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "which"

    .line 1242
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "userid"

    .line 1243
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1245
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1230
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "onSemWallpaperColorsChanged() Wallpaper type is SEM_WALLPAPER_TYPE_MULTIPLE or DynamicWallpaper is enabled. Ignoring this event."

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnlock()V
    .locals 2

    .line 685
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 688
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onUnlock()V

    :cond_0
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1139
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType(Z)I

    move-result v1

    .line 1141
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexMode()Z

    move-result v2

    .line 1142
    const-class v3, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v3}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v3

    .line 1144
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DCM_USIM_TEXT:Z

    if-eqz v4, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->updateIsEnabledDCMLauncher()V

    .line 1148
    :cond_0
    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v4, :cond_1

    .line 1149
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1151
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    .line 1155
    :cond_1
    sget-boolean v4, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    .line 1156
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    const/16 v4, 0x12

    .line 1157
    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1160
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->manageMultipackLifeCycle()Z

    move-result v4

    const-string v5, "onWallpaperChanged type="

    .line 1163
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",oldType="

    .line 1164
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",newDeXMode="

    .line 1165
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",oldDeXMode="

    .line 1166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isInfinityWallpaper="

    .line 1167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",multipack="

    .line 1168
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    .line 1172
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V

    .line 1173
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1175
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1179
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 1180
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, ",notifyToDLS"

    .line 1182
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    .line 1184
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->clear()V

    const-string v4, ",error!"

    .line 1185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    :cond_4
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->notifyWallpaperChanged(I)V

    .line 1190
    :cond_5
    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x259

    if-eq v2, v3, :cond_6

    .line 1193
    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setDexMode(Z)V

    .line 1194
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1195
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1197
    :cond_6
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    if-ne v2, v1, :cond_7

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1201
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1202
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1206
    :goto_0
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 4

    const-string v0, "onWallpaperHintUpdate() color = "

    const-string v1, "onWallpaperHintUpdate() Not a multipack. Ignore the event."

    .line 1286
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    if-nez p1, :cond_0

    .line 1289
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string p1, "onWallpaperHintUpdate() Null colors. Return here."

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1295
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mCurrentWhich:I

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->semGetWallpaperType(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1296
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 1297
    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1298
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isFbeWallpaperInDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1309
    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1299
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1301
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "wallpaper_colors"

    .line 1302
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1303
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1304
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1306
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperLog;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1313
    sget-object p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWallpaperHintUpdate() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onWallpaperUpdate()V
    .locals 4

    .line 1264
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getLockWallpaperType()I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1266
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1269
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    .line 1272
    :goto_0
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWallpaperUpdate wallpaperType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInfinityWallpaper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsInfinityWallpaper:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    if-eq v1, v0, :cond_1

    .line 1275
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperType:I

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1277
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1280
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 1621
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v1, "mWallpaperView.reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->reset()V

    :cond_0
    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1632
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1636
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendWallpaperCommand: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1640
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    const-string v2, "sendWallpaperCommand() action is not defined. Returen"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "WAKE_LOCK"

    .line 1645
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2bd

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_UNLOCK"

    .line 1647
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2be

    goto :goto_0

    :cond_2
    const-string v1, "SLEEP_LOCK"

    .line 1649
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x2bf

    :goto_0
    if-eqz v0, :cond_3

    .line 1658
    invoke-virtual {v0, p1, p2}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1659
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWallpaperCommand() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_4

    .line 1664
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1665
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1667
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1652
    :cond_5
    sget-object p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported action: action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 0

    .line 1590
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    .line 1591
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 1582
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 1584
    invoke-interface {v0, p1}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->setKeyguardOccluded(Z)V

    .line 1586
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 3

    .line 1554
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyguardShowing: showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsPendingTypeChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1555
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsPendingTypeChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1556
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged(Z)V

    .line 1559
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    .line 1560
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->apply()V

    .line 1562
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DCM_USIM_TEXT:Z

    const/16 v0, 0x259

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/Rune;->isBeforeDreamDcmLauncher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1563
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_3

    .line 1564
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz p1, :cond_3

    .line 1565
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1566
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1567
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1573
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 1574
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1575
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1576
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1529
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    .line 1530
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1532
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1535
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mIsLockscreenDisabled:Z

    .line 1536
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050403

    .line 1537
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    .line 1538
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1550
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    return-void
.end method
