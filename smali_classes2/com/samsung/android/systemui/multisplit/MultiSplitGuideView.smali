.class public Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;
.super Landroid/widget/FrameLayout;
.source "MultiSplitGuideView.java"


# instance fields
.field private mBarView:Landroid/widget/ImageView;

.field private mDimView:Landroid/widget/ImageView;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFocusedWindowingMode:I

.field private mGradientColor:[I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mGradientView:Landroid/widget/ImageView;

.field private mIsHorizontalDivision:Z

.field private mStableInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 26
    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientColor:[I

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    return-void
.end method

.method private setGradientDrawable(I)V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mIsHorizontalDivision:Z

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public initLayoutInfo(ZIII)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mIsHorizontalDivision:Z

    .line 62
    iput p2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDisplayWidth:I

    .line 63
    iput p3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDisplayHeight:I

    .line 64
    iput p4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mFocusedWindowingMode:I

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 70
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 71
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 72
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 74
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    .line 73
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mIsHorizontalDivision:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v1, v0, v1}, Landroid/widget/FrameLayout;->internalSetPadding(IIII)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v1, v0}, Landroid/widget/FrameLayout;->internalSetPadding(IIII)V

    .line 82
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/android/systemui/R$id;->multi_split_guide_view_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mBarView:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/android/systemui/R$id;->multi_split_guide_view_dim:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDimView:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/android/systemui/R$id;->multi_split_guide_view_gradient:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientView:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientColor:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->multi_split_divider_guide_view_rect_start_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientColor:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$color;->multi_split_divider_guide_view_rect_end_color:I

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 47
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientColor:[I

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mBarView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientColor:[I

    aget p0, p0, v2

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method public reLayout(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDimView:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mBarView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 90
    iget-object v2, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mGradientView:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    iget-boolean v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mIsHorizontalDivision:Z

    if-eqz v3, :cond_1

    .line 94
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 95
    iget v3, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDisplayHeight:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, p1

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 96
    iget v1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mFocusedWindowingMode:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_0

    sub-int/2addr v3, p2

    .line 97
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 100
    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, p2

    .line 101
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 104
    :cond_1
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 105
    iget v4, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDisplayWidth:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v4, v5

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 106
    iget v6, p2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 108
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 109
    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int p1, v4, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 110
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 112
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 113
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 114
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 115
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 118
    :goto_0
    iget p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mFocusedWindowingMode:I

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->setGradientDrawable(I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/samsung/android/systemui/multisplit/MultiSplitGuideView;->mDimView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
