.class Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;
.super Ljava/lang/Object;
.source "KeyguardBiometricToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->appearAnimation(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    iput p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 142
    iget p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->val$type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_background_auth_face_instruction_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$100(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_background_auth_iris_instruction_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$200(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    invoke-static {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$300(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$400(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;)Landroid/widget/LinearLayout;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$500(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;FFLandroid/view/View;J)V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->access$002(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Z)Z

    return-void
.end method
