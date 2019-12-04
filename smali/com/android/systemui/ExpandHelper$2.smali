.class Lcom/android/systemui/ExpandHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ExpandHelper;->finishExpanding(ZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;

.field final synthetic val$expand:Z

.field final synthetic val$scaledView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    iput-object p2, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 635
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 606
    iget-boolean p1, p0, Lcom/android/systemui/ExpandHelper$2;->mCancelled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 607
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$400(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 608
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$500(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$ViewScaler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    .line 615
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 616
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 618
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$2;->val$expand:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "1123"

    goto :goto_1

    :cond_2
    const-string p1, "1121"

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "1124"

    goto :goto_1

    :cond_4
    const-string p1, "1122"

    .line 623
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {v2}, Lcom/android/systemui/ExpandHelper;->access$600(Lcom/android/systemui/ExpandHelper;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Two finger swipe"

    goto :goto_2

    :cond_5
    const-string v2, "One finger swipe"

    .line 618
    :goto_2
    invoke-static {v1, p1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 627
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$400(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    invoke-interface {p1, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setExpansionCancelled(Landroid/view/View;)V

    .line 629
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$400(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$2;->val$scaledView:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 630
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-static {p1}, Lcom/android/systemui/ExpandHelper;->access$700(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
