.class public Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricIconView.java"


# instance fields
.field protected mBouncerShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mPowerManager:Landroid/os/PowerManager;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field protected mState:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 70
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 270
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricIconView$EivGgv9ecrjjrIrDCVeD7ssHdwk;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricIconView$EivGgv9ecrjjrIrDCVeD7ssHdwk;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 285
    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string p2, "power"

    .line 286
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mPowerManager:Landroid/os/PowerManager;

    .line 287
    const-class p2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 288
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 289
    sget-boolean p2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p2, :cond_0

    .line 290
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 291
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mDisplay:Landroid/view/Display;

    const-string p2, "input_method"

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Landroid/view/Display;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object p0
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getIconState()I
    .locals 3

    .line 336
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return v1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 342
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 343
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 344
    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v1

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 347
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRetry()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 350
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIrisRetryButton()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 351
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIBRetryButton()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected handleHideGuidePopup()V
    .locals 0

    return-void
.end method

.method protected handleShowGuidePopup()V
    .locals 0

    return-void
.end method

.method protected isBiometricRetryIconSelected(Landroid/view/View;FF)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->isOnIconExact(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$KeyguardBiometricIconView(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "white_lockscreen_wallpaper"

    .line 273
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateRetryIconDrawable()V

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateVisualCueIcon()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 303
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 305
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "white_lockscreen_wallpaper"

    .line 306
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 305
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 311
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 313
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 298
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 318
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 319
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p1, :cond_2

    .line 320
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 325
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0, p2, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateTabletLayout(ZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 329
    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateTabletLayout(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateErrorText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateHelpText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected updateIconVisibility()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 359
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    .line 365
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateRetryIconDrawable()V

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateLayout()V
    .locals 0

    return-void
.end method

.method protected updateRetryIconDrawable()V
    .locals 0

    return-void
.end method

.method protected updateTabletLayout(ZZ)V
    .locals 0

    return-void
.end method

.method protected updateVisualCueIcon()V
    .locals 0

    return-void
.end method
