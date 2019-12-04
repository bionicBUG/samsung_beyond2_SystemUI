.class Lcom/android/keyguard/KeyguardDirectionLockView$6;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 601
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 602
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 603
    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
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

    .line 590
    iget-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3600(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$6;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardDirectionLockView;->access$3500(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
