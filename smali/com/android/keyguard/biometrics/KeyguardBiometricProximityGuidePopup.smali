.class public Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricProximityGuidePopup.java"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBouncerShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mErrorString:Ljava/lang/String;

.field private mGuideText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mHandler:Landroid/os/Handler;

.field private final mHidePopupRunnable:Ljava/lang/Runnable;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAnimating:Z

.field private mIsLeftArrow:Z

.field private mIsOccluded:Z

.field private mIsSIPShowing:Z

.field private mKeyguardGuidePopup:Landroid/view/ViewGroup;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

.field private mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

.field private mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mTranslationXPosition:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    .line 66
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    .line 67
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    .line 81
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$4o5uRQsswfuAa6HGk1GMfYgyPa8;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$4o5uRQsswfuAa6HGk1GMfYgyPa8;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$XV_MDQ9Lgzkfia5V0m07jcUH9js;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$XV_MDQ9Lgzkfia5V0m07jcUH9js;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$53r45apVc5KPrBN-mHs3Od63c90;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$53r45apVc5KPrBN-mHs3Od63c90;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    .line 85
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$O001xZELqYpqM-V4Yl8ED89D69w;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricProximityGuidePopup$O001xZELqYpqM-V4Yl8ED89D69w;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 150
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 93
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 94
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string p2, "accessibility"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 97
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    .line 98
    sget p2, Lcom/android/keyguard/R$id;->keyguard_proximity_guide_popup:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const-string/jumbo p2, "window"

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    .line 100
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    .line 101
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updatePopupVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mPlayPopupAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateGuideText()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->handleShow()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->handleHide()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    return p1
.end method

.method private clearGuidePopup()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setProximityGuidePopupState(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateTabletLayout()V

    return-void
.end method

.method private dismissAnimation()V
    .locals 9

    const/4 v0, 0x0

    .line 575
    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    int-to-float v4, v4

    aput v4, v3, v0

    const-string/jumbo v4, "translationX"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 578
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 580
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 581
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 583
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 584
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v6, [Landroid/animation/Animator;

    aput-object v1, v4, v0

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 401
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 402
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 404
    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_top_margin:I

    .line 405
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method private getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .line 410
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 412
    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_translation_x_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 413
    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_top_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 414
    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_top_margin_for_sip:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 415
    iget-boolean v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    const/4 v4, -0x2

    if-eqz v3, :cond_1

    .line 416
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 419
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 420
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz p0, :cond_0

    .line 421
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 423
    :cond_0
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 426
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 429
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 430
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz p0, :cond_2

    .line 431
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v2, -0x1

    .line 433
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-object v3
.end method

.method private handleHide()V
    .locals 3

    .line 338
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setProximityGuidePopupState(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->setBiometricGuideText()V

    return-void
.end method

.method private isBiometricsCondition()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 302
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

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

.method private isTimerRunning()Z
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$4o5uRQsswfuAa6HGk1GMfYgyPa8(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V

    return-void
.end method

.method public static synthetic lambda$53r45apVc5KPrBN-mHs3Od63c90(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateGuidePopup(Z)V

    return-void
.end method

.method public static synthetic lambda$O001xZELqYpqM-V4Yl8ED89D69w(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateTabletLayout(I)V

    return-void
.end method

.method private playMoveAnimation()V
    .locals 7

    .line 473
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_translation_x_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_translation_x_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mTranslationXPosition:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const-string/jumbo v3, "translationX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 485
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 486
    new-instance v2, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityInterpolator;

    invoke-direct {v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 488
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x12c

    .line 489
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 490
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 492
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 493
    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 512
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playPopupAnimation()V
    .locals 9

    .line 520
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_translation_x_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 522
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_guide_popup_and_arrow_translation_x_position:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 525
    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v6, v5, [F

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v0, v7

    mul-float/2addr v1, v7

    add-float/2addr v1, v0

    aput v1, v6, v4

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 528
    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v7, v5, [F

    aput v0, v7, v4

    invoke-static {v6, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 529
    iget-object v7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v8, v5, [F

    aput v1, v8, v4

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 531
    iget-object v7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v8, v5, [F

    aput v0, v8, v4

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v6, v5, [F

    add-float/2addr v1, v0

    aput v1, v6, v4

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 535
    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v7, v5, [F

    aput v0, v7, v4

    invoke-static {v6, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 536
    iget-object v7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v8, v5, [F

    aput v1, v8, v4

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 538
    iget-object v7, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    new-array v8, v5, [F

    aput v0, v8, v4

    invoke-static {v7, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const-wide/16 v7, 0x11b

    .line 540
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 541
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 542
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 543
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 544
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 545
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v6, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 547
    new-instance v3, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 550
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v4

    aput-object v6, v7, v5

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const/4 v1, 0x3

    aput-object v0, v7, v1

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 615
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private setBiometricGuideText()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 275
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 276
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->showProximityErrorMessage()V

    :cond_1
    return-void
.end method

.method private showProximityErrorMessage()V
    .locals 4

    .line 441
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    .line 457
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 458
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    .line 447
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 448
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 468
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->playMoveAnimation()V

    return-void
.end method

.method private updateGuidePopup(Z)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    .line 313
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsOccluded:Z

    if-eqz p1, :cond_2

    .line 314
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->handleShow()V

    goto :goto_0

    .line 316
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->handleHide()V

    .line 319
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 321
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateGuideText()V
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    const v1, 0x3f8ccccd    # 1.1f

    .line 621
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_iris_proximity_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_face_proximity_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_intelligent_scan_proximity_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updatePopupVisibility()V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 285
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 290
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTabletLayout()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 349
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateTabletLayout(I)V

    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 354
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 359
    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 393
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V

    goto :goto_0

    .line 375
    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    .line 376
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 377
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_3
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsLeftArrow:Z

    .line 364
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->getMarginForArrow()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 365
    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    if-eqz v1, :cond_4

    .line 366
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 368
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 395
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_text_max_width_landscape:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 397
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$KeyguardBiometricProximityGuidePopup()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardProximityPopup"

    const-string v1, "onFinishInflate()"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    sget v0, Lcom/android/keyguard/R$id;->ic_iris_proximity_indicator_arrow_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 112
    sget v0, Lcom/android/keyguard/R$id;->ic_iris_proximity_indicator_arrow_right:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    .line 113
    sget v0, Lcom/android/keyguard/R$id;->keyguard_guide_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    .line 114
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateGuideText()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 142
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 143
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 144
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->mIsSIPShowing:Z

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->updateTabletLayout()V

    return-void
.end method
