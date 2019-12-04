.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;
.super Ljava/lang/Object;
.source "BubbleContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToMoveTrashToTrashBox(Landroid/view/View;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

.field final synthetic val$trashView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;Landroid/view/View;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;->val$trashView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 485
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;->val$trashView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 486
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$4;->val$trashView:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
