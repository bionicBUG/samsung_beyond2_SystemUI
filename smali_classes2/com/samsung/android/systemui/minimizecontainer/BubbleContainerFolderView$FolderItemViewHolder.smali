.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BubbleContainerFolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderItemViewHolder"
.end annotation


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Landroid/view/View;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    .line 376
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 377
    sget p1, Lcom/android/systemui/R$id;->minimize_container_item_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 379
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 380
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setHapticFeedbackEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 386
    invoke-static {}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FolderView] [Holder] onClick: view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubbleContainerManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    if-eqz p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->launchItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 390
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->updateContainerState(IZ)V

    .line 391
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p0, :cond_2

    const-string p0, "2221"

    .line 392
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 399
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$600(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$700(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->showTrashBox(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->mItem:Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$800(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Landroid/widget/ImageView;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
