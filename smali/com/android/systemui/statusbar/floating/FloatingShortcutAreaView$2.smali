.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FloatingShortcutAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 166
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    new-instance p1, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/floating/FingerPressedShortcutState;-><init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->changeState(Lcom/android/systemui/statusbar/floating/ShortcutState;)V

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 173
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$302(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$400(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$402(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;Z)Z

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$100(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)Lcom/android/systemui/statusbar/floating/ShortcutState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/floating/ShortcutState;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    :cond_0
    return-void
.end method

.method public onLockModeChanged()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$2;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method
