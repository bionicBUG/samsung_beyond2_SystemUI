.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    .line 50
    sget-object v1, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 54
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 55
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_numColumns:I

    if-ne v3, v4, :cond_0

    .line 56
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    .line 57
    :cond_0
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_verticalSpacing:I

    if-ne v3, v4, :cond_1

    .line 58
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    .line 59
    :cond_1
    sget v4, Lcom/android/systemui/R$styleable;->PseudoGridView_horizontalSpacing:I

    if-ne v3, v4, :cond_2

    .line 60
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 117
    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v3

    if-le v3, v2, :cond_0

    move v3, v2

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    mul-int v9, v6, v3

    add-int v10, v9, v3

    .line 129
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v9, v10, :cond_4

    .line 132
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 133
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 134
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v1, :cond_2

    sub-int/2addr v11, v13

    :cond_2
    add-int v15, v11, v13

    add-int v5, v7, v14

    .line 138
    invoke-virtual {v12, v11, v7, v15, v5}, Landroid/view/View;->layout(IIII)V

    .line 139
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v1, :cond_3

    .line 141
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v5

    goto :goto_3

    .line 143
    :cond_3
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v13, v5

    add-int/2addr v11, v13

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v7, v8

    if-lez v6, :cond_5

    .line 148
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v7, v5

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 69
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 76
    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    if-le v3, v2, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v4, v3, -0x1

    .line 78
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    div-int/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    .line 80
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 83
    iget v6, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int v7, v2, v6

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    const/4 v6, 0x0

    move v8, v6

    move v9, v8

    :goto_0
    if-ge v8, v7, :cond_5

    mul-int v10, v8, v3

    add-int v11, v10, v3

    .line 89
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v13, v6

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_1

    .line 93
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 94
    invoke-virtual {v14, v4, v6}, Landroid/view/View;->measure(II)V

    .line 95
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 97
    :cond_1
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    :goto_2
    if-ge v10, v11, :cond_3

    .line 99
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 100
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    if-eq v15, v13, :cond_2

    .line 101
    invoke-virtual {v14, v4, v12}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v9, v13

    if-lez v8, :cond_4

    .line 106
    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v9, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move/from16 v8, p2

    .line 110
    invoke-static {v9, v8, v6}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 70
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Needs a maximum width"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
