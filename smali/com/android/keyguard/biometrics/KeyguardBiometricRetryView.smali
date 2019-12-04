.class public Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;
.super Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;
.source "KeyguardBiometricRetryView.java"


# instance fields
.field protected mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field protected final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$KeyguardBiometricRetryView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 70
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->isBiometricRetryIconSelected(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_1

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result p1

    const-string p2, "1013"

    const-string v1, "102"

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    const-string p0, "2"

    .line 76
    invoke-static {v1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    const-string p0, "3"

    .line 80
    invoke-static {v1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    const-string p0, "1"

    .line 84
    invoke-static {v1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricRetryIcon"

    const-string v1, "onFinishInflate()"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget v0, Lcom/android/keyguard/R$id;->ic_biometric_retry_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_face_retry_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_iris_retry_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_ib_retry_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryView$KXBCBV16RKZWTB2uOpzEObyI2Yg;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricRetryView$KXBCBV16RKZWTB2uOpzEObyI2Yg;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->updateRetryIconDrawable()V

    return-void
.end method

.method protected updateIconVisibility()V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mBouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->getIconState()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    .line 102
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 115
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 103
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->updateRetryIconDrawable()V

    .line 104
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 113
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected updateRetryIconDrawable()V
    .locals 2

    .line 121
    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIconView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    const-string v1, "ic_biometric_retry_button"

    .line 122
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const-string v1, "ic_biometric_retry_button_whitebg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricRetryView;->mBiometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    :cond_0
    return-void
.end method
