.class Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricSmallIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 314
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz p1, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/keyguard/R$string;->kg_iris_no_match:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 258
    sget-object p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->updateUnlockAnimation(Z)V

    :goto_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean v0, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p3, v1, :cond_4

    if-eq p3, v2, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p3, :cond_3

    const/16 p3, 0xb

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz p1, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    if-eq p1, v0, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    return-void

    .line 307
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p3, :cond_6

    const/16 p3, 0xc

    if-ne p1, p3, :cond_6

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p3, p3, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mDisplay:Landroid/view/Display;

    if-eqz p3, :cond_6

    .line 287
    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p3

    if-eq p3, v0, :cond_5

    if-ne p3, v2, :cond_6

    :cond_5
    return-void

    .line 292
    :cond_6
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p3, p3, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 293
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 295
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    .line 280
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 356
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto/16 :goto_1

    .line 379
    :cond_0
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean v1, p3, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v1, :cond_1

    return-void

    .line 382
    :cond_1
    invoke-static {p3, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    const/16 p3, 0xa

    if-ne p1, p3, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 390
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    goto/16 :goto_1

    .line 392
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 395
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_4
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean v1, p3, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/16 v1, -0x9

    if-ne p1, v1, :cond_6

    .line 362
    invoke-static {p3, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_6
    invoke-static {p3, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    .line 365
    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_BIOMETRICS_TABLET:Z

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 366
    :cond_7
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$802(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z

    goto :goto_0

    .line 368
    :cond_8
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p3, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Ljava/lang/String;)V

    .line 371
    :goto_0
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_9

    if-ltz p1, :cond_9

    .line 373
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 479
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 483
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 327
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$2;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    .line 331
    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 332
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    .line 333
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/16 p2, 0x8

    .line 335
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    .line 340
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 341
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p2, p2, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 342
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 343
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-boolean v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    if-eq v1, p1, :cond_0

    .line 433
    iput-boolean p1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBouncerShowing:Z

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    if-nez p1, :cond_1

    const-string p1, "KeyguardBiometricSmallIconView"

    const-string v0, "set text preview - onKeyguardBouncerChanged"

    .line 438
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$302(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object v1, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDynamicLockViewMode()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    .line 247
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    .line 248
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    .line 249
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    goto :goto_0

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 413
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 414
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 425
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;Z)Z

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;I)V

    .line 232
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 463
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    .line 453
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object v0, v0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBiometricsAuthenticated(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->mBiometricUnlockRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricSmallIconView;)V

    return-void
.end method
