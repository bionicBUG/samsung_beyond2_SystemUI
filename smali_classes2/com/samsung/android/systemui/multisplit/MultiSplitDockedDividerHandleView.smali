.class public Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;
.super Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;
.source "MultiSplitDockedDividerHandleView.java"


# instance fields
.field mDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multi_split_docked_divider_handle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    .line 27
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multi_split_docked_divider_handle_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->multi_split_docked_divider_handle_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->mDistance:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 36
    iget v3, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    add-int/2addr v3, v1

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 38
    iget v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    sub-int v5, v2, v4

    iget v6, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->mDistance:I

    sub-int/2addr v5, v6

    add-int v7, v2, v4

    add-int/2addr v7, v6

    .line 40
    iget v6, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v1

    int-to-float v10, v2

    int-to-float v3, v3

    .line 41
    iget v6, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v2, v6

    int-to-float v12, v2

    int-to-float v2, v4

    iget-object v15, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v1

    move v11, v3

    move v13, v2

    move v14, v2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v10, v5

    .line 43
    iget v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v5, v4

    int-to-float v12, v5

    iget-object v15, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v10, v7

    .line 45
    iget v4, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v7, v4

    int-to-float v12, v7

    iget-object v15, v0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
