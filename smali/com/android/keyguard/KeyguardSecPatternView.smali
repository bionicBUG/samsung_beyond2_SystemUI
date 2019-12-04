.class public Lcom/android/keyguard/KeyguardSecPatternView;
.super Lcom/android/keyguard/KeyguardPatternView;
.source "KeyguardSecPatternView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;
    }
.end annotation


# instance fields
.field private m2StepVerification:Z

.field private mAttached:Z

.field private mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBouncerShowing:Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mCurrentRotation:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mEnableHaptics:Z

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mIsIrisAuthenticated:Z

.field private mIsIrisRunning:Z

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

.field private final mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field private mPatternIrisHelpText:Landroid/widget/TextView;

.field private mPromptReason:I

.field private final mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mSecondsRemaining:I

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 100
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    .line 104
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    .line 105
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisAuthenticated:Z

    const/4 p2, -0x1

    .line 109
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHandler:Landroid/os/Handler;

    .line 126
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    .line 127
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$NWH6NfVbLvXnr1DZUlKeTwFVqw8;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$NWH6NfVbLvXnr1DZUlKeTwFVqw8;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 128
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$qKw_mFi-dDrb955MCLxr3bBpZ_I;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecPatternView$qKw_mFi-dDrb955MCLxr3bBpZ_I;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 142
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternView$1;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 273
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternView$2;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 1228
    new-instance p2, Lcom/android/keyguard/KeyguardSecPatternView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecPatternView$4;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 291
    invoke-static {p1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    .line 293
    const-class p2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 295
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz p2, :cond_0

    .line 296
    invoke-virtual {p2}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    .line 298
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p2, :cond_2

    .line 299
    :cond_1
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    .line 300
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecPatternView;)I
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecPatternView;II)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEnableHaptics:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Vibrator;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSecPatternView;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->reportAuditLog(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardSecPatternView;I)Ljava/lang/String;
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardSecPatternView;)Ljava/lang/Runnable;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecPatternView;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePatternVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecPatternView;J)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisAuthenticated:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecPatternView;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mGoingToSleep:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mGoingToSleep:Z

    return p1
.end method

.method private calculateLandscapeViewWidth(Landroid/graphics/Point;)I
    .locals 2

    .line 1144
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    .line 1145
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1148
    iget p1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p0

    .line 1149
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v0, p1, 0x2

    :cond_0
    return v0
.end method

