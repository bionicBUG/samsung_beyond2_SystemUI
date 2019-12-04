.class Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;
.super Ljava/lang/Object;
.source "KeyguardBiometricProximityGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->playMoveAnimation()V
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

    .line 494
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$902(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;Z)Z

    return-void
.end method
