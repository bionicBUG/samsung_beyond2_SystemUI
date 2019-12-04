.class public Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;
.super Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;
.source "KeyguardBiometricSmallIconTabletView.java"


# instance fields
.field private mKeyguardSmallIconView:Landroid/view/ViewGroup;

.field private mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

.field private mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconTabletView$jddSFxLxgYvOGcdpbt7AHwkJa9E;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconTabletView$jddSFxLxgYvOGcdpbt7AHwkJa9E;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    .line 42
    new-instance p2, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconTabletView$GEHOI4e8nmkC-NJ_TEsdqrg8zmE;

    invoke-direct {p2, p0}, Lcom/android/keyguard/biometrics/-$$Lambda$KeyguardBiometricSmallIconTabletView$GEHOI4e8nmkC-NJ_TEsdqrg8zmE;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;)V

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    .line 56
    sget p2, Lcom/android/keyguard/R$id;->keyguard_iris_text_preview:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mKeyguardSmallIconView:Landroid/view/ViewGroup;

    .line 57
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mProximitySensorListener:Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/biometrics/KeyguardProximitySensorManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardProximitySensorListener;)V

    .line 58
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricRotationManager;->addListener(Lcom/android/keyguard/biometrics/KeyguardBiometricRotationListener;)V

    return-void
.end method

.method private getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 143
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    if-eqz p1, :cond_0

    .line 146
    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_help_text_top_margin:I

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 149
    :cond_0
    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_top_margin:I

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    return-object v0
.end method

.method private hideCueIconView(Z)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 177
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 185
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result p1

    if-nez p1, :cond_2

    .line 187
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricVisualCueRoot:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$GEHOI4e8nmkC-NJ_TEsdqrg8zmE(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->onRotationChanged(I)V

    return-void
.end method

.method public static synthetic lambda$jddSFxLxgYvOGcdpbt7AHwkJa9E(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->hideCueIconView(Z)V

    return-void
.end method

.method private onRotationChanged(I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateTabletLayout(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateCameraState()V

    :cond_0
    return-void
.end method

.method private updateMaxWidth(Z)V
    .locals 2

    .line 156
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_text_max_width_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 164
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_text_max_width_portrait:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    sget v1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_text_max_width_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 169
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    sget p1, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_text_max_width_landscape:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method

.method private updateTabletLayout(I)V
    .locals 7

    .line 95
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->isBiometricCondition()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricHelpText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    sget v2, Lcom/android/keyguard/R$dimen;->kg_biometric_small_icon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    .line 135
    invoke-direct {p0, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    .line 136
    invoke-direct {p0, v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    invoke-direct {p0, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v2, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 124
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x15

    invoke-direct {p1, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 127
    sget v0, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_small_icon_left_margin:I

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 106
    invoke-direct {p0, v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->getDefaultLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateMaxWidth(Z)V

    .line 109
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricNoMatchText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v2, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 110
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x13

    invoke-direct {p1, v3, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 113
    sget v0, Lcom/android/keyguard/R$dimen;->kg_biometric_recognition_small_icon_left_margin:I

    .line 114
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 138
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->mKeyguardSmallIconView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->onAttachedToWindow()V

    .line 72
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 73
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "any_screen_running"

    .line 74
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "display_cutout_hide_notch"

    .line 75
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 73
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->onDetachedFromWindow()V

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 82
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->onFinishInflate()V

    const-string v0, "KeyguardBiometricSmallIconTabletView"

    const-string v1, "onFinishInflate()"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateTabletLayout()V

    return-void
.end method

.method protected updateTabletLayout()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconTabletView;->updateTabletLayout(I)V

    return-void
.end method
