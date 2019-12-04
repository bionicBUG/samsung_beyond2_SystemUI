.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewScaleAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 555
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .line 557
    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    .line 556
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 558
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
