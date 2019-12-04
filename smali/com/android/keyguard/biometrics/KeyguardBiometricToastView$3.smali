.class Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->appearAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field final synthetic val$resId:I

.field final synthetic val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;ILcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$resId:I

    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

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

    .line 191
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$type:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$800(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;JLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Z)Z

    .line 181
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$600(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$700(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iget p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;->val$resId:I

    invoke-virtual {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setIcon(I)V

    return-void
.end method
