.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;
.super Ljava/lang/Object;
.source "BubbleContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->removeIconView(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

.field final synthetic val$iconView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;Landroid/widget/ImageView;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 662
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 663
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
