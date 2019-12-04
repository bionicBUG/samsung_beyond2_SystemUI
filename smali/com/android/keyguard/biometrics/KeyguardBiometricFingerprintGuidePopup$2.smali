.class Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;
.super Ljava/lang/Object;
.source "KeyguardBiometricFingerprintGuidePopup.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->showMessage()V
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

    .line 298
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;->access$702(Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;Z)Z

    return-void
.end method
