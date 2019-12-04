.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;
.super Ljava/lang/Object;
.source "BubbleContainerFolderView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

.field final synthetic val$isLastItemView:Z

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;Landroid/view/View;Z)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->val$itemView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->val$isLastItemView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAnimationEnd$0$BubbleContainerFolderView$2$1()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2002(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z

    .line 691
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object v0, v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 692
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 685
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p1, p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->val$isLastItemView:Z

    if-eqz p1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p1, p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1902(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z

    .line 687
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p1, p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 689
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p1, p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$2100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$2$1$OCtv2hCYbebvpAb2ZPaYP9APKxU;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerFolderView$2$1$OCtv2hCYbebvpAb2ZPaYP9APKxU;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 676
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->val$itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-boolean p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->val$isLastItemView:Z

    if-eqz p1, :cond_0

    .line 678
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2$1;->this$1:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$2;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1902(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Z)Z

    :cond_0
    return-void
.end method
