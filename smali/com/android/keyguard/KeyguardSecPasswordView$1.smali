.class Lcom/android/keyguard/KeyguardSecPasswordView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSecPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 500
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 501
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$102(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 508
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 509
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-boolean v0, p2, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->m2StepVerification:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$000(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 510
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 511
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 513
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_2

    .line 514
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$100(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_1

    .line 515
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 516
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p1, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 518
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$000(Lcom/android/keyguard/KeyguardSecPasswordView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 495
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardSecPasswordView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordView;->access$002(Lcom/android/keyguard/KeyguardSecPasswordView;Z)Z

    :cond_0
    return-void
.end method