.method private disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardSecPatternView"

    const-string v1, "disableDevicePermanently"

    .line 804
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 806
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    .line 809
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x10402de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getReversePortraitStringForTablet()Ljava/lang/String;
    .locals 2

    .line 1244
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    sget p0, Lcom/android/keyguard/R$string;->kg_iris_not_supported_at_180_degree:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1247
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1248
    sget p0, Lcom/android/keyguard/R$string;->kg_ib_not_supported_at_180_degree:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 0

    .line 1259
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 9

    .line 1193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, p1, v0

    .line 1196
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 1198
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1201
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSecPatternView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1209
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1210
    invoke-virtual {p1, p2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1212
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private isBiometricsCondition()Z
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1255
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

.method private isExceptionalMessages()Z
    .locals 2

    .line 1263
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->getReversePortraitStringForTablet()Ljava/lang/String;

    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1267
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHintText()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 461
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isStrongAuthPromptMessage()Z
    .locals 2

    .line 1223
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$NWH6NfVbLvXnr1DZUlKeTwFVqw8(Lcom/android/keyguard/KeyguardSecPatternView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout(I)V

    return-void
.end method

.method private reportAuditLog(I)V
    .locals 7

    .line 835
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class p0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has exceeded number of authentication failure limit when using pattern authentication"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    move v6, p1

    .line 834
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setSubSecurityMessage(II)V
    .locals 3

    .line 1156
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_5

    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 1158
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    const-string v1, ""

    const/16 v2, 0x8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 1159
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p2, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_1
    if-nez p1, :cond_2

    .line 1167
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_0

    .line 1170
    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->getStringFromId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1172
    :goto_0
    iget p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentRotation:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    .line 1184
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 1176
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 1160
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateLandscapeLayout()V
    .locals 7

    .line 927
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 928
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v1

    .line 929
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_0

    .line 930
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 932
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 934
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 935
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 940
    iget v4, v1, Landroid/graphics/Point;->y:I

    sget v5, Lcom/android/keyguard/R$dimen;->kg_pattern_lock_pattern_view_margin_bottom:I

    .line 941
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 942
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    .line 943
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 944
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 945
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 946
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 951
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 952
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    .line 953
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 954
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->calculateLandscapeViewWidth(Landroid/graphics/Point;)I

    move-result v1

    .line 955
    sget v5, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 956
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 957
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 958
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    .line 959
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 960
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 961
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 962
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 963
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 968
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 969
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 972
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 973
    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_hint_text_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 975
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    .line 976
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 979
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 980
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 981
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 982
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 984
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 985
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    :cond_5
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_6

    const/16 v0, 0x8

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 851
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout(I)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 1

    .line 855
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentRotation:I

    .line 856
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    .line 857
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->updateTabletLayout(I)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 864
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLandscapeLayout()V

    goto :goto_1

    .line 862
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updatePortraitLayout()V

    .line 866
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 11

    .line 1089
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container_hidden:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1090
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1095
    :cond_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1096
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    .line 1097
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1098
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1099
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eq v4, v6, :cond_2

    const/4 v10, 0x3

    if-eq v4, v10, :cond_2

    .line 1129
    iget v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    if-ltz v4, :cond_1

    .line 1130
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1131
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1132
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 1134
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1136
    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1103
    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    if-ltz v4, :cond_3

    .line 1104
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1105
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1106
    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v4

    .line 1107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side_lockout:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1109
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/keyguard/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1110
    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v7

    .line 1111
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v9, v5, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1112
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1113
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1114
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1115
    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1117
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1119
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1120
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1121
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1122
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1138
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updatePatternVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 780
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisAuthenticated:Z

    if-nez p1, :cond_0

    return-void

    .line 783
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 785
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 786
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 787
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 788
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 789
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 792
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 794
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 795
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 796
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 797
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePortraitLayout()V
    .locals 7

    .line 871
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 874
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 875
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 876
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v4, 0x51

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 877
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 878
    sget v3, Lcom/android/keyguard/R$dimen;->kg_pattern_lock_pattern_view_width:I

    .line 879
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 880
    sget v3, Lcom/android/keyguard/R$dimen;->kg_pattern_lock_pattern_view_height:I

    .line 881
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 882
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 886
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 887
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    .line 888
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 889
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 890
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, -0x1

    .line 891
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 892
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 893
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 894
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 895
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 896
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v1, :cond_2

    .line 900
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 901
    sget v3, Lcom/android/keyguard/R$dimen;->kg_pattern_message_area_margin_bottom:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 903
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 906
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 907
    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_hint_text_margin_bottom:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 909
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintTextSize()V

    .line 910
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 913
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 914
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 915
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 916
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 917
    sget v6, Lcom/android/keyguard/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 918
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 919
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_5

    .line 922
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 4

    .line 993
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 994
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 995
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v1

    .line 996
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 997
    sget v2, Lcom/android/keyguard/R$dimen;->kg_message_area_width_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 998
    div-int/lit8 v1, v1, 0x2

    .line 999
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1000
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1001
    :cond_0
    div-int/lit8 v0, v1, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    .line 1014
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    sub-int v3, v1, v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 1005
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    add-int v3, v1, v0

    sub-int v0, v1, v0

    invoke-virtual {p1, v3, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1017
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1018
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1019
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1020
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 5

    .line 467
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_6

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v1, "KeyguardSecPatternView"

    if-nez v0, :cond_0

    const-string p0, "displayDefaultSecurityMessage mSecurityMessageDisplay is null"

    .line 469
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isStrongAuthPromptMessage()Z

    move-result v0

    const-string v2, " )"

    if-eqz v0, :cond_1

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDefaultSecurityMessage - isStrongAuthPromptMessage ( "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->showPromptReason(I)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isExceptionalMessages()Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDefaultSecurityMessage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 485
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_3

    .line 486
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    .line 488
    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_7

    .line 489
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 494
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 495
    sget v0, Lcom/android/keyguard/R$string;->kg_biometrics_has_confirmed:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->setSubSecurityMessage(II)V

    goto :goto_1

    .line 501
    :cond_6
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    :cond_7
    :goto_1
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 611
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 617
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 619
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 620
    new-instance v8, Lcom/android/keyguard/KeyguardSecPatternView$3;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecPatternView$3;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;JJ)V

    .line 671
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic lambda$new$0$KeyguardSecPatternView()V
    .locals 1

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecondsRemaining:I

    .line 130
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 0

    .line 1218
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 306
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onAttachedToWindow()V

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 311
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    const-string v0, "background"

    .line 317
    invoke-static {v0}, Lcom/android/systemui/widget/Util;->convertFlag(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    .line 138
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 326
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    .line 331
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    .line 337
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 346
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V

    .line 348
    sget v0, Lcom/android/keyguard/R$id;->message_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mMessageArea:Landroid/widget/LinearLayout;

    .line 349
    sget v0, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mContainer:Landroid/widget/LinearLayout;

    .line 350
    sget v0, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSecurityView:Landroid/widget/LinearLayout;

    .line 353
    sget v0, Lcom/android/keyguard/R$id;->hint_text_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 354
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 359
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_1

    .line 360
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 367
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->iris_help_text_for_mkboard:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPatternIrisHelpText:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurStatusFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateStyle(I)V

    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    .line 376
    sget v0, Lcom/android/keyguard/R$id;->biometric_timeout_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 380
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mEnableHaptics:Z

    .line 381
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mVibrator:Landroid/os/Vibrator;

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecPatternView$SecUnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 676
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onPause()V

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 681
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 688
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->onResume(I)V

    .line 689
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 394
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 817
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 819
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDeadzoneSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 820
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVisibilityChanged() visibility : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecPatternView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 823
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "deadzone_v2"

    const-string v0, "3.33%,3.33%,0%"

    .line 825
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 8

    .line 400
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 409
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateLayout()V

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 414
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 415
    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 416
    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 419
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 422
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    goto/16 :goto_2

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    .line 425
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 427
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_5

    .line 431
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    .line 432
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->m2StepVerification:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 433
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 432
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mIsIrisRunning:Z

    if-nez v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 445
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6

    if-nez v6, :cond_6

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->handleBiometricsAttemptLockout(J)V

    goto :goto_2

    .line 449
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_8

    const-string v1, ""

    .line 450
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v7}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 417
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->disableDevicePermanently()V

    :cond_8
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 719
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    .line 720
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p1, :cond_0

    .line 721
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 5

    .line 694
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_3

    .line 695
    iput p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mPromptReason:I

    const/16 v0, 0x1388

    if-eqz p1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 705
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 707
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    .line 710
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    .line 713
    :cond_3
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->showPromptReason(I)V

    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 6

    .line 727
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 728
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 729
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 730
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    aput-object p0, v4, v1

    .line 731
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x14d

    .line 732
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 733
    new-instance p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x0

    .line 734
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 735
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3fa66666    # 1.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 741
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 742
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 743
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa7

    .line 744
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 745
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 746
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 748
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method

.method public updateStyle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->updateStyle(ILandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    instance-of p2, p0, Lcom/android/keyguard/SecLockPatternView;

    if-eqz p2, :cond_0

    .line 773
    check-cast p0, Lcom/android/keyguard/SecLockPatternView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/SecLockPatternView;->updateViewStyle(I)V

    :cond_0
    return-void
.end method
