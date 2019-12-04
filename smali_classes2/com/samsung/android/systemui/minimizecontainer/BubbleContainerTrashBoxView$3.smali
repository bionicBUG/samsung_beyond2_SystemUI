.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;
.super Ljava/lang/Object;
.source "BubbleContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToShowHideCircleBackgroundView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

.field final synthetic val$showTrashBox:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;Z)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    iput-boolean p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;->val$showTrashBox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 425
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;->val$showTrashBox:Z

    if-nez p1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$3;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->access$200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
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
