.class public Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;
.super Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;
.source "KeyguardBiometricRetryTabletView.java"


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private final mHandler:Landroid/os/Handler;

.field private mIsOccluded:Z

.field private mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

.field private final mShowRetryButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$XZatFfjlutLfMASlagWH7zlGksg;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$XZatFfjlutLfMASlagWH7zlGksg;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    .line 35
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$gTxkt_LXDDI-1CVbJzk8dhd0rck;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$gTxkt_LXDDI-1CVbJzk8dhd0rck;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mIsOccluded:Z

    .line 38
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$iXH7aF0fJP1HfAgQ1ks31rOFv6w;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryTabletView$iXH7aF0fJP1HfAgQ1ks31rOFv6w;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    .line 47
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mHandler:Landroid/os/Handler;

    .line 48
    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mDisplay:Landroid/view/Display;

    .line 49
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    .line 50
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method private isBiometricRunning()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 86
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

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

.method private isBiometricsCondition()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 81
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

.method public static synthetic lambda$XZatFfjlutLfMASlagWH7zlGksg(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->updateRetryView(Z)V

    return-void
.end method

.method public static synthetic lambda$gTxkt_LXDDI-1CVbJzk8dhd0rck(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->onRotationChanged(I)V

    return-void
.end method

.method public static synthetic lambda$iXH7aF0fJP1HfAgQ1ks31rOFv6w(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->showRetryButton()V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 3

    .line 54
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->isBiometricsCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 56
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 60
    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 74
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 61
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    if-ne p1, v0, :cond_3

    .line 62
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 67
    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mIsOccluded:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result p1

    if-nez p1, :cond_4

    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->isBiometricRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showRetryButton()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->isBiometricRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRetryView(Z)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mIsOccluded:Z

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->handleHideGuidePopup()V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->handleShowGuidePopup()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleHideGuidePopup()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    return-void
.end method

.method protected handleShowGuidePopup()V
    .locals 3

    .line 122
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mIsOccluded:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryTabletView;->mShowRetryButtonRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
