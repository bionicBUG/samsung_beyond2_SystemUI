.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BubbleContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderItemDecoration"
.end annotation


# instance fields
.field mItemMargin:Landroid/graphics/Rect;

.field mItemOverlapWidth:I

.field mItemSpace:I

.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 418
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 422
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_overlap_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemOverlapWidth:I

    .line 423
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 424
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 425
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 426
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$900(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->minimize_container_item_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method getItemMargin()Landroid/graphics/Rect;
    .locals 1

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 435
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 436
    iget-object p3, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p3}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1000(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    .line 438
    iget-object p4, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p4}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1100(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 439
    iget v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 440
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 441
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    if-eqz p4, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    iget v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemSpace:I

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_3

    if-eqz p4, :cond_2

    .line 446
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_5

    if-eqz p4, :cond_4

    .line 453
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 455
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_5
    :goto_3
    return-void
.end method
