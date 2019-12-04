.class public Lcom/android/keyguard/KeyguardDirectionLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDirectionLockView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;,
        Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# instance fields
.field private final MIN_INPUT_ALLOWED:I

.field private final WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field private final _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mBouncerShowing:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionDisplayView:Landroid/view/ViewGroup;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDot:Lcom/android/systemui/widget/SystemUIImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mDotMarginLeft:D

.field private mDotMarginRight:D

.field private mEcaView:Landroid/view/View;

.field private mErrorMessage:Ljava/lang/String;

.field private mForgotDirectionLockButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsAccountExist:Z

.field private mIsChecking:Z

.field private mIsSleeping:Z

.field private mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

.field private final mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mPlayBeep:Z

.field private mPlayVibration:Z

.field private mPlayVoice:Z

.field private mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

.field private mShowArrow:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

.field private mTotalFailedDirectionLockAttempts:I

.field private final mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 300
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "-1"

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    const/4 p2, 0x0

    .line 104
    iput p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-string/jumbo p2, "white_lockscreen_wallpaper"

    .line 130
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    const-string p2, ""

    .line 131
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    const-wide/16 v0, -0x1b58

    .line 152
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    .line 157
    new-instance p2, Lcom/android/keyguard/KeyguardDirectionLockView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$1;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance p2, Lcom/android/keyguard/KeyguardDirectionLockView$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView$2;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance p2, Lcom/android/keyguard/KeyguardDirectionLockView$3;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$3;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 309
    new-instance p2, Lcom/android/keyguard/KeyguardDirectionLockView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$4;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    .line 397
    sget-object p2, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$zaheF9zhL0S7-B-wSfIN6lFTIA4;->INSTANCE:Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$zaheF9zhL0S7-B-wSfIN6lFTIA4;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 1269
    new-instance p2, Lcom/android/keyguard/KeyguardDirectionLockView$8;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$8;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    .line 301
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 302
    invoke-static {p1}, Lcom/android/systemui/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/systemui/KeyguardTextBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    .line 304
    const-class p1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardDirectionLockView;J)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleBiometricsAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBouncerShowing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardDirectionLockView;)J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/KeyguardDirectionLockView;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLastPokeTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    return p0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/KeyguardDirectionLockView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/keyguard/KeyguardDirectionLockView;)I
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateErrorText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardDirectionLockView;J)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Handler;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/KeyguardTextBuilder;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardDirectionLockView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsChecking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->checkPasswordAndHandle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private checkPasswordAndHandle()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 185
    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->MIN_INPUT_ALLOWED:I

    if-ge v0, v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 196
    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 197
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$wmklGIm06WYs5_bD5LBTEi7tGdc;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$wmklGIm06WYs5_bD5LBTEi7tGdc;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 195
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "KeyguardDirectionLock"

    const-string v0, "do nothing on no direction input case"

    .line 186
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearDots()V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 2

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "in disableDevicePermanently()"

    .line 1243
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 1249
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetTimer()V

    .line 1250
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x10402de

    .line 1252
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1251
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 2

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "displayDefaultSecurityMessage()"

    .line 829
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    .line 831
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private handleAndPerformDotAnimations()V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_1

    .line 675
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_1
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "keyguard_direction_view_dot_circle"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginBackground(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgBackground(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setThemeBackground(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "whitebg_keyguard_text_color"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgColor(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    .line 686
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 688
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 691
    :cond_2
    iget-wide v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 692
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 697
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 10

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "handleAttemptLockout"

    .line 948
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 950
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 951
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 952
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 953
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    .line 955
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetTimer()V

    .line 956
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 958
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    .line 963
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 967
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 968
    invoke-virtual {v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 969
    iput-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 973
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_2

    .line 974
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 975
    iput-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 978
    :cond_2
    new-instance v9, Lcom/android/keyguard/KeyguardDirectionLockView$7;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/KeyguardDirectionLockView$7;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;JJI)V

    .line 1031
    invoke-virtual {v9}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleBiometricsAttemptLockout(J)V
    .locals 9

    .line 1282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, p1, v0

    .line 1285
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    const/4 v0, 0x0

    .line 1287
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1289
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

    const-string p2, "KeyguardDirectionLock"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1293
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic lambda$new$1(I)V
    .locals 0

    return-void
.end method

.method private resetTimer()V
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 649
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    :cond_0
    return-void
.end method

.method private updateErrorText()Ljava/lang/String;
    .locals 6

    .line 634
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getRemainingAttempt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 639
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_direction_lock:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V
    .locals 2

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "in updateFooter()"

    .line 715
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    return-void

    .line 721
    :cond_0
    sget-object v1, Lcom/android/keyguard/KeyguardDirectionLockView$9;->$SwitchMap$com$android$keyguard$KeyguardDirectionLockView$FooterMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "mode VerifyUnlocked"

    .line 738
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "mode ForgotLockDirection changing to BackupPIN"

    .line 731
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string p1, "mode normal"

    .line 724
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mForgotDirectionLockButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    if-eqz p0, :cond_4

    .line 745
    check-cast p0, Lcom/android/keyguard/SecEmergencyCarrierArea;

    invoke-virtual {p0}, Lcom/android/keyguard/SecEmergencyCarrierArea;->resizeFooter()V

    :cond_4
    return-void
.end method

.method private updateLayout()V
    .locals 1

    .line 1257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionDisplayView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1262
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    .line 91
    check-cast p1, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual/range {p0 .. p9}, Lcom/android/keyguard/KeyguardDirectionLockView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const-string p0, "KeyguardDirectionLock"

    const-string v0, "in hasOverlappingRendering()"

    .line 1234
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$checkPasswordAndHandle$0$KeyguardDirectionLockView(ZI)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardDirectionLock"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    iput p2, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/16 p1, 0x25

    .line 204
    iput p1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x23

    .line 206
    iput p1, v0, Landroid/os/Message;->what:I

    .line 208
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$KeyguardDirectionLockView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 580
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 581
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 583
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDot:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$3$KeyguardDirectionLockView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 615
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 616
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 617
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    const-string p0, "KeyguardDirectionLock"

    const-string v0, "in needsInput()"

    .line 1050
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "onAttachedToWindow()"

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1159
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "onDetachedFromWindow()"

    .line 1160
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1164
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .line 406
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "in onFinishInflate()"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 409
    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 410
    sget v1, Lcom/android/keyguard/R$id;->directionLockView:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/DirectionLockView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    .line 413
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 416
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x64

    const-string/jumbo v3, "tts_default_rate"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTextToSpeech Rate - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 421
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 425
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "universal_lock_vibration"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    .line 427
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    .line 429
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v0, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mHashMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.SMT.KEY_PARAM"

    const-string v4, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionImageView:Landroid/widget/ImageView;

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mShowArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mPlayBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    .line 447
    new-instance v0, Lcom/android/keyguard/KeyguardDirectionLockView$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView$5;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionLockAfterPasswordCheckedHandler:Landroid/os/Handler;

    .line 526
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mEcaView:Landroid/view/View;

    .line 530
    sget v0, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_5

    .line 532
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 536
    :cond_5
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 542
    :cond_6
    sget v0, Lcom/android/keyguard/R$id;->biometric_timeout_message:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 545
    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 546
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    .line 553
    :cond_7
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v5, 0x63

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 558
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    .line 559
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 563
    sget v0, Lcom/android/keyguard/R$id;->dot_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotLayout:Landroid/widget/LinearLayout;

    .line 565
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->dot_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    .line 566
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->dot_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mVibrator:Landroid/os/Vibrator;

    .line 572
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$drawable;->keyguard_direction_view_dot_circle:I

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 575
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 578
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$ZLayVhB4n9Rx1cC5MTQWtqyL7L8;

    invoke-direct {v9, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$ZLayVhB4n9Rx1cC5MTQWtqyL7L8;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/android/keyguard/KeyguardDirectionLockView$6;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardDirectionLockView$6;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v9, Lcom/android/keyguard/R$dimen;->dot_size:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-double v9, v1

    iget-wide v11, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginLeft:D

    add-double/2addr v9, v11

    iget-wide v11, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotMarginRight:D

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    div-double/2addr v9, v11

    new-array v0, v0, [F

    double-to-float v1, v9

    aput v1, v0, v3

    aput v4, v0, v2

    .line 610
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 612
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$P5M0rb8hhucHzlx0ciydCFhXncc;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardDirectionLockView$P5M0rb8hhucHzlx0ciydCFhXncc;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 622
    sget v0, Lcom/android/keyguard/R$id;->direction_diplay_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionDisplayView:Landroid/view/ViewGroup;

    .line 623
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateLayout()V

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "in onPause()"

    .line 1100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1103
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v0, :cond_1

    .line 1108
    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1112
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1114
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-eqz v0, :cond_3

    .line 1119
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    .line 1120
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardBiometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 1124
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    return-void
.end method

.method public onResume(I)V
    .locals 4

    const-string p1, "KeyguardDirectionLock"

    const-string v0, "in onResume()"

    .line 1135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    .line 1137
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1138
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1137
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->displayDefaultSecurityMessage()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "KeyguardDirectionLock"

    const-string p1, "onTouchEvent()"

    .line 762
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardDirectionLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 860
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 862
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetTimer()V

    .line 863
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "reset()"

    .line 771
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 775
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 776
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 778
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->resetTimer()V

    .line 779
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 781
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 782
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 786
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    .line 787
    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->disableDevicePermanently()V

    move-wide v4, v2

    goto :goto_0

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v4

    .line 793
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 796
    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleAttemptLockout(J)V

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    .line 804
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsAccountExist:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTotalFailedDirectionLockAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    .line 805
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->ForgotLockDirection:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    goto :goto_0

    .line 807
    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->updateFooter(Lcom/android/keyguard/KeyguardDirectionLockView$FooterMode;)V

    .line 812
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 813
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 815
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->handleBiometricsAttemptLockout(J)V

    goto :goto_1

    .line 817
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mBIOMETRICLockoutMessage:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_5

    const-string v0, ""

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    .line 1087
    iget-object p2, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 1088
    sget-boolean p1, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz p1, :cond_0

    .line 1089
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->displayFailedAnimation()V

    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 5

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPromptReason() reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardDirectionLock"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    sget-boolean v0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1388

    if-eqz p1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1060
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 1059
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    return-void

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    .line 1069
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1071
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    .line 1075
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setTimeout(I)V

    goto :goto_0

    .line 1078
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/keyguard/R$string;->kg_none_direction_none_instructions:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    const-string p0, "KeyguardDirectionLock"

    const-string v0, "in startAppearAnimation()"

    .line 1186
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    const-string v0, "KeyguardDirectionLock"

    const-string v1, "in startDisappearAnimation()"

    .line 1198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 1200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 1202
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mIsSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 1204
    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView;->mTimer:Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStitchingTimer;

    .line 1207
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->clearDots()V

    .line 1209
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1210
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1211
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1213
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x10c000f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 1212
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 1214
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1215
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p0, 0x1

    return p0
.end method
