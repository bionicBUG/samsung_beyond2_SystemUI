.class public Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;
.super Landroid/view/View;
.source "MultiSplitDividerHandleView.java"


# instance fields
.field mCurrentHeight:I

.field mCurrentWidth:I

.field final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 35
    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v0

    int-to-float v5, v1

    .line 36
    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v3

    int-to-float v6, v0

    iget v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v1, v0

    int-to-float v7, v1

    int-to-float v9, v2

    iget-object v10, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setGuideViewMode(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multi_split_stack_divider_guide_view_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multi_split_docked_divider_handle_color:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
