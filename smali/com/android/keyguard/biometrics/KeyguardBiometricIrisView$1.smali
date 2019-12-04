.class Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBiometricIrisView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 134
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 135
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowIrisErrorMsg(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    .line 138
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 147
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, -0x8

    if-ne p1, p3, :cond_0

    .line 148
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 151
    :cond_0
    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    .line 152
    invoke-static {p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, -0x9

    if-eq p1, p3, :cond_1

    if-ltz p1, :cond_2

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 180
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$602(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;Z)Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "KeyguardIrisView"

    if-eqz p1, :cond_2

    const-string p1, "preview to VISIBLE - onKeyguardBouncerChanged"

    .line 165
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 167
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string p1, "preview to INVISIBLE - onKeyguardBouncerChanged"

    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 171
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$102(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;Z)Z

    .line 125
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    .line 126
    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$000(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KeyguardIrisView"

    const-string v0, "Stop recognition by onStrongAuthStateChanged()"

    .line 191
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    :cond_0
    return-void
.end method
