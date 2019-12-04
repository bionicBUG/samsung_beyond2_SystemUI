.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "BubbleContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->animateToReturnDraggingAppIconView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 1

    .line 776
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    .line 777
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2602(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z

    .line 778
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 779
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$400()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BubbleContainerManager"

    const-string v0, "[FolderView] onSpringAtRest of springY, releaseDraggingState"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    :cond_1
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 2

    .line 769
    invoke-super {p0, p1}, Lcom/facebook/rebound/SimpleSpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 771
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    .line 772
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$4;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
