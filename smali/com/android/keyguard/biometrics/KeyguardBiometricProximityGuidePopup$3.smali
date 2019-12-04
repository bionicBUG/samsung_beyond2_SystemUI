.class Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;
.super Ljava/lang/Object;
.source "KeyguardBiometricProximityGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->playPopupAnimation()V
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

    .line 552
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 562
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1100(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1300(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1200(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
