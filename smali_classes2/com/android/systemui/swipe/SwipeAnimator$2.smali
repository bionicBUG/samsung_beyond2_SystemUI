.class Lcom/android/systemui/swipe/SwipeAnimator$2;
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
.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$SwipeAnimator$2()V
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->access$100(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onViEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 658
    iget-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {p1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$200(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$2$GH0qSIgyAuex6Ad00XTFYPHW-us;

    invoke-direct {v0, p0}, Lcom/android/systemui/swipe/-$$Lambda$SwipeAnimator$2$GH0qSIgyAuex6Ad00XTFYPHW-us;-><init>(Lcom/android/systemui/swipe/SwipeAnimator$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
