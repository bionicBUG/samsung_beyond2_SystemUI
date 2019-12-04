.class public Lcom/android/systemui/appdock/view/AppDockItemGridView;
.super Lcom/android/systemui/appdock/view/AppDockBaseItemListView;
.source "AppDockItemGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->appdock_grid_col:I

    .line 19
    invoke-static {p1, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, p1, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 18
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public findAppItemViewHolder(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/appdock/view/AppDockBaseViewHolder;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    .line 34
    invoke-virtual {v2}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRVType()I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$integer;->appdock_grid_col:I

    invoke-static {p0, v0}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result p0

    .line 45
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method
