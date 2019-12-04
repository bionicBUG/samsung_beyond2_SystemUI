.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V
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

    .line 639
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 642
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 648
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$21;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
