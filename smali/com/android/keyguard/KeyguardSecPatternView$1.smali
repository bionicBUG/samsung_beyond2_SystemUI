.class Lcom/android/keyguard/KeyguardSecPatternView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPatternView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 210
    sget-object p1, Lcom/android/keyguard/KeyguardSecPatternView$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$700(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    .line 219
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$700(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSecPatternView;->access$802(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    .line 221
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->reset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 6

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricsLockoutChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecPatternView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v2

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 194
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 196
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x7530

    .line 200
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v0

    .line 201
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$600(Lcom/android/keyguard/KeyguardSecPatternView;J)V

    goto :goto_0

    :cond_0
    const-string p0, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    .line 203
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 168
    sget-object v0, Lcom/android/keyguard/KeyguardSecPatternView$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

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

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$500(Lcom/android/keyguard/KeyguardSecPatternView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p2, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$302(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    if-nez p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$400(Lcom/android/keyguard/KeyguardSecPatternView;Z)V

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->displayDefaultSecurityMessage()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 237
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$902(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$200(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$202(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    :cond_0
    return-void
.end method

.method public onNotifyKeyguardLockout()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 231
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$902(Lcom/android/keyguard/KeyguardSecPatternView;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$000(Lcom/android/keyguard/KeyguardSecPatternView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$002(Lcom/android/keyguard/KeyguardSecPatternView;I)I

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/systemui/keyguard/BioUnlockPFImprover;->canBeSkipOnWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$100(Lcom/android/keyguard/KeyguardSecPatternView;)V

    :cond_1
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 2

    .line 250
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_PASSWORD_HINT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 252
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardHintTextArea;->updateHintButton()V

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1100(Lcom/android/keyguard/KeyguardSecPatternView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternView$1;->this$0:Lcom/android/keyguard/KeyguardSecPatternView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecPatternView;->access$1000(Lcom/android/keyguard/KeyguardSecPatternView;)Lcom/android/keyguard/KeyguardHintTextArea;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
