.class Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->disappearAnimation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "KeyguardBiometricToastView"

    const-string v0, "disappearAnimation cancel"

    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    .line 276
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "KeyguardBiometricToastView"

    const-string v0, "disappearAnimation end"

    .line 267
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$1000(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    .line 269
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$5;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

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
