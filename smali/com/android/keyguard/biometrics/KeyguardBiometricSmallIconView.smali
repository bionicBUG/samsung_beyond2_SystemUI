.class public Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBiometricSmallIconView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field protected mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

.field protected mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

.field private mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mBiometricUnlockRoot:Landroid/widget/FrameLayout;

.field protected mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

.field protected mBouncerShowing:Z

.field protected mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIsQsExpanding:Z

.field private mIsShowingUnlockIcon:Z

.field private mIsTouched:Z

.field private mKeyguardShowing:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field protected mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mUpdateHelpTextRunnable:Ljava/lang/Runnable;

.field protected mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$ISG7l82FW7RjJ8CGO5HQM_yMPk0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$ISG7l82FW7RjJ8CGO5HQM_yMPk0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 97
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    .line 104
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsTouched:Z

    .line 227
    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 114
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string p2, "accessibility"

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 116
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    .line 117
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsQsExpanding:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsQsExpanding:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsTouched:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsTouched:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->setIrisHelpText(Ljava/lang/String;)V

    return-void
.end method

.method private canPlayCamaraAffodanceVI()Z
    .locals 1

    .line 762
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_AFFORDANCE_VI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 764
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 765
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 766
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDisplayCutoutHideNotch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 767
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canPlayFaceRecognitionVI()Z
    .locals 1

    .line 755
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 757
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 758
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

