.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BubbleContainerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->countPublishedItem()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 463
    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->onBindViewHolder(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;
    .locals 2

    .line 471
    new-instance p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1200(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->minimize_container_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 463
    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->onViewAttachedToWindow(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)V
    .locals 2

    .line 482
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 483
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->access$1302(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 489
    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getShowingIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 493
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->access$1300(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->this$0:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;

    invoke-static {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;->access$1500(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 463
    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderViewAdapter;->onViewDetachedFromWindow(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)V
    .locals 1

    .line 503
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 506
    invoke-static {p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;->access$1400(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerFolderView$FolderItemViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 510
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
