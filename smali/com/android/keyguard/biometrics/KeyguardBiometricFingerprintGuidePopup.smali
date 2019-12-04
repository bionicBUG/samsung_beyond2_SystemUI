.class public Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBouncerShowing:Z

.field private mDisplay:Landroid/view/Display;

.field private mGuideText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpString:Ljava/lang/String;

.field private final mHidePopupRunnable:Ljava/lang/Runnable;

.field private mIsAnimating:Z

.field private mIsRunningState:Z

.field private mKeyguardGuidePopup:Landroid/view/ViewGroup;

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    .line 64
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricFingerprintGuidePopup$Mrk56FzoXtPyXUGLWn-MHSPkOXQ;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricFingerprintGuidePopup$Mrk56FzoXtPyXUGLWn-MHSPkOXQ;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricFingerprintGuidePopup$9eMjzbd4HlY9V6rBG6EarDZ3hA8;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricFingerprintGuidePopup$9eMjzbd4HlY9V6rBG6EarDZ3hA8;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 123
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 74
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHandler:Landroid/os/Handler;

    .line 76
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    .line 77
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHidePopupRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->showMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsRunningState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/view/Display;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updateGuideText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->setPopupPosition()V

    return-void
.end method

.method private clearGuidePopup()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->dismissAnimation()V

    :cond_0
    return-void
.end method

.method private dismissAnimation()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 319
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 321
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 322
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic lambda$9eMjzbd4HlY9V6rBG6EarDZ3hA8(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibility(I)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    return-void
.end method

.method private setPopupPosition()V
    .locals 4

    .line 101
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 102
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_fingerprint_guide_popup_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v1

    .line 105
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v2

    sub-int/2addr v1, v2

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_fingerprint_guide_popup_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 108
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private showMessage()V
    .locals 3

    .line 288
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHelpString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 297
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateGuideText(Ljava/lang/String;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    .line 258
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHelpString:Ljava/lang/String;

    .line 259
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mHelpString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updatePopupVisibility()V
    .locals 2

    .line 265
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mIsRunningState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 269
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 270
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mDisplay:Landroid/view/Display;

    .line 271
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 275
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePopupVisibility(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/16 p1, 0x8

    .line 281
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->updatePopupVisibility()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$KeyguardBiometricFingerprintGuidePopup()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->clearGuidePopup()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardFingerprintGuidePopup"

    const-string v1, "onFinishInflate()"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    sget v0, Lcom/android/keyguard/R$id;->keyguard_fingerprint_guide_popup:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mKeyguardGuidePopup:Landroid/view/ViewGroup;

    .line 88
    sget v0, Lcom/android/keyguard/R$id;->keyguard_guide_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->mGuideText:Lcom/android/systemui/widget/SystemUITextView;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3ed1eb85    # 0.41f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
