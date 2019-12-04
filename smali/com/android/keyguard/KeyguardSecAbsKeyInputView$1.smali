.class Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 227
    sget-object p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->reset()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricsLockoutChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecAbsKeyInputView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 204
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 206
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x7530

    .line 210
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v2

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;J)V

    goto :goto_0

    :cond_0
    const-string v0, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    .line 213
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    .line 217
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    .line 218
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1102(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsBiometricLockoutPWView = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    :cond_2
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 153
    sget-object v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$800(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 184
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    goto/16 :goto_2

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->displayDefaultSecurityMessage()V

    .line 159
    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->getSecurityViewId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 162
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$602(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z

    .line 163
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 164
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_4

    .line 166
    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_0
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 167
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_5
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 176
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object p0

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Z)Z

    :cond_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$000(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$002(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;I)I

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 241
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 243
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 244
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1300(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->access$1200(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
