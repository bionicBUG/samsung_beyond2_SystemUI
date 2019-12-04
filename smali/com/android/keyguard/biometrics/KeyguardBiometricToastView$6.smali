.class Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->updateAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field final synthetic val$resId:I

.field final synthetic val$stringId:I

.field final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;IILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$stringId:I

    iput p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$resId:I

    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 293
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$stringId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setText(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$resId:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setIcon(I)V

    .line 297
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$6;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

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
