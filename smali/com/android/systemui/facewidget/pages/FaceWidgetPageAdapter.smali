.class public Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "FaceWidgetPageAdapter.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPageItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    return-void
.end method

.method private isSameList(Ljava/util/ArrayList;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;)Z"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    move p0, v1

    .line 168
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 169
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  FaceWidgetPageAdapter"

    .line 189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    Page Item List"

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$yuwdtYQtzcsrmO-O00kWGVhwhSE;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPageAdapter$bA76CRRlw6QguYZSPkzeLfeA8So;

    invoke-direct {p1, p2}, Lcom/android/systemui/facewidget/pages/-$$Lambda$FaceWidgetPageAdapter$bA76CRRlw6QguYZSPkzeLfeA8So;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public getOrderedPageItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPageIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 180
    invoke-virtual {v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->getItem(I)Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;->LOCKSCREEN:Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPageView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageLocation;)Lcom/android/systemui/facewidget/pages/FaceWidgetPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isPageStateNone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPagesController:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->getCurrentPageState()Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setPageState(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Z)V

    .line 78
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->refreshViews()V

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onRefreshCarrierInfo()V

    return-object v0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "page view is null : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removePageItem(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;

    .line 140
    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setPageItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/facewidget/pages/FaceWidgetPageItem;",
            ">;)Z"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/android/systemui/facewidget/pages/-$$Lambda$-rW97CuNLkWhYkWwQGQtywGmddc;->INSTANCE:Lcom/android/systemui/facewidget/pages/-$$Lambda$-rW97CuNLkWhYkWwQGQtywGmddc;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->isSameList(Ljava/util/ArrayList;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageAdapter;->mPageItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 p0, 0x1

    return p0
.end method
