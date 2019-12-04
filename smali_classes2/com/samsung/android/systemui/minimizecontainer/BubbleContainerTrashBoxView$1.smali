.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$1;
.super Ljava/lang/Object;
.source "BubbleContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->animateToBounceTrashBoxIcon()V
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

    .line 263
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView$1;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;->access$000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerTrashBoxView;)V

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
