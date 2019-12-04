.class Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiSplitGuideViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->scrollGuideView(Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->access$002(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 392
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    invoke-static {p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->access$100(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 393
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController$1;->this$0:Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;

    invoke-static {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;->access$100(Lcom/samsung/android/systemui/multisplit/MultiSplitGuideViewController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 394
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 396
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
