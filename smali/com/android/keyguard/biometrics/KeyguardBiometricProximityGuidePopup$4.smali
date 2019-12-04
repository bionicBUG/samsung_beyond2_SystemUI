.class Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;
.super Ljava/lang/Object;
.source "KeyguardBiometricProximityGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->dismissAnimation()V
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

    .line 585
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup$4;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;

    invoke-static {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;->access$1400(Lcom/android/keyguard/biometrics/KeyguardBiometricProximityGuidePopup;)V

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
