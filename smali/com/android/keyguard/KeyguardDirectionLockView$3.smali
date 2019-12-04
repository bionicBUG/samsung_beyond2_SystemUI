.class Lcom/android/keyguard/KeyguardDirectionLockView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricsLockoutChanged( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardDirectionLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    .line 251
    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$800(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 253
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$900(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/16 v1, 0x7530

    .line 259
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutBiometricAttemptDeadline(II)J

    move-result-wide v0

    .line 260
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1000(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    goto :goto_0

    :cond_0
    const-string p0, "onBiometricsLockoutChanged( mCountdownTimer is working. )"

    .line 262
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricRunningStateChanged( biometricSourceType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardDirectionLock"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->INTELLIGENT_SCAN:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_1

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1100(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1200(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1200(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    .line 282
    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$700(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUpdateSecurityMessage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1300(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1100(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$3;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$1102(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    :cond_0
    return-void
.end method
