.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;
.super Ljava/lang/Object;
.source "BubbleContainerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->animateToHidePointerView(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 273
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 263
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerView;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method
