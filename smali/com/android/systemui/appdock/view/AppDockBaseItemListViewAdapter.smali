.class public Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppDockBaseItemListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appdock/view/AppDockBaseItemListView;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget p0, p0, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    check-cast p1, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->onBindViewHolder(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;I)V
    .locals 0
    .param p1    # Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    .line 21
    new-instance p0, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p0

    .line 30
    :cond_0
    new-instance p0, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$DummyDropTargetViewHolder;

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$DummyDropTargetViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockDividerViewHolder;

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockDividerViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p0

    .line 24
    :cond_2
    new-instance p0, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockHeaderViewHolder;

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder$AppDockHeaderViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;->onBind(Lcom/android/systemui/appdock/model/AppDockItemInfo;)V

    .line 49
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->onViewAttachedToWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;->onUnbind()V

    .line 56
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;->mView:Lcom/android/systemui/appdock/view/AppDockBaseItemListView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->onViewDetachedFromWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V

    return-void
.end method
