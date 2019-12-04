.class public Lcom/android/systemui/appdock/view/AppDockEditUIView;
.super Lcom/android/systemui/appdock/view/AppDockBaseItemListView;
.source "AppDockEditUIView.java"

# interfaces
.implements Lcom/android/systemui/appdock/view/VisibilityInterface;
.implements Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDropTarget;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCurrentPos:I

.field private mDummyDropTargetInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    .line 36
    new-instance p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mDummyDropTargetInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 41
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    invoke-static {}, Lcom/android/systemui/appdock/event/EventBus;->getDefault()Lcom/android/systemui/appdock/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/event/EventBus;->register(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0xaa

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    return-void
.end method

.method private addDummyDropTarget(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    .line 188
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget v3, v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget v3, v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    if-ne v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mDummyDropTargetInfo:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->addItem(ILcom/android/systemui/appdock/model/AppDockItemInfo;)V

    return-void
.end method

.method private checkDummyDropTargetAttach(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "favorite count=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteCount()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->removeDummyDropTarget(Ljava/util/List;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->addDummyDropTarget(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private findFavoriteInfoIndex(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 166
    iget v2, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 168
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private findTargetPosition(IILjava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 402
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 403
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 407
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 408
    iget-object v4, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    float-to-int v4, v4

    .line 409
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    .line 410
    iget-object v5, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    neg-int v4, v4

    neg-int v2, v2

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 412
    iget-object v2, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 414
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-array p0, v2, [Ljava/lang/Object;

    .line 415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "0 : return target pos=%d"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 417
    :cond_1
    iget v4, v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteCount()I

    move-result p0

    if-lez p0, :cond_2

    add-int/lit8 p0, v1, -0x1

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-array p0, v2, [Ljava/lang/Object;

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "dummy drop target pos=%d"

    invoke-static {p1, p0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 421
    :cond_3
    iget v3, v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    if-ne v3, v2, :cond_5

    new-array p1, v5, [Ljava/lang/Object;

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    if-ge v1, p0, :cond_4

    move v0, v2

    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v2

    const/4 p0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p0

    const-string p0, "find bounds [%d] : i < mBounds.centerY()=%b, targetPos=%d"

    .line 423
    invoke-static {p0, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private getFavoriteCount()I
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 142
    iget v1, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getFavoriteKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 154
    iget v2, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "   save key=%s"

    invoke-static {v3, v2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 398
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private removeDummyDropTarget(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    const/4 v0, 0x0

    .line 203
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget v1, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->removeItem(I)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    :cond_2
    return-void
.end method

.method private resetCurrentPos()V
    .locals 1

    const/4 v0, -0x1

    .line 306
    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRVType()I
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public hide()V
    .locals 5

    .line 119
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->resetScroll()V

    .line 122
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 123
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setPixelSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget v3, v3, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mBaseVHType:I

    if-nez v3, :cond_1

    .line 132
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic lambda$onDragging$0$AppDockEditUIView(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;Ljava/lang/Integer;)V
    .locals 3

    .line 323
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "drag target add pos=%d"

    .line 324
    invoke-static {v2, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->clone()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    const/4 v0, 0x3

    .line 326
    invoke-virtual {p1, v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    .line 327
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->addItem(ILcom/android/systemui/appdock/model/AppDockItemInfo;)V

    .line 328
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 329
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDragging$1$AppDockEditUIView(Ljava/lang/Integer;)V
    .locals 2

    .line 342
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    if-eq v0, v1, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->moveItem(II)V

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 51
    invoke-static {p0}, Lcom/android/systemui/appdock/view/AppDockDragLayer;->addDropTarget(Landroid/view/View;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditAddEvent;)V
    .locals 5

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 228
    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditAddEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 229
    invoke-virtual {v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "AppDockEditAddEvent : info=%s, favoritesCnt=%d"

    .line 228
    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object p1, p1, Lcom/android/systemui/appdock/event/AppDockEditAddEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->clone()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setDisabled(Z)V

    .line 232
    invoke-virtual {p1, v4}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->addCache(Ljava/lang/String;)V

    const-string v1, "addPos=%d"

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    add-int/2addr v0, v4

    new-array v2, v4, [Ljava/lang/Object;

    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->addItem(ILcom/android/systemui/appdock/model/AppDockItemInfo;)V

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->removeCache(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    .line 255
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 259
    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppDockEditRemoveEvent : info=%s"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->removeCache(Ljava/lang/String;)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 264
    iget v2, v1, Lcom/android/systemui/appdock/model/AppDockItemInfo;->mAppVHType:I

    if-ne v2, v0, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditRemoveEvent;->info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {v2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->removeItem(I)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    .line 272
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 276
    iget-object v2, p1, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AppDockEditStateChangeEvent : EditAction=%s"

    invoke-static {v2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    sget-object v1, Lcom/android/systemui/appdock/view/AppDockEditUIView$2;->$SwitchMap$com$android$systemui$appdock$AppDockStateManager$EditAction:[I

    iget-object p1, p1, Lcom/android/systemui/appdock/event/AppDockEditStateChangeEvent;->action:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->hide()V

    .line 289
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->cancel(Landroid/content/Context;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->hide()V

    .line 284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteKeys()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->save(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->show()V

    :goto_0
    return-void
.end method

.method public onDragEnd(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)Landroid/graphics/Rect;
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 352
    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "dragTarget=%s, [%d, %d] mCurrentPos=%d"

    invoke-static {v1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->isOutOfBounds(II)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_3

    iget p2, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto/16 :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    invoke-virtual {p1, v3}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    .line 364
    iget p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->getFavoriteCount()I

    move-result p2

    const/4 v0, 0x6

    if-le p2, v0, :cond_1

    const/4 p2, 0x7

    .line 368
    invoke-virtual {p0, p2}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->removeItem(I)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "remove idx=%d, key=%s"

    invoke-static {p2, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->removeCache(Ljava/lang/String;)V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    .line 378
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p2, v0}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->resetCurrentPos()V

    if-eqz p1, :cond_2

    .line 384
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 385
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getContentView()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 386
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateView()V

    .line 388
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 389
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object p0

    :cond_2
    return-object p3

    .line 356
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getFavoriteApps()Lcom/android/systemui/appdock/model/AppDockFavoriteApps;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/appdock/model/AppDockFavoriteApps;->removeCache(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    .line 358
    invoke-static {}, Lcom/android/systemui/appdock/AppDockStateManager;->get()Lcom/android/systemui/appdock/AppDockStateManager;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/appdock/AppDockStateManager$EditAction;->ACTION_EDIT_LIST_CHANGE:Lcom/android/systemui/appdock/AppDockStateManager$EditAction;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/AppDockStateManager;->updateEditMode(Lcom/android/systemui/appdock/AppDockStateManager$EditAction;)V

    return-object p3
.end method

.method public onDragStart(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 301
    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "dragTarget=%s, [%d, %d]"

    invoke-static {p1, v0}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->resetCurrentPos()V

    return-void
.end method

.method public onDragging(Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;II)V
    .locals 2

    .line 312
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->isOutOfBounds(II)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Move outside, remove empty item pos=%d"

    invoke-static {p2, p1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget p1, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->removeItem(I)Lcom/android/systemui/appdock/model/AppDockItemInfo;

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->resetCurrentPos()V

    return-void

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    if-ne v0, v1, :cond_3

    .line 320
    invoke-interface {p1}, Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;->getAppInfo()Lcom/android/systemui/appdock/model/AppDockItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->findFavoriteInfoIndex(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 322
    new-instance v0, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$6zr9HAm13Pfn4VYqTqsPYw0pC_0;-><init>(Lcom/android/systemui/appdock/view/AppDockEditUIView;Lcom/android/systemui/appdock/view/AppDockDragLayer$AppDockEditDragTarget;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->findTargetPosition(IILjava/util/function/Consumer;)V

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->getItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/model/AppDockItemInfo;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->setAppVHType(I)V

    .line 336
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;

    if-eqz p1, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/android/systemui/appdock/view/AppDockItemInfoViewHolder;->updateView()V

    .line 338
    :cond_2
    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockEditUIView;->mCurrentPos:I

    goto :goto_0

    .line 341
    :cond_3
    new-instance p1, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$lIOKOwOrGw9VCEOY7i9pvGe5AA8;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/-$$Lambda$AppDockEditUIView$lIOKOwOrGw9VCEOY7i9pvGe5AA8;-><init>(Lcom/android/systemui/appdock/view/AppDockEditUIView;)V

    invoke-direct {p0, p2, p3, p1}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->findTargetPosition(IILjava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/Rune;->APPDOCK_ENABLED:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 75
    new-instance v1, Lcom/android/systemui/appdock/view/AppDockEditUIView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView$1;-><init>(Lcom/android/systemui/appdock/view/AppDockEditUIView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 72
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v1}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 91
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_width:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 59
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_margin_right:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 61
    sget-object p1, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->BOTTOM_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget p2, Lcom/android/systemui/R$dimen;->appdock_edit_ui_margin_top_bottom:I

    invoke-static {p0, p1, p2}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 96
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->resetScroll()V

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->unbind()V

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/appdock/model/AppDockAppListLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader;->getList(Z)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/systemui/appdock/view/AppDockBaseItemListView;->bind(Ljava/util/List;)V

    .line 103
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockEditUIView;->checkDummyDropTargetAttach(Ljava/util/List;)V

    .line 105
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->WIDTH:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_edit_ui_width:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    .line 106
    sget-object v0, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;->RIGHT_MARGIN:Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;

    sget v1, Lcom/android/systemui/R$dimen;->appdock_edit_ui_margin_right:I

    invoke-static {p0, v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->setDimenSize(Landroid/view/View;Lcom/android/systemui/appdock/utils/AppDockUINormalyzer$Attr;I)V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 111
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
