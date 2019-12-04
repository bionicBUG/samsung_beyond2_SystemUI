.class public Lcom/android/systemui/appdock/view/AppDockGridViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "AppDockGridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;
    }
.end annotation


# instance fields
.field private mCol:I

.field private mGroupCnt:I

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroupMaxChildCnt:I

.field private mIsPortrait:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

.field private mRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 40
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager$1;-><init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)V

    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockAnimationHelper;->addListener(Lcom/android/systemui/appdock/utils/AppDockAnimationHelper$Listener;)V

    .line 49
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockGridViewPager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager$2;-><init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/view/AppDockGridViewPager;I)I
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getReversePosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    return p0
.end method

.method private composeGroupContent(Z)V
    .locals 8

    .line 90
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    .line 91
    new-instance p1, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;-><init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->getTime()I

    move-result p1

    .line 96
    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mRow:I

    iget v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mCol:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 104
    :goto_0
    iget v3, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    if-ge v1, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    iget v6, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    add-int/2addr v6, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget v3, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->ensureIndicatorViewBinding()V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    iget v2, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->setCount(I)V

    .line 115
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->requestInitCurrentPage()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->getTime()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    iget-boolean p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mIsPortrait:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x3

    iget v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupMaxChildCnt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x4

    iget p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    const-string/jumbo p0, "time=%d, mIsPortrait=%b, mList size=%d, mGroupMaxChildCnt=%d, mGroupCnt=%d"

    .line 117
    invoke-static {p0, v1}, Lcom/android/systemui/appdock/utils/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private ensureIndicatorViewBinding()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->appdock_grid_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method private getReversePosition(I)I
    .locals 0

    .line 222
    iget p0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mGroupCnt:I

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private isBinded()Z
    .locals 0

    .line 146
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private requestInitCurrentPage()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager$3;-><init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/model/AppDockItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager$AppDockGridAdapter;-><init>(Lcom/android/systemui/appdock/view/AppDockGridViewPager;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mIsPortrait:Z

    .line 86
    iget-boolean p1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mIsPortrait:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->composeGroupContent(Z)V

    return-void
.end method

.method public getCurrentItem()I
    .locals 2

    .line 243
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getReversePosition(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->appdock_grid_row:I

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mRow:I

    .line 205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->appdock_grid_col:I

    invoke-static {v0, v1}, Lcom/android/systemui/appdock/utils/AppDockUINormalyzer;->getRealInteger(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mCol:I

    .line 207
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mIsPortrait:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->isBinded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->unbind()V

    .line 210
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->composeGroupContent(Z)V

    .line 213
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mIsPortrait:Z

    .line 215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 66
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getReversePosition(I)I

    move-result p1

    .line 230
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/utils/AppDockUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->getReversePosition(I)I

    move-result p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public unbind()V
    .locals 2

    .line 134
    invoke-static {}, Lcom/android/systemui/appdock/utils/LogHelper;->debug()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/appdock/view/AppDockGridViewPager;->mPageIndicator:Lcom/android/systemui/appdock/view/AppDockGridPageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_1
    return-void
.end method
