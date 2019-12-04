.class Lcom/android/systemui/swipe/SwipeAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 559
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->isAnimationCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->isAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 563
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$000(Lcom/android/systemui/swipe/SwipeAnimator;)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$100(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move p1, v0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$200(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 569
    iget-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->val$enabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->isAnimationCanceled:Z

    if-nez p1, :cond_2

    .line 570
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$302(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z

    .line 574
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->val$enabled:Z

    if-eqz p1, :cond_3

    .line 575
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$402(Lcom/android/systemui/swipe/SwipeAnimator;J)J

    .line 585
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$100(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onViEnd()V

    return-void
.end method
