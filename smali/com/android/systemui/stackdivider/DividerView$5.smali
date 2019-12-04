.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J

.field final synthetic val$notCancelledEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 802
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 803
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 809
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1800(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 814
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1800(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    :goto_0
    move-wide v0, v2

    :goto_1
    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    .line 817
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-nez p1, :cond_3

    .line 818
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 820
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 822
    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-nez p1, :cond_5

    .line 823
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
