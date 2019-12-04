.class public abstract Lcom/android/systemui/appdock/view/AppDockBaseItemListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AppDockBaseItemListView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/BindingModelInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockBaseItemListView$RVType;
    }
.end annotation


# instance fields
.field mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

.field mLastOrientation:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mLastOrientation:I

    .line 30
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;-><init>(Lcom/android/systemui/appdock/view/AppDockBaseItemListView;)V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method


# virtual methods
.method public addItem(ILcom/android/systemui/appdock/model/AppDockItemInfo;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bind(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    return-object p0
.end method

.method public getItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    return-object p0
.end method

.method public abstract getRVType()I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/systemui/appdock/view/AppDockBaseItemListView$RVType;
    .end annotation
.end method

.method public moveItem(II)V
    .locals 2

    if-ltz p1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;->updateView()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mLastOrientation:I

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;)V
    .locals 0

    return-void
.end method

.method public removeItem(I)Lcom/android/systemui/appdock/model/AppDockItemInfo;
    .locals 1

    if-ltz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->mAdapterObj:Lcom/android/systemui/appdock/view/AppDockBaseItemListViewAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final unbind()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public updateChildrenDisableState()V
    .locals 2

    const/4 v0, 0x0

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    .line 108
    invoke-virtual {v1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateDisableState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