.method private clearWithPreviewText(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    const/16 v3, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    .line 183
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_5

    .line 165
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    .line 188
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateTabletLayout()V

    return-void
.end method

.method private isBiometricRunning()Z
    .locals 2

    .line 597
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 598
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 599
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSemFaceAuthenticated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 600
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIBAuthenticated(I)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInViewArea(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 521
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTimerRunning()Z
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 592
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public static synthetic lambda$ISG7l82FW7RjJ8CGO5HQM_yMPk0(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method static synthetic lambda$updateUnlockIcon$5(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "KeyguardBiometricSmallIconView"

    const-string v0, "Unable to parse json composition"

    .line 696
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$updateVisualCueIcon$3(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "KeyguardBiometricSmallIconView"

    const-string v0, "Unable to parse json composition"

    .line 655
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBiometricNoMatchText(Ljava/lang/String;)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v1, :cond_0

    .line 538
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 540
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setIrisHelpText(Ljava/lang/String;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 527
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 528
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIrisTimeoutErrorCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 531
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    :cond_0
    return-void
.end method

.method private updateErrorText(Ljava/lang/String;)V
    .locals 4

    .line 614
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_1

    .line 616
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    const/4 v0, 0x1

    .line 617
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    .line 618
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->setBiometricNoMatchText(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateHelpTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateIconVisibility()V
    .locals 5

    .line 545
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    if-nez v0, :cond_0

    .line 547
    invoke-direct {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    .line 548
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v1, :cond_6

    .line 550
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 551
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    goto/16 :goto_2

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isTimerRunning()Z

    move-result v0

    const/16 v4, 0x8

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 554
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-nez v0, :cond_4

    .line 557
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isBiometricRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    invoke-direct {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    .line 559
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayFaceRecognitionVI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    .line 561
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz v0, :cond_2

    .line 565
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 569
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateTabletLayout()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 572
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    .line 574
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 575
    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayCamaraAffodanceVI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setAffordanceVI()V

    .line 577
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 579
    invoke-virtual {p0, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    .line 580
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 582
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateAnimation(Z)V

    .line 583
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 584
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_6

    .line 585
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateUnlockIcon()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    .line 683
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 684
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_unlock_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 685
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_unlock_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 686
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "top"

    .line 688
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 689
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "lock_unlocking_ic_whitebg.json"

    goto :goto_0

    :cond_0
    const-string v0, "lock_unlocking_ic.json"

    :goto_0
    invoke-static {v1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$-lqCRoMMXqFaHckJ9YxYdcgQN08;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$-lqCRoMMXqFaHckJ9YxYdcgQN08;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 696
    sget-object p0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$6G7K5o3XqfBxRqWtiYiAJbtf5DA;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    :cond_1
    return-void
.end method

.method private updateVisualCueIcon()V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_5

    .line 633
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const-string/jumbo v1, "top"

    .line 634
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 636
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 638
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

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 642
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 643
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

    .line 646
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

    .line 650
    :goto_3
    new-instance v2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$Sar6xN-0F0CD0dMb0-m7RW5fcsM;

    invoke-direct {v2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$Sar6xN-0F0CD0dMb0-m7RW5fcsM;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 655
    sget-object v2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;->INSTANCE:Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$mw-Icz9hxHBzcoxGQt0x8hYM-7k;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 656
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 657
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 658
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected isBiometricCondition()Z
    .locals 2

    .line 604
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 606
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 607
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 608
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 609
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p0

    if-eqz p0, :cond_3

    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    .line 610
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardBiometricSmallIconView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$KeyguardBiometricSmallIconView(Landroid/net/Uri;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method public synthetic lambda$updateUnlockIcon$4$KeyguardBiometricSmallIconView(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 693
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 694
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    return-void
.end method

.method public synthetic lambda$updateVisualCueIcon$2$KeyguardBiometricSmallIconView(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 652
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 653
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 193
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    .line 196
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "display_cutout_hide_notch"

    .line 197
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string/jumbo v0, "top"

    .line 199
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 492
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 494
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-nez p1, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    .line 496
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 207
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 209
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "KeyguardBiometricSmallIconView"

    const-string v1, "onFinishInflate()"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_cue_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    .line 126
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometrics_help_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    .line 127
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometrics_nomatch_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    .line 128
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometrics_cue_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 129
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_unlock_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    .line 130
    sget v0, Lcom/android/keyguard/R$id;->ic_biometric_unlock_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x2

    .line 132
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->clearWithPreviewText(I)V

    .line 133
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    .line 134
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    const/16 v1, 0x8

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-array v0, v0, [F

    .line 137
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$o_cBSuDRozij-qT949Nyd0Z7KRI;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$o_cBSuDRozij-qT949Nyd0Z7KRI;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 150
    new-instance v0, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$CSw5cFPV1CzGVcT6roqm0zpcuqM;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconView$CSw5cFPV1CzGVcT6roqm0zpcuqM;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 502
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isInViewArea(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayFaceRecognitionVI()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayCamaraAffodanceVI()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    return v1

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateCameraState()V

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public setPunchHoleVIView(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 751
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method public setUnlockIconVisibility(Z)V
    .locals 3

    .line 716
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 721
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 723
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockManager;->getInstance()Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getViewMode()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsQsExpanding:Z

    .line 724
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsQsExpanding:Z

    if-eqz v2, :cond_3

    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setUnlockIconVisibility : mIsQsExpanding = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsQsExpanding:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", callers = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardBiometricSmallIconView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method protected updateAnimation(Z)V
    .locals 2

    .line 663
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

    const-string v1, "KeyguardBiometricSmallIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 665
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayFaceRecognitionVI()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->canPlayCamaraAffodanceVI()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_4

    .line 668
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    .line 666
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_1

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricRecognitionView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_3

    .line 672
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 674
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    if-eqz p0, :cond_4

    .line 675
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected updateCameraState()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    const-string v1, "KeyguardBiometricSmallIconView"

    if-eqz v0, :cond_0

    const-string v0, "Stop Face recognition by touching on small preview"

    .line 732
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    .line 734
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 736
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Stop IRIS recognition by touching on small preview"

    .line 737
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsTouched:Z

    .line 739
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 741
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Stop IB recognition by touching on small preview"

    .line 743
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    .line 745
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateVisualCueIcon()V

    .line 222
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockIcon()V

    .line 223
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateIconVisibility()V

    return-void
.end method

.method protected updateTabletLayout()V
    .locals 0

    return-void
.end method

.method protected updateUnlockAnimation(Z)V
    .locals 2

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUnlockAnimation() play = "

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

    const-string v1, "KeyguardBiometricSmallIconView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 704
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 711
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mIsShowingUnlockIcon:Z

    :cond_3
    return-void
.end method
