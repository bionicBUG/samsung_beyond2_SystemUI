.class public abstract Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSecAbsKeyInputView.java"


# instance fields
.field protected m2StepVerification:Z

.field protected mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mBouncerShowing:Z

.field private mCarrierText:Landroid/view/View;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mCurrentRotation:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private mEntry:[B

.field private mHandler:Landroid/os/Handler;

.field private mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

.field private mInputContainer:Landroid/widget/LinearLayout;

.field private mIsBiometricLockoutPWView:Z

.field private mIsFaceRunning:Z

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

.field protected final mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field protected final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mMessageArea:Landroid/widget/LinearLayout;

.field protected mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field protected mPromptReason:I

.field private final mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private mSecondsRemaining:I

.field protected mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSecurityView:Landroid/widget/LinearLayout;

.field private mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mSwitchImeButton:Landroid/view/View;

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 77
    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 79
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    .line 80
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    .line 81
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    .line 82
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    .line 107
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHandler:Landroid/os/Handler;

    .line 119
    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    .line 120
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$0chxZTm1d3PnU_XmywkIVbeyX_g;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$0chxZTm1d3PnU_XmywkIVbeyX_g;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 121
    new-instance p2, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$6oBsVqm6yBuZ3fqz73Y-7_aGU-0;

    invoke-direct {p2, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardSecAbsKeyInputView$6oBsVqm6yBuZ3fqz73Y-7_aGU-0;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 125
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsBiometricLockoutPWView:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsFaceRunning:Z

    .line 130
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 264
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 1359
    new-instance p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 282
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 283
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    .line 286
    const-class p2, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 288
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/android/systemui/KnoxStateMonitor;->isMultifactorAuthEnforced()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    .line 291
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p2, :cond_2

    .line 292
    :cond_1
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    .line 293
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I
    .locals 0

    .line 74
    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;J)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsBiometricLockoutPWView:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsBiometricLockoutPWView:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayoutForAttemptRemainingBeforeWipe()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isLayoutAdjustmentModel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPINSecurityView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsFaceRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private calculateLandscapeViewWidth(Landroid/graphics/Point;)I
    .locals 3

    .line 1264
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    .line 1265
    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1266
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1269
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1270
    iget p0, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p0, v1

    .line 1271
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 v0, p0, 0x2

    :cond_0
    return v0
.end method

.method private disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string v1, "disableDevicePermanently"

    .line 1304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 1306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    .line 1307
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x10402de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getStringFromId(I)Ljava/lang/String;
    .locals 0

    .line 554
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 9

    .line 1330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, p1, v0

    .line 1333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 1335
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 1338
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1341
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

    const-string p2, "KeyguardSecAbsKeyInputView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1346
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1347
    invoke-virtual {p1, p2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 1349
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private isBiometriclockoutScreenzoom()Z
    .locals 1

    .line 1423
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isLayoutAdjustmentModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1426
    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mIsBiometricLockoutPWView:Z

    return p0
.end method

.method private isFullscreenBouncer(I)Z
    .locals 0

    .line 1286
    sget p0, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    if-eq p1, p0, :cond_1

    sget p0, Lcom/android/keyguard/R$id;->keyguard_sec_sim_perso_view:I

    if-eq p1, p0, :cond_1

    sget p0, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    if-eq p1, p0, :cond_1

    sget p0, Lcom/android/keyguard/R$id;->keyguard_fmm_view:I

    if-ne p1, p0, :cond_0

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

.method private isHintText()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHintTextArea;->getPasswordHintText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 364
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

.method private isLayoutAdjustmentModel()Z
    .locals 2

    .line 1411
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1412
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x21c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isPINSecurityView(I)Z
    .locals 0

    .line 1278
    sget p0, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPasswordView(I)Z
    .locals 0

    .line 1282
    sget p0, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$0chxZTm1d3PnU_XmywkIVbeyX_g(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout(I)V

    return-void
.end method

.method private reportAuditLog(ILjava/lang/String;)V
    .locals 13

    const-string p0, "User "

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 1316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has exceeded number of authentication failure limit when using "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " authentication"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "KeyguardSecAbsKeyInputView"

    move v6, p1

    .line 1315
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 1321
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " has exceeded number of authentication failure limit"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v10, "KeyguardSecAbsKeyInputView"

    move v12, p1

    .line 1320
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private updateLandscapeLayout(I)V
    .locals 9

    .line 895
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 896
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v1

    .line 897
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_0

    .line 898
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 900
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v2, "background"

    .line 901
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    .line 902
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 903
    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box_whitebg:I

    goto :goto_0

    .line 904
    :cond_1
    sget v2, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box:I

    .line 902
    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 905
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 906
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 907
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 908
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 910
    :cond_2
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 912
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    const/16 v5, 0x50

    .line 916
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 917
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 918
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    .line 920
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 921
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    .line 922
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 923
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 924
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 925
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->calculateLandscapeViewWidth(Landroid/graphics/Point;)I

    move-result v6

    .line 926
    sget v8, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 927
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 928
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 929
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 930
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 931
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 932
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v4, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 933
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v4, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 935
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 936
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 938
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_6

    .line 939
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 940
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 941
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 942
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 943
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_3

    .line 945
    :cond_5
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 946
    sget v7, Lcom/android/keyguard/R$dimen;->kg_pin_container_margin_top:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 947
    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 948
    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v3, Lcom/android/keyguard/R$dimen;->kg_pin_container_margin_top:I

    .line 949
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/keyguard/R$dimen;->kg_pin_container_margin_bottom:I

    .line 952
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    .line 955
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side:I

    .line 956
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 957
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 959
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 966
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 967
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_ime_button_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 968
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 973
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 974
    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    .line 975
    move-object v1, v2

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x51

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 976
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 977
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 979
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :catch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 985
    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 986
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 987
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 988
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 989
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 991
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-nez p1, :cond_b

    .line 994
    sget p1, Lcom/android/keyguard/R$dimen;->kg_password_eca_margin_top_land:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 996
    :cond_b
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 997
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 999
    :cond_c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_d

    const/16 p1, 0x8

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 760
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout(I)V

    return-void
.end method

.method private updateLayout(I)V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    .line 765
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentRotation:I

    .line 766
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v1, :cond_0

    .line 767
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateTabletLayout(I)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 774
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLandscapeLayout(I)V

    goto :goto_1

    .line 772
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updatePortraitLayout(I)V

    .line 776
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayoutForAttemptRemainingBeforeWipe()V

    :goto_2
    return-void
.end method

.method private updateLayoutForAttemptRemainingBeforeWipe()V
    .locals 13

    .line 1203
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container_hidden:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1204
    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v1

    .line 1209
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    .line 1210
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1211
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    .line 1212
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1213
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1214
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v5, v7, :cond_2

    const/4 v11, 0x3

    if-eq v5, v11, :cond_2

    .line 1250
    iget v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    if-ltz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1252
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1253
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1256
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1218
    :cond_2
    iget v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    if-ltz v5, :cond_4

    .line 1219
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1220
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1221
    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v5

    .line 1222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$dimen;->kg_message_area_padding_side_lockout:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/android/keyguard/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1225
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/keyguard/R$dimen;->status_bar_header_height_keyguard:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1226
    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v8

    .line 1227
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sub-int/2addr v5, v11

    .line 1231
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v10, v6, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1232
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1233
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1234
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1235
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1236
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/keyguard/R$dimen;->kg_pattern_eca_margin_bottom:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1237
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1239
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1240
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1241
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1242
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1243
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1258
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updatePortraitLayout(I)V
    .locals 10

    .line 781
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v1, "background"

    .line 783
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 784
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 785
    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box_whitebg:I

    goto :goto_0

    .line 786
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box:I

    .line 784
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 787
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 788
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 789
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 790
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometriclockoutScreenzoom()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 793
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 795
    :cond_2
    sget v5, Lcom/android/keyguard/R$dimen;->kg_security_input_box_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 797
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    const/16 v5, 0x51

    const/16 v6, 0x50

    if-eqz v1, :cond_6

    .line 801
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 802
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 803
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_6

    .line 805
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 806
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    .line 807
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 808
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 809
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 810
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v8, -0x2

    .line 811
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 812
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 813
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 814
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 815
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 816
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 817
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    .line 818
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 819
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 820
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 822
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 825
    :cond_4
    sget v9, Lcom/android/keyguard/R$dimen;->kg_pin_container_side_margin:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 826
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 827
    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 828
    sget v2, Lcom/android/keyguard/R$dimen;->kg_pin_container_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 829
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9, v3, v9, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 831
    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 838
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 839
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_ime_button_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 840
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 845
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 846
    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    .line 847
    move-object v1, v2

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 848
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 849
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 851
    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :catch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 858
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 859
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 860
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 861
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isPasswordView(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 862
    sget p1, Lcom/android/keyguard/R$dimen;->kg_password_eca_margin_top:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 864
    :cond_a
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 865
    sget v5, Lcom/android/keyguard/R$dimen;->kg_pin_eca_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 866
    invoke-virtual {v1, v2, v4, p1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 867
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_d

    .line 870
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometriclockoutScreenzoom()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 871
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_3

    .line 873
    :cond_c
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 876
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_f

    .line 877
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 878
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometriclockoutScreenzoom()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 879
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    .line 881
    :cond_e
    sget v1, Lcom/android/keyguard/R$dimen;->kg_message_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 883
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 885
    :cond_f
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p1, :cond_10

    .line 886
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometriclockoutScreenzoom()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 887
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 888
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 889
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 6

    .line 1005
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1006
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const-string v1, "background"

    .line 1007
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 1008
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1009
    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box_whitebg:I

    goto :goto_0

    .line 1010
    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_security_input_box:I

    .line 1008
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/16 v3, 0x50

    .line 1013
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1014
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1015
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1016
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 1017
    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_width_tablet:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x2

    .line 1018
    div-int/2addr v1, v3

    .line 1019
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1020
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1021
    :cond_2
    div-int/lit8 v4, v1, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    .line 1037
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 1030
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    sub-int v3, v1, v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 1034
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    goto :goto_1

    .line 1025
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    add-int v3, v1, v4

    sub-int v4, v1, v4

    invoke-virtual {p1, v3, v2, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1040
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1041
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1042
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1043
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isFullscreenBouncer(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1044
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1048
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1050
    sget v1, Lcom/android/keyguard/R$dimen;->kg_security_ime_button_side_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1051
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 1055
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1056
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1057
    instance-of p1, p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_b

    .line 1058
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isFullscreenBouncer(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1059
    move-object p1, v1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/android/keyguard/R$dimen;->kg_message_area_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1061
    :cond_a
    move-object p1, v1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x51

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1063
    :cond_b
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :catch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :cond_c
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1071
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1072
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1073
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1074
    sget v5, Lcom/android/keyguard/R$dimen;->kg_pin_eca_margin_bottom:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1075
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1076
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    :cond_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_e

    .line 1079
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected displayDefaultSecurityMessage()V
    .locals 0

    return-void
.end method

.method protected getReversePortraitStringForTablet()Ljava/lang/String;
    .locals 2

    .line 1375
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1376
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    sget p0, Lcom/android/keyguard/R$string;->kg_iris_not_supported_at_180_degree:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1378
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1379
    sget p0, Lcom/android/keyguard/R$string;->kg_ib_not_supported_at_180_degree:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    .line 562
    sget-boolean v1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 563
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 568
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 573
    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 575
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 576
    new-instance v8, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;JJ)V

    .line 622
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected isBiometricLockoutLandscape()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isBiometricsCondition()Z
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1386
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

.method public synthetic lambda$new$0$KeyguardSecAbsKeyInputView()V
    .locals 1

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecondsRemaining:I

    .line 123
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 0

    .line 1355
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 299
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 748
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 749
    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    .line 751
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 311
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 372
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 373
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sub_help_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 374
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 377
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DIRECT_CALL_TO_ECC:Z

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 379
    sget v1, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v1, v0}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    .line 385
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->message_area:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mMessageArea:Landroid/widget/LinearLayout;

    .line 386
    sget v0, Lcom/android/keyguard/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mContainer:Landroid/widget/LinearLayout;

    .line 387
    sget v0, Lcom/android/keyguard/R$id;->input_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mInputContainer:Landroid/widget/LinearLayout;

    .line 388
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentOrientation:I

    .line 389
    sget v0, Lcom/android/keyguard/R$id;->password_entry_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 390
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSecurityView:Landroid/widget/LinearLayout;

    .line 391
    sget v0, Lcom/android/keyguard/R$id;->bottom_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBottomView:Landroid/widget/LinearLayout;

    .line 392
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCarrierText:Landroid/view/View;

    .line 393
    sget v0, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSwitchImeButton:Landroid/view/View;

    .line 395
    sget v0, Lcom/android/keyguard/R$id;->hint_text_box:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardHintTextArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    .line 396
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 400
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    .line 403
    sget v0, Lcom/android/keyguard/R$id;->biometric_timeout_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 407
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    .line 636
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method protected onPasswordChecked(IZIZLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v0, p3

    .line 432
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 433
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPasswordChecked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " timeoutMs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KeyguardSecAbsKeyInputView"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-eqz v3, :cond_5

    .line 436
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 437
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isPwdChangeRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 441
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v11

    .line 442
    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v12

    .line 443
    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v13

    .line 444
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.android.settings"

    const-string v10, "com.android.settings.password.ChooseLockPassword"

    .line 445
    invoke-virtual {v14, v15, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "lockscreen.password_type"

    .line 446
    invoke-virtual {v14, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "lockscreen.password_min"

    .line 447
    invoke-virtual {v14, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "lockscreen.password_max"

    .line 448
    invoke-virtual {v14, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    const-string v11, "lockscreen.password_old"

    invoke-virtual {v14, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 450
    iget-object v10, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    const-string v11, "password"

    invoke-virtual {v14, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v10, "confirm_credentials"

    .line 451
    invoke-virtual {v14, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "isRecovery"

    .line 452
    invoke-virtual {v14, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    .line 453
    invoke-virtual {v14, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v10, 0x400000

    .line 454
    invoke-virtual {v14, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v10, 0x800000

    .line 455
    invoke-virtual {v14, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v2, :cond_3

    .line 457
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resetPassword : encyptionStatus is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v7, :cond_2

    if-ne v0, v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "resetPassword : extra_require_password won\'t be set as true."

    .line 464
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "extra_require_password"

    .line 461
    invoke-virtual {v14, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "resetPassword : extra_require_password will be set as true."

    .line 462
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v0, "resetPassword : it\'s not for owner."

    .line 467
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v14, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find the component "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const-string v0, "onPasswordChecked"

    .line 475
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2, v6, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    if-eqz v4, :cond_f

    .line 479
    iput-boolean v6, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 480
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v6, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto/16 :goto_8

    .line 483
    :cond_5
    iget-boolean v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v4, :cond_7

    .line 484
    iget-object v4, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    .line 485
    invoke-virtual {v4}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v4

    const/4 v8, -0x1

    if-lt v4, v9, :cond_6

    const v4, 0xc378

    .line 486
    sget-object v9, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v4, v8, v9}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 488
    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_4

    :cond_6
    const v4, 0xc36b

    .line 490
    sget-object v9, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v4, v8, v9}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 492
    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v8, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_7
    :goto_4
    if-eqz p4, :cond_c

    .line 498
    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v2, v5, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 499
    iget-object v4, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 500
    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 501
    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    if-nez v0, :cond_9

    .line 504
    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v8

    if-ne v8, v4, :cond_9

    .line 505
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 506
    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6

    :cond_9
    if-lez v0, :cond_c

    .line 509
    sget-boolean v8, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v8, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 510
    iget-object v8, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    :cond_a
    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v8

    .line 513
    invoke-virtual {v1, v8, v9}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->notifyKeyguardLockout()V

    .line 517
    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAllBiometricsListeningState()V

    goto :goto_6

    :cond_b
    :goto_5
    move-object/from16 v4, p5

    .line 502
    invoke-direct {v1, v2, v4}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reportAuditLog(ILjava/lang/String;)V

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    .line 520
    :cond_c
    :goto_6
    sget-boolean v2, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-nez v2, :cond_d

    if-nez v0, :cond_f

    .line 522
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_8

    :cond_d
    int-to-long v8, v0

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_f

    .line 526
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result v0

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getStringFromId(I)Ljava/lang/String;

    move-result-object v2

    if-lez v0, :cond_e

    .line 529
    iget-object v4, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    new-array v9, v6, [Ljava/lang/Object;

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 529
    invoke-virtual {v2, v8, v0, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 532
    :cond_e
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    :goto_7
    iget-object v0, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    .line 539
    :cond_f
    :goto_8
    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    .line 541
    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    :cond_10
    xor-int/lit8 v0, v3, 0x1

    .line 543
    invoke-virtual {v1, v6, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 641
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 646
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 653
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 654
    invoke-static {}, Lcom/android/systemui/Rune;->isTesting()Z

    move-result p1

    if-nez p1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    :cond_0
    return-void
.end method

.method protected onUserInput()V
    .locals 2

    .line 627
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onUserInput()V

    .line 628
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 629
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->setSubSecurityMessage(II)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 9

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    .line 327
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(ZZ)V

    .line 329
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v1

    .line 331
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->updateLayout()V

    .line 333
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 334
    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 335
    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 338
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 341
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    goto :goto_1

    .line 343
    :cond_2
    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isHintText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 345
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    .line 350
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 351
    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleBiometricsAttemptLockout(J)V

    goto :goto_1

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    const-string v1, ""

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_1

    .line 336
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->disableDevicePermanently()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected setSubSecurityMessage(II)V
    .locals 5

    .line 695
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_8

    .line 696
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 697
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 698
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    const-string v2, ""

    const/16 v3, 0x8

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 699
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDisableDeviceByMultifactor()Z

    move-result v1

    if-nez v1, :cond_7

    .line 700
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p2, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 708
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    new-array v2, p2, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v1, p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->formatMessage(I[Ljava/lang/Object;)V

    .line 712
    :goto_0
    iget p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mCurrentRotation:I

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    .line 732
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometriclockoutScreenzoom()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 733
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 734
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 735
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 738
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 715
    :cond_4
    sget-boolean p1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez p1, :cond_5

    .line 726
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 717
    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->isBiometricLockoutLandscape()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 718
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 720
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mBiometricLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 723
    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_2

    .line 701
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 702
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mSubSecurityMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 687
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    .line 688
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p1, :cond_0

    .line 689
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 6

    .line 661
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 663
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0

    .line 665
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPromptReason:I

    const/16 v0, 0x1388

    if-eqz p1, :cond_2

    .line 667
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    return-void

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 672
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPromptReasonStringRes(I)I

    move-result p1

    if-nez p1, :cond_4

    .line 674
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    goto :goto_0

    .line 681
    :cond_3
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showPromptReason(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 2

    .line 413
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeyguardSecAbsKeyInputView"

    const-string/jumbo v1, "verifyPasswordAndUnlock"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mEntry:[B

    .line 426
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    return-void
.end method
