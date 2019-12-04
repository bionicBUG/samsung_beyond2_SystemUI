.class public Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;
.super Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;
.source "KeyguardBiometricRecognitionView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field protected mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

.field protected mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

.field protected mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field private mCurrentCutOutHeight:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field protected mKeyguardRecognitionView:Landroid/widget/FrameLayout;

.field protected final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNewCutOutHeight:I

.field private mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field protected final mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ZqBO_USJy11tFXY5NwqB_tPkbEA;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ZqBO_USJy11tFXY5NwqB_tPkbEA;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 73
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$TIoJxxETMosp6tcsDeRrxViIPjI;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$TIoJxxETMosp6tcsDeRrxViIPjI;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 p2, 0x0

    .line 77
    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mNewCutOutHeight:I

    .line 78
    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mCurrentCutOutHeight:I

    .line 424
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 87
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    .line 90
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_0
    return-void
.end method

.method private canPlayFaceRecognitionVI()Z
    .locals 1

    .line 393
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 395
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 396
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isDisplayCutoutHideNotch()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCutoutHeight()I
    .locals 1

    .line 370
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 371
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 373
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInDisplayFingerprintMarginAccepted()Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 365
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLayoutAdjustmentModel()Z
    .locals 2

    .line 483
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v0, 0x21c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic lambda$ZqBO_USJy11tFXY5NwqB_tPkbEA(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateLayout(I)V

    return-void
.end method

.method static synthetic lambda$updateVisualCueIcon$2(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "KeyguardBiometricRecognitionIcon"

    const-string v0, "Unable to parse json composition"

    .line 184
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLayout(I)V
    .locals 10

    .line 299
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateTabletLayout(I)V

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 304
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v1

    const v2, 0x10501f5

    .line 305
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 306
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->getCutoutHeight()I

    move-result v3

    .line 307
    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->isInDisplayFingerprintMarginAccepted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_c

    .line 312
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 313
    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    const v5, 0x1050403

    .line 314
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 322
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eq p1, v7, :cond_8

    if-eq p1, v9, :cond_4

    const/16 p1, 0x31

    .line 349
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, -0x1

    .line 350
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 351
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_VI:Z

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 352
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v8, v9

    .line 336
    :goto_1
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 337
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v5, :cond_6

    .line 339
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 341
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 342
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    .line 343
    :cond_7
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    move v8, v9

    .line 325
    :goto_2
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 326
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v5, :cond_b

    .line 328
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->isInDisplayFingerprintMarginAccepted()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 329
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    .line 330
    :cond_a
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 332
    :cond_b
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 356
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateRetryButtonVisibility()V

    :cond_c
    return-void
.end method

.method private updateRetryButtonVisibility()V
    .locals 7

    .line 448
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_retry_icon_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 449
    sget v1, Lcom/android/keyguard/R$id;->keyguard_biometric_retry_view_landscape:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 450
    sget v2, Lcom/android/keyguard/R$id;->ic_biometric_retry_icon:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUIImageView;

    .line 451
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    sget-boolean v4, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    .line 455
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 458
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->isLayoutAdjustmentModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 469
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 470
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->kg_biometric_retry_icon_width_landscape:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 474
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->kg_biometric_retry_icon_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 462
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$dimen;->kg_biometric_retry_icon_width_landscape:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 478
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 479
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$KeyguardBiometricRecognitionView(Landroid/net/Uri;)V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method public synthetic lambda$updateVisualCueIcon$1$KeyguardBiometricRecognitionView(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 433
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 435
    iput v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mNewCutOutHeight:I

    .line 436
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mNewCutOutHeight:I

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mCurrentCutOutHeight:I

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mNewCutOutHeight:I

    if-eq v0, v1, :cond_1

    .line 439
    iput v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mCurrentCutOutHeight:I

    .line 440
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateLayout()V

    .line 442
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 96
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->onAttachedToWindow()V

    .line 97
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    .line 98
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "display_cutout_hide_notch"

    .line 99
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string v0, "background"

    .line 104
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->onDetachedFromWindow()V

    .line 111
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 116
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 135
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricRecognitionIcon"

    const-string v1, "onFinishInflate()"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_cue_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    .line 138
    sget v0, Lcom/android/keyguard/R$id;->biometric_recognition_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 139
    sget v0, Lcom/android/keyguard/R$id;->biometric_error_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 140
    sget v0, Lcom/android/keyguard/R$id;->biometric_help_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 141
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_icon_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 144
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_font_size_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_font_size_tablet:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateVisualCueIcon()V

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateRetryIconDrawable()V

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    .line 153
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateLayout()V

    :cond_1
    return-void
.end method

.method public setPunchHoleVIView(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 389
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 403
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    .line 405
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateAnimation(Z)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAnimation() play = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBiometricRecognitionIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->canPlayFaceRecognitionVI()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2

    .line 281
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 283
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateErrorText(Ljava/lang/String;)V
    .locals 4

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 237
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 250
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateHelpText(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 246
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateHelpText(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateHelpText(Ljava/lang/String;)V
    .locals 2

    .line 256
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 261
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 263
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected updateIconVisibility()V
    .locals 4

    .line 197
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 201
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->updateRetryIconDrawable()V

    .line 203
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->canPlayFaceRecognitionVI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->setVisibility(I)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 222
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    const-string v0, ""

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateErrorText(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->setVisibility(I)V

    .line 225
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_6

    .line 226
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 217
    :cond_5
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    .line 218
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateRetryButtonVisibility()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected updateLayout()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 295
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateLayout(I)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateVisualCueIcon()V

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    return-void
.end method

.method protected updateTabletLayout(I)V
    .locals 0

    return-void
.end method

.method protected updateVisualCueIcon()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricRecognitionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const-string v1, "background"

    .line 165
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "smart_scan_unlocking_ic_whitebg.json"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "smart_scan_unlocking_ic.json"

    :goto_0
    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    goto :goto_3

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v1, "face_unlocking_ic_whitebg.json"

    goto :goto_1

    :cond_2
    const-string v1, "face_unlocking_ic.json"

    :goto_1
    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    goto :goto_3

    .line 175
    :cond_3
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const-string v1, "iris_unlocking_ic_whitebg.json"

    goto :goto_2

    :cond_4
    const-string v1, "iris_unlocking_ic.json"

    :goto_2
    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    .line 179
    :goto_3
    new-instance v2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ru7YIZUqR7NekcZToX8NHBjhuwk;

    invoke-direct {v2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$ru7YIZUqR7NekcZToX8NHBjhuwk;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 184
    sget-object v2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionView$owyEEbEf0Ku6B_TOzFQqeHOC62c;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_6

    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    :cond_6
    return-void
.end method
