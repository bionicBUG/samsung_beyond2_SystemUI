.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
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

    .line 405
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 410
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 411
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    return-void
.end method
