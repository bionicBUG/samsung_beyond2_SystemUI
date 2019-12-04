.class Lcom/android/systemui/statusbar/phone/LockIcon$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p1

    .line 156
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$400(Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$302(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->access$300(Lcom/android/systemui/statusbar/phone/LockIcon;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$3;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method
