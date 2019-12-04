.class Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricFingerprintGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 242
    sget-object p1, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :goto_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 219
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    sget-boolean p3, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz p3, :cond_2

    sget-boolean p3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    .line 223
    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    .line 224
    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 225
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBiometricHelp(msgId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", helpString : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyguardFingerprintGuidePopup"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$900(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    .line 228
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    .line 232
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 233
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 208
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$4;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$502(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    .line 211
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$402(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    if-nez p1, :cond_1

    const-string p1, "KeyguardFingerprintGuidePopup"

    const-string v0, "set text preview - onKeyguardBouncerChanged"

    .line 182
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    if-eqz p1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 162
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;)V

    return-void
.end method
