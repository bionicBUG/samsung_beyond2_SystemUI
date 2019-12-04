.class public Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerSubHandleView;
.super Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;
.source "MultiSplitDockedDividerSubHandleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 16
    iget v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    add-int/2addr v2, v0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->mDistance:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 18
    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int v4, v1, v3

    iget v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDockedDividerHandleView;->mDistance:I

    add-int/2addr v4, v5

    .line 19
    iget v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v0

    int-to-float v7, v1

    int-to-float v2, v2

    .line 20
    iget v5, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v1, v5

    int-to-float v9, v1

    int-to-float v1, v3

    iget-object v12, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v0

    move v8, v2

    move v10, v1

    move v11, v1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    int-to-float v7, v4

    .line 22
    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mCurrentHeight:I

    add-int/2addr v4, v3

    int-to-float v9, v4

    iget-object v12, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
