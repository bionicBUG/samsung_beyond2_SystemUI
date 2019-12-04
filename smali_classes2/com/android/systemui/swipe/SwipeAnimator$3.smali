.class Lcom/android/systemui/swipe/SwipeAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->showTapAffordanceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private tapAnimationCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "SwipeAnimator"

    const-string v0, "Tap Animation cancelled"

    .line 676
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 677
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 681
    iget-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    if-eqz p1, :cond_0

    return-void

    .line 684
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$600(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 686
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$800(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 689
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$900(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 692
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 693
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1000(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    .line 697
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$1100(Lcom/android/systemui/swipe/SwipeAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 698
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 699
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-static {v1, v3, v0, v2, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$700(Lcom/android/systemui/swipe/SwipeAnimator;Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_0

    .line 702
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$500(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 671
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$3;->tapAnimationCancelled:Z

    return-void
.end method
