.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.source "KeyguardSecIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardSecIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SecKeyguardCallback"
.end annotation


# instance fields
.field private mLastSuccessiveErrorMessage:I

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method

.method private getBiometricErrorGuideText(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)Ljava/lang/CharSequence;
    .locals 0

    .line 511
    sget-object p1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    return-object p2

    .line 520
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->kg_ib_retry_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    .line 516
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->kg_iris_retry_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 546
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 547
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    .line 548
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 547
    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isMaxFailedBiometricUnlockAttempts(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 549
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_no_match:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 552
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v3, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_ib_retry_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto :goto_0

    .line 557
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v3, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_iris_retry_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    .line 566
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIcon()V

    .line 567
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 568
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 569
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 526
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisStayOnLock()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_1

    .line 527
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_3

    .line 528
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIntelligentScanStayOnLock()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 529
    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 530
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIcon()V

    .line 531
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 532
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 533
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation()V

    .line 536
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 537
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIcon()V

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 9

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 475
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressBiometricError(ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    goto/16 :goto_1

    .line 485
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    if-eq p3, p1, :cond_5

    .line 486
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 490
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 492
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v1, :cond_3

    .line 493
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 494
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 496
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p3, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    goto :goto_0

    .line 498
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->getBiometricErrorGuideText(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)Ljava/lang/CharSequence;

    move-result-object v3

    const-wide/16 v5, 0xbb8

    const/4 v7, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 500
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIcon()V

    .line 501
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 502
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p3, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 503
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation()V

    goto :goto_1

    .line 505
    :cond_4
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    .line 507
    :cond_5
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 11

    .line 411
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isBouncerShowing()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getInitialTextColorState()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    .line 420
    :cond_2
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v2, :cond_8

    const/4 v3, 0x5

    if-eq p1, v3, :cond_7

    const/16 v3, 0x3e9

    if-eq p1, v3, :cond_6

    const/16 v3, 0x3eb

    if-eq p1, v3, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    goto :goto_0

    .line 430
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_image_dirty:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_partial:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 436
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_too_wet:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 433
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->kg_fingerprint_acquired_too_fast:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 442
    :cond_8
    :goto_0
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 443
    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v3, :cond_9

    if-ne p1, v0, :cond_9

    goto/16 :goto_2

    .line 448
    :cond_9
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 449
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    move-object v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 450
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 452
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation()V

    .line 454
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p1, :cond_b

    .line 455
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p1

    if-eqz p1, :cond_b

    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 456
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-nez p1, :cond_b

    .line 457
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v5, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    const/4 v10, 0x0

    move-object v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 458
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object p3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    goto :goto_1

    .line 460
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    .line 462
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setTransientBiometricsError(Z)V

    .line 468
    :cond_c
    :goto_2
    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1600(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 576
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIcon()V

    .line 577
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 6

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 388
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 389
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v4, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1200(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v2, v4, v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1400(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;J)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1300(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1302(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 399
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 403
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 405
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLockModeChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 357
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$800(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 7

    .line 362
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mMessageToShowOnScreenOn:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    .line 382
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$900(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$1000(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result p1

    if-nez p1, :cond_0

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method
