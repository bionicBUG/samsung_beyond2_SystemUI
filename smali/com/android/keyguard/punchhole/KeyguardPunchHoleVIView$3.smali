.class Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPunchHoleVIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 112
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p2

    if-eq p2, p1, :cond_2

    .line 117
    iget-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    iget-object p2, p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricRunningStateChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p2, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$102(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Z)Z

    .line 119
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 121
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-static {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;->this$0:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    :cond_2
    :goto_0
    return-void
.end method
