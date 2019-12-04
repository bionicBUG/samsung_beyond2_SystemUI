.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "KeyguardSecIndicationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/IndicationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyguardSecIndicationController"


# instance fields
.field private mAffordancePivotY:I

.field private mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

.field private mBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mErrorColor:Landroid/content/res/ColorStateList;

.field private mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

.field private mIsEmergencyMode:Z

.field private mIsPowerSavingMode:Z

.field private mIsScreenOn:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field private mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

.field private mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWakingUpDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;)V
    .locals 2

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V

    .line 93
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e2e147b    # 0.17f

    const v0, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    const/4 p3, 0x0

    .line 106
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakingUpDisposable:Lio/reactivex/disposables/Disposable;

    const/4 p3, 0x4

    new-array p3, p3, [Landroid/net/Uri;

    const-string v0, "powersaving_switch"

    .line 110
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "psm_switch"

    .line 111
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p3, p1

    const-string p1, "low_power"

    .line 112
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p3, v0

    const-string p1, "emergency_mode"

    .line 113
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, p3, v1

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    .line 116
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 293
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 133
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    .line 135
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    .line 136
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addListener(Lcom/android/systemui/statusbar/IndicationChangeListener;)V

    .line 137
    sget p1, Lcom/android/systemui/R$id;->keyguard_upper_fingerprint_indication:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 139
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAffordancePivotY:I

    .line 141
    new-instance p1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    .line 142
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getIndicationTextView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getLockIconView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 150
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 151
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPowerSavingMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsPowerSavingMode:Z

    .line 152
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsEmergencyMode:Z

    const/4 p1, -0x1

    .line 153
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setupInitialIndications()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsPowerSavingMode:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->startCountdownTimer(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->startBiometricCountdownTimer(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isRunningCountdownState()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isLockscreenVisibleAndScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/phone/BounceInterpolator;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Ljava/util/ArrayList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isShowingDelayedHelpText()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakingUpDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakingUpDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->onStartedWakingUpDelayed()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addBatteryIndication()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method private addBatteryIndication()V
    .locals 12

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBatteryStatus()Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    move-result-object v7

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isPowerPluggedIn()Z

    move-result v0

    .line 587
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v1

    .line 588
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargingType()I

    move-result v2

    .line 589
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getChargeEnabled()Z

    move-result v3

    .line 592
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->getSwellingMode()I

    move-result v4

    .line 596
    iget-wide v5, v7, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->remaining:J

    .line 599
    const-class v8, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v8}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isPowerPluggedIn()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v3, :cond_1

    .line 602
    invoke-direct {p0, v5, v6, v2, v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getChargingText(JII)Ljava/lang/String;

    move-result-object v8

    .line 603
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isPowerPluggedInWired()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v10

    :goto_0
    move-object v0, p0

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 604
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_power_connect_charger:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 607
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isPowerPluggedInWired()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    move v6, v10

    :goto_1
    move-object v0, p0

    move-object v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 608
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 610
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 611
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BATTERY_RESTING:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 614
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private changeUpperIndication(Ljava/lang/CharSequence;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getChargingText(JII)Ljava/lang/String;
    .locals 4

    .line 808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isPowerCharged()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 810
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    const-string p1, "Fail to getChargingText"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 813
    :cond_0
    sget p1, Lcom/android/systemui/R$string;->kg_power_fully_charged:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 826
    :pswitch_0
    sget-boolean p3, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT_FOR_CHN:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_fast_charging_wirelessly_chn:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 827
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_fast_charging_wirelessly:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v1, p3

    goto :goto_1

    .line 822
    :pswitch_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_charging_wirelessly:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 822
    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 818
    :pswitch_2
    sget-boolean p3, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_HELP_TEXT_FOR_CHN:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_fast_charging_chn:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 819
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_fast_charging:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 830
    :pswitch_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_power_charging:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 833
    :goto_1
    sget-boolean p3, Lcom/android/systemui/Rune;->PWRUI_SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz p3, :cond_4

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_4

    if-nez p4, :cond_4

    .line 835
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0xa

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getEstimateChargingTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultInstruction(I)I
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    return p0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 784
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_unlock_smart_lock_instructions:I

    return p0

    .line 785
    :cond_1
    sget-boolean p1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 786
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 787
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 788
    :cond_3
    :goto_0
    sget p0, Lcom/android/systemui/R$string;->kg_swipe_unlock_instructions:I

    return p0
.end method

.method private getEstimateChargingTime(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 843
    div-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 847
    div-long v4, p1, v0

    long-to-int v2, v4

    int-to-long v4, v2

    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v0, 0x3c

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    .line 851
    div-long v4, p1, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p1, v5

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    long-to-int p1, p1

    const/4 p2, 0x2

    if-nez v2, :cond_2

    if-lt v4, p2, :cond_2

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/4 p1, 0x1

    if-lez v2, :cond_3

    if-lez v4, :cond_3

    .line 861
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->kg_power_time_format_hour_minute:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v3

    .line 862
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p1

    .line 861
    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    .line 865
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_power_time_format_hour:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 867
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_power_time_format_minute:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getUnlockGuideText(Z)Ljava/lang/CharSequence;
    .locals 12

    .line 626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isShowEmptyMessage()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 631
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 632
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    .line 633
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v3

    .line 634
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 635
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 636
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-eqz v2, :cond_2

    .line 637
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 638
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 639
    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 640
    invoke-virtual {v9, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v6

    :goto_2
    if-eqz v2, :cond_4

    .line 641
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    .line 643
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v2

    and-int/2addr v2, v9

    if-eqz v3, :cond_5

    .line 645
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v9

    and-int/2addr v8, v9

    :cond_5
    if-eqz v4, :cond_6

    .line 648
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v9

    and-int/2addr v5, v9

    .line 651
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v9

    .line 653
    iget-object v10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const-string v11, "accessibility"

    .line 654
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    .line 655
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v10

    .line 656
    sget-boolean v11, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    if-nez v2, :cond_7

    if-eqz v5, :cond_2b

    :cond_7
    if-nez v9, :cond_2b

    if-eqz v7, :cond_8

    if-nez v8, :cond_a

    :cond_8
    if-eqz v7, :cond_9

    if-nez v2, :cond_a

    :cond_9
    if-eqz v7, :cond_18

    if-eqz v5, :cond_18

    :cond_a
    if-eqz v7, :cond_e

    if-eqz v8, :cond_e

    if-nez v3, :cond_e

    if-eqz p1, :cond_c

    if-eqz v10, :cond_b

    .line 664
    sget v3, Lcom/android/systemui/R$string;->kg_iris_or_fingerprint_active_voice_assistant_instructions:I

    goto/16 :goto_5

    .line 665
    :cond_b
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_active_instructions:I

    goto/16 :goto_5

    :cond_c
    if-eqz v11, :cond_d

    goto/16 :goto_4

    .line 668
    :cond_d
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_instructions:I

    goto/16 :goto_5

    :cond_e
    if-eqz v7, :cond_12

    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    if-eqz p1, :cond_10

    if-eqz v10, :cond_f

    .line 673
    sget v3, Lcom/android/systemui/R$string;->kg_intelligent_or_fingerprint_active_voice_assistant_instructions:I

    goto/16 :goto_5

    .line 674
    :cond_f
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_active_instructions:I

    goto/16 :goto_5

    :cond_10
    if-eqz v11, :cond_11

    goto/16 :goto_4

    .line 677
    :cond_11
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_instructions:I

    goto/16 :goto_5

    :cond_12
    if-nez v7, :cond_14

    if-eqz v7, :cond_13

    if-nez v3, :cond_14

    :cond_13
    if-eqz v7, :cond_2a

    if-eqz v4, :cond_2a

    :cond_14
    if-eqz p1, :cond_16

    if-eqz v10, :cond_15

    .line 683
    sget v3, Lcom/android/systemui/R$string;->kg_biometrics_swipe_active_voice_assistant_instructions:I

    goto/16 :goto_5

    .line 684
    :cond_15
    sget v3, Lcom/android/systemui/R$string;->kg_biometrics_swipe_active_instructions:I

    goto/16 :goto_5

    :cond_16
    if-eqz v10, :cond_17

    .line 687
    sget v3, Lcom/android/systemui/R$string;->kg_biometrics_swipe_unlock_voice_assistant_instructions:I

    goto/16 :goto_5

    .line 688
    :cond_17
    sget v3, Lcom/android/systemui/R$string;->kg_biometrics_swipe_unlock_instructions:I

    goto/16 :goto_5

    :cond_18
    if-eqz v7, :cond_1c

    if-eqz p1, :cond_1a

    if-eqz v10, :cond_19

    .line 696
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_active_voice_assistant_instructions:I

    goto/16 :goto_5

    .line 697
    :cond_19
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_active_instructions:I

    goto/16 :goto_5

    :cond_1a
    if-eqz v11, :cond_1b

    goto :goto_4

    .line 700
    :cond_1b
    sget v3, Lcom/android/systemui/R$string;->kg_fingerprint_or_swipe_unlock_instructions:I

    goto :goto_5

    :cond_1c
    if-eqz v8, :cond_22

    if-eqz p1, :cond_1f

    if-eqz v3, :cond_1d

    .line 706
    sget v3, Lcom/android/systemui/R$string;->kg_iris_1st_active_instructions:I

    goto :goto_5

    :cond_1d
    if-eqz v10, :cond_1e

    .line 709
    sget v3, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    goto :goto_5

    .line 710
    :cond_1e
    sget v3, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    goto :goto_5

    :cond_1f
    if-eqz v3, :cond_20

    .line 714
    sget v3, Lcom/android/systemui/R$string;->kg_iris_1st_unlock_instructions:I

    goto :goto_5

    :cond_20
    if-eqz v10, :cond_21

    .line 717
    sget v3, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_instructions:I

    goto :goto_5

    .line 718
    :cond_21
    sget v3, Lcom/android/systemui/R$string;->kg_swipe_unlock_instructions:I

    goto :goto_5

    :cond_22
    if-eqz v2, :cond_24

    if-eqz p1, :cond_23

    .line 724
    sget v3, Lcom/android/systemui/R$string;->kg_face_1st_active_instructions:I

    goto :goto_5

    .line 726
    :cond_23
    sget v3, Lcom/android/systemui/R$string;->kg_face_1st_unlock_instructions:I

    goto :goto_5

    :cond_24
    if-eqz v5, :cond_2a

    if-eqz p1, :cond_27

    if-eqz v4, :cond_25

    .line 732
    sget v3, Lcom/android/systemui/R$string;->kg_intelligent_1st_active_instructions:I

    goto :goto_5

    :cond_25
    if-eqz v10, :cond_26

    .line 735
    sget v3, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    goto :goto_5

    .line 736
    :cond_26
    sget v3, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    goto :goto_5

    :cond_27
    if-eqz v4, :cond_28

    .line 740
    sget v3, Lcom/android/systemui/R$string;->kg_intelligent_1st_unlock_instructions:I

    goto :goto_5

    :cond_28
    if-eqz v10, :cond_29

    .line 743
    sget v3, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_instructions:I

    goto :goto_5

    .line 744
    :cond_29
    sget v3, Lcom/android/systemui/R$string;->kg_swipe_unlock_instructions:I

    goto :goto_5

    :cond_2a
    :goto_4
    move v3, v6

    :goto_5
    if-eqz v3, :cond_2b

    .line 749
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    if-eqz v10, :cond_30

    if-eqz p1, :cond_2c

    .line 754
    sget p1, Lcom/android/systemui/R$string;->kg_voice_assistant_active_instructions:I

    goto :goto_8

    .line 756
    :cond_2c
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_2e

    if-nez v7, :cond_2d

    if-nez v8, :cond_2d

    if-nez v2, :cond_2d

    if-eqz v5, :cond_2e

    .line 757
    :cond_2d
    sget p1, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_strong_auth_instructions:I

    goto :goto_8

    .line 759
    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    :goto_6
    goto :goto_7

    :cond_2f
    sget v6, Lcom/android/systemui/R$string;->kg_voice_assistant_unlock_instructions:I

    :goto_7
    move p1, v6

    goto :goto_8

    :cond_30
    if-eqz p1, :cond_31

    .line 764
    sget p1, Lcom/android/systemui/R$string;->kg_swipe_active_instructions:I

    goto :goto_8

    .line 766
    :cond_31
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-nez p1, :cond_33

    if-nez v7, :cond_32

    if-nez v8, :cond_32

    if-nez v2, :cond_32

    if-eqz v5, :cond_33

    .line 767
    :cond_32
    sget p1, Lcom/android/systemui/R$string;->kg_swipe_unlock_strong_auth_instructions:I

    goto :goto_8

    :cond_33
    if-eqz v7, :cond_34

    if-eqz v11, :cond_34

    .line 769
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_6

    :cond_34
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getDefaultInstruction(I)I

    move-result v6

    goto :goto_7

    :goto_8
    if-eqz p1, :cond_35

    .line 774
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    return-object v1
.end method

.method private isLockIconVisible()Z
    .locals 8

    .line 1089
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1090
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricType()I

    move-result v1

    .line 1091
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    .line 1093
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    and-int/lit8 v5, v1, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 1094
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1096
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 1097
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v6

    if-nez v2, :cond_1

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1100
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    .line 1101
    :goto_1
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1102
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1103
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    .line 1105
    :goto_2
    sget-boolean v7, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1106
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v7

    if-eqz v7, :cond_3

    return v4

    .line 1108
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    .line 1110
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isRunningCountdownState()Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    if-eqz v2, :cond_6

    return v4

    .line 1114
    :cond_6
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v5, :cond_7

    return v4

    .line 1116
    :cond_7
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result p0

    if-eqz p0, :cond_8

    if-eqz v1, :cond_8

    return v4

    :cond_8
    if-eqz v6, :cond_9

    if-nez v0, :cond_9

    return v3

    :cond_9
    return v4
.end method

.method private isLockscreenVisibleAndScreenOn()Z
    .locals 1

    .line 904
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedToShowEmptyMessage()Z
    .locals 1

    .line 897
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRunningBiometricCountdownState()Z
    .locals 4

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1145
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1146
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 1147
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isRunningCountdownState()Z
    .locals 4

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1131
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 1132
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1133
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isShowEmptyMessage()Z
    .locals 2

    .line 794
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SIM_PERM_DISABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 795
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 799
    :cond_0
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 800
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isShowingDelayedHelpText()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsPowerSavingMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsEmergencyMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isStrongAuth()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 875
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isStrongAuth()Z
    .locals 1

    .line 883
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 884
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 885
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 886
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x10

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

.method private onStartedWakingUpDelayed()V
    .locals 2

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mWakingUpDisposable:Lio/reactivex/disposables/Disposable;

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addBatteryIndication()V

    .line 327
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupInitialIndications()V
    .locals 8

    .line 159
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 160
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v6

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isNeedToShowEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 164
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    const-string v5, ""

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :cond_0
    return-void
.end method

.method private startBiometricCountdownTimer(J)V
    .locals 10

    .line 958
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBiometricCountdownTimer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 963
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 965
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 966
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    .line 967
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    .line 970
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 971
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextview:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;

    sub-long v6, p1, v0

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    .line 1033
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private startCountdownTimer(J)V
    .locals 9

    .line 1037
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCountdownTimer - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1042
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1044
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 1045
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    .line 1046
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1049
    :cond_1
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;

    sub-long v5, p1, v0

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    .line 1085
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private updateLockIconVisibility(ZZ)V
    .locals 3

    .line 1154
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLockIconVisibility visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isShowAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    if-eqz v0, :cond_1

    .line 1160
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1161
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p0

    .line 1160
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->showIcon(ZZZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V
    .locals 6

    .line 217
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 6

    .line 221
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_0

    const-wide/16 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_0
    return-void
.end method

.method public addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 8

    .line 231
    sget-object v1, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    return-void
.end method

.method public addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 8

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move v7, p7

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 909
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 911
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getBiometricStopHelpText()Ljava/lang/String;
    .locals 4

    .line 332
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 334
    invoke-static {v0}, Lcom/android/systemui/util/DeviceType;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 335
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 336
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 338
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 340
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/systemui/R$string;->kg_iris_stop:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/systemui/R$string;->kg_iris_retry_text:I

    goto :goto_3

    .line 342
    :cond_5
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/systemui/R$string;->kg_ib_stop:I

    goto :goto_3

    :cond_6
    sget v0, Lcom/android/systemui/R$string;->kg_ib_retry_text:I

    .line 347
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    return-object p0
.end method

.method public hideTransientIndication()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 247
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 248
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/-$$Lambda$zu8WHsssdKOe4exoHv4pUkbqHKg;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$zu8WHsssdKOe4exoHv4pUkbqHKg;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 249
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 3

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getPriority()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/IndicationEventType;->getPriority()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setWakeLockAcquire(Z)V

    .line 183
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isRunningBiometricCountdownState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->isAnimation()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updateLockIconVisibility(ZZ)V

    goto :goto_1

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isLockIconVisible()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->isAnimation()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updateLockIconVisibility(ZZ)V

    .line 189
    :goto_1
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->$SwitchMap$com$android$systemui$statusbar$IndicationPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 192
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->isAnimation()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->changeIndication(Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->changeUpperIndication(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onNotiActivated(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 619
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 621
    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->NOTI_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :goto_0
    return-void
.end method

.method public removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 1

    .line 207
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_0
    return-void
.end method

.method public showBounceAnimation()V
    .locals 9

    .line 917
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 919
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 920
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAffordancePivotY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 923
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 925
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 926
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 946
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 947
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    .line 948
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    .line 949
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    const v7, 0x3f733333    # 0.95f

    aput v7, v6, v2

    invoke-static {v1, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v3, v2, [Landroid/animation/Animator;

    .line 950
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v5, [F

    .line 951
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v7, v5, v2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 954
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showTransientIndication(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->LEGACY_TRANSIENT:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method
