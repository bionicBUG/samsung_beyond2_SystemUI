.class public Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;
.super Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;
.source "KeyguardBiometricRecognitionTabletView.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsOccluded:Z

.field private mIsSIPShowing:Z

.field private mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

.field private final mShowTextRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionTabletView$cXKSjcI6HaSprWL-2gH5N2kRLyM;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionTabletView$cXKSjcI6HaSprWL-2gH5N2kRLyM;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    .line 42
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionTabletView$4h6XF9AaIYt9mVGZaONuxeuNwRI;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRecognitionTabletView$4h6XF9AaIYt9mVGZaONuxeuNwRI;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mShowTextRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    return-void
.end method

.method private clearAllTextIcon()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateAnimation(Z)V

    .line 90
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private getDefaultTabletLandscapeIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    sget v1, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_cue_icon_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 285
    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin:I

    .line 286
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0, v2, v0, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object v1
.end method

.method private getDefaultTabletLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .line 262
    sget v0, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_retry_icon_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 263
    sget v1, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_cue_icon_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 268
    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_help_text_top_margin:I

    goto :goto_0

    .line 269
    :cond_0
    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_top_margin:I

    .line 267
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 270
    invoke-virtual {v1, v3, p0, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 272
    :cond_1
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, 0x1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method private isBiometricsCondition()Z
    .locals 2

    .line 291
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 293
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 294
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 295
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIBPossible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$4h6XF9AaIYt9mVGZaONuxeuNwRI(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->showBiometricsText()V

    return-void
.end method

.method public static synthetic lambda$cXKSjcI6HaSprWL-2gH5N2kRLyM(Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->updateRecognitionView(Z)V

    return-void
.end method

.method private showBiometricsText()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 115
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getProximityGuidePopupState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 123
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 118
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateCameraState()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    const-string v1, "KeyguardBiometricRecognitionTabletIcon"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPossibleToForceCancelIris()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Stop IRIS recognition by rotating 180 degree on bouncer"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Stop IB recognition by rotating 180 degree on bouncer"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->updateIconVisibility()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRecognitionView(Z)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
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

    .line 102
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mIsOccluded:Z

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->handleHideGuidePopup()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->handleShowGuidePopup()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleHideGuidePopup()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected handleShowGuidePopup()V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mIsOccluded:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mShowTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mShowTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricRecognitionTabletIcon"

    const-string v1, "onFinishInflate()"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricErrorTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_font_size_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_font_size_tablet:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 61
    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected updateTabletLayout(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->updateCameraState()V

    .line 147
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->clearAllTextIcon()V

    :cond_0
    const/4 p1, 0x0

    .line 151
    invoke-virtual {p0, p1, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->updateTabletLayout(ZZ)V

    return-void
.end method

.method protected updateTabletLayout(ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 156
    iget-object v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->isBiometricsCondition()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz p1, :cond_0

    iget-boolean v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mIsSIPShowing:Z

    if-ne v2, v1, :cond_0

    goto/16 :goto_6

    .line 160
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    sget v4, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_cue_icon_view:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 164
    sget v5, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_text_view:I

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 165
    sget v6, Lcom/android/keyguard/R$id;->keyguard_biometric_recognition_retry_icon_view:I

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 167
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    sget v10, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin:I

    .line 168
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x31

    const/4 v11, -0x2

    invoke-direct {v9, v11, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    if-nez v6, :cond_1

    goto/16 :goto_6

    .line 174
    :cond_1
    iget-object v10, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v10

    const-wide v12, 0x4040c00000000000L    # 33.5

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v10, v14, :cond_8

    const/4 v7, 0x2

    if-eq v10, v7, :cond_7

    const/4 v7, 0x3

    if-eq v10, v7, :cond_4

    .line 243
    invoke-direct {v0, v15}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->getDefaultTabletLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 244
    iget-object v7, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->getDefaultTabletLandscapeIconLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    move-object v10, v6

    move-object v6, v7

    goto/16 :goto_5

    :cond_2
    :goto_0
    move-object v10, v6

    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 206
    :cond_4
    iget-object v7, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    invoke-direct {v0, v14}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->getDefaultTabletLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object v10, v6

    int-to-double v6, v7

    mul-double/2addr v6, v12

    double-to-int v6, v6

    const/16 v7, 0x15

    invoke-direct {v2, v6, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 212
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 214
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_padding:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v15, v15, v7, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 216
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin_for_landscape:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 218
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin_for_landscape:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_6

    .line 221
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_icon:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 223
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 225
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 228
    :cond_6
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 229
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 230
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 232
    :goto_2
    iput-boolean v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mIsSIPShowing:Z

    goto/16 :goto_4

    :cond_7
    move-object v10, v6

    .line 236
    invoke-direct {v0, v15}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->getDefaultTabletLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_8
    move-object v10, v6

    .line 176
    iget-object v6, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 177
    invoke-direct {v0, v14}, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->getDefaultTabletLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    goto/16 :goto_1

    .line 179
    :cond_9
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 180
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    mul-double/2addr v6, v12

    double-to-int v6, v6

    const/16 v7, 0x13

    invoke-direct {v2, v6, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 182
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 184
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_padding:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v7, v15, v15, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 186
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin_for_landscape:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 188
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_top_margin_for_landscape:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 191
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_icon:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 193
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    sget v7, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_icon_bottom_margin_for_landscape_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 198
    :cond_a
    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 199
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 200
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 202
    :goto_3
    iput-boolean v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionTabletView;->mIsSIPShowing:Z

    :goto_4
    move-object v1, v2

    .line 249
    :goto_5
    iget-object v2, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mKeyguardRecognitionView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_b

    .line 251
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :cond_b
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricRecognitionView;->mBiometricHelpTextView:Lcom/android/systemui/widget/SystemUITextView;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_message_area_font_size:I

    .line 258
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 257
    invoke-virtual {v0, v15, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_c
    :goto_6
    return-void
.end method
