.class Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricProximityGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 240
    sget-object p2, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 250
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    .line 243
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    .line 244
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBiometricLockoutChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 224
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 228
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 259
    sget-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    .line 264
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$602(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    if-nez p1, :cond_1

    const-string p1, "KeyguardProximityPopup"

    const-string v0, "set text preview - onKeyguardBouncerChanged"

    .line 207
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    .line 164
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-nez p1, :cond_2

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result p1

    if-nez p1, :cond_3

    .line 184
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 194
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    :cond_0
    return-void
.end method
