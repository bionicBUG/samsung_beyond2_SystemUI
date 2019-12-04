.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "BubbleContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->buildSpringChainsOfAllAppIcons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$springAlpha:F


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;F)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->val$iconView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->val$springAlpha:F

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 848
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 849
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_spring_anim_x"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    .line 854
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 860
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 861
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 863
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 864
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 865
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    .line 867
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p0

    const-string p1, "fullscreen_mode_request_spring_anim_x"

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 841
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 842
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 843
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->val$iconView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$6;->val$springAlpha:F

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
