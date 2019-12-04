.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;
.super Ljava/lang/Object;
.source "BubbleContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToHideTrashBoxGroupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 326
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->clearAllAnimations()V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->setTrashBoxShownState(Z)V

    .line 330
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p0

    const-string p1, "fullscreen_mode_request_trash_box"

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

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
