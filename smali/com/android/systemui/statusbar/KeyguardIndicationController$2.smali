.class Lcom/android/systemui/statusbar/KeyguardIndicationController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field final synthetic val$animateDownDuration:I

.field final synthetic val$indication:Ljava/lang/String;

.field final synthetic val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field final synthetic val$translation:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;FI)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$indication:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$translation:F

    iput p5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$animateDownDuration:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 470
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$translation:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 p1, 0x1

    .line 471
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 476
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 478
    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    move-result-object p0

    .line 477
    invoke-static {p1, v0, p0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$animateDownDuration:I

    int-to-long v0, v0

    .line 482
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/Interpolators;->BOUNCE:Landroid/view/animation/Interpolator;

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$translation:F

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$2;)V

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$textView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->val$indication:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method
