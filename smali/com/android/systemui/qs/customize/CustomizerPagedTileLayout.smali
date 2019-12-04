.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAvailablePageNextButton:Landroid/widget/ImageView;

.field private mAvailablePagePrevButton:Landroid/widget/ImageView;

.field protected mCellHeight:I

.field private mCellMarginTop:I

.field protected mCellVerticalMargin:I

.field protected mColumns:I

.field private mContentsColor:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private final mDistribute:Ljava/lang/Runnable;

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mElevation:F

.field private mPageBackground:Landroid/graphics/drawable/Drawable;

.field private mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mRows:I

.field protected mTileHorizontalMargin:I

.field protected mTileVerticalMargin:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 42
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 p2, 0x4

    .line 83
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    const/4 p2, -0x1

    .line 90
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    const/4 p2, 0x0

    .line 91
    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 92
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$color;->qs_edit_panel_active_tile_icon_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    .line 96
    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 107
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 108
    new-instance p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateAvailablePageButtons()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)F
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;F)F
    .locals 0

    .line 31
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method private addPage()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 268
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 270
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileHorizontalMargin:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setTileMargin(II)V

    .line 272
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 277
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setContentsColor(I)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 284
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateAvailablePageButtons()V

    .line 288
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private distributeTiles()V
    .locals 9

    .line 492
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 495
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 496
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    invoke-virtual {v0, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 501
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 503
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileHorizontalMargin:I

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setTileMargin(II)V

    .line 505
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setContentsColor(I)V

    .line 506
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 507
    :cond_0
    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 510
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v3

    move v4, v0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 514
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 515
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 516
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 517
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$layout;->qs_customizer_paged_page:I

    invoke-virtual {v6, v7, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 518
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 520
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileHorizontalMargin:I

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setTileMargin(II)V

    .line 522
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->setContentsColor(I)V

    .line 523
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 524
    :cond_2
    iget v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 527
    iget-object v7, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 531
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_7

    .line 535
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    const-string v0, "CSTMPagedTileLayout"

    const-string v1, "mPages.remove"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 539
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_6

    .line 540
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 542
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 544
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    :cond_7
    move v0, v3

    .line 547
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 548
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 550
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_9

    .line 551
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 553
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 555
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method private movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 10

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v7

    .line 375
    iget v0, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v1, 0xcc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v7, v3, :cond_1

    return-void

    :cond_0
    if-nez v7, :cond_1

    return-void

    :cond_1
    if-ne v0, v1, :cond_2

    move v8, v2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    move v8, v3

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    move v4, v3

    goto :goto_1

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v4, v5

    sub-int/2addr v4, v2

    :goto_1
    if-ne v0, v1, :cond_4

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v3

    .line 386
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 389
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v2, v7, v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    .line 391
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 394
    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 395
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, v4, v0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 396
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 398
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    new-instance v9, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;

    move-object v0, v9

    move-object v1, p0

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$7;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 410
    new-instance p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$8;

    invoke-direct {p1, p0, v7, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$8;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;II)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postDistributeTiles()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 487
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removePage()V
    .locals 3

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 296
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateAvailablePageButtons()V

    .line 304
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateAvailablePageButtons()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePagePrevButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePageNextButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePagePrevButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePageNextButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePagePrevButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePageNextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result p0

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_2

    move v2, v5

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTilesInfo()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 452
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 455
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 7

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_2

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addPage()V

    .line 331
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    .line 332
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 333
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    goto :goto_1

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    .line 336
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 337
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 343
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " tiles added"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSTMPagedTileLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public getColumnCount()I
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 609
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    return p0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 217
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getRtlPosition(I)I

    move-result p0

    return p0
.end method

.method public getMinimumTileNum()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result p0

    return p0

    .line 464
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected getRtlPosition(I)I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public getSpec()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 434
    iget-object v3, v3, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newspecs =  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTilesInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 443
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTotalPages()I
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 5

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 616
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 617
    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 619
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_0

    .line 620
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    goto :goto_1

    :cond_0
    const/16 v2, 0xc9

    if-ne v3, v2, :cond_1

    .line 622
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0xcb

    if-eq v3, v2, :cond_3

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xc8

    if-ne v3, p1, :cond_4

    .line 626
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_1

    .line 624
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 602
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 200
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public removeAllPage()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 482
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeAllViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 676
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 7

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_1
    move v2, v4

    goto :goto_0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 364
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getCount()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    :cond_3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setContentsColor(I)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContentsColor:I

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 563
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    return-void
.end method

.method public setPageButtonResources(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePagePrevButton:Landroid/widget/ImageView;

    .line 163
    iput-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePageNextButton:Landroid/widget/ImageView;

    .line 164
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePagePrevButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$5;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAvailablePageNextButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$6;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateAvailablePageButtons()V

    return-void
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 150
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setExpansion(F)V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setSecPageIndicatorCallback(Lcom/android/systemui/qs/SecPageIndicator$SecPageIndicatorCallback;)V

    return-void
.end method

.method public setPageMatrix(II)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    .line 234
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    return-void
.end method

.method public setSecIndicatorColor(I)V
    .locals 0

    return-void
.end method

.method public setTileLayoutResources(II)V
    .locals 0

    .line 570
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    .line 571
    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileHorizontalMargin:I

    return-void
.end method

.method public updateResources()Z
    .locals 5

    const-string v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "updateResources"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_edit_tile_vertical_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellVerticalMargin:I

    .line 581
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_qs_tile_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    .line 582
    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    const/4 v0, 0x0

    move v1, v0

    .line 584
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMatrix(II)V

    .line 587
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileVerticalMargin:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTileHorizontalMargin:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setTileMargin(II)V

    .line 589
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateTilesInfo()V

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
