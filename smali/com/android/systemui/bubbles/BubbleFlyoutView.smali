.class public Lcom/android/systemui/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "BubbleFlyoutView.java"


# instance fields
.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mArrowPointingLeft:Z

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBgRect:Landroid/graphics/RectF;

.field private mBgTranslationX:F

.field private mBgTranslationY:F

.field private final mBubbleElevation:I

.field private final mBubbleSize:I

.field private final mCornerRadius:F

.field private mDotColor:I

.field private final mFloatingBackgroundColor:I

.field private final mFlyoutElevation:I

.field private final mFlyoutPadding:I

.field private final mFlyoutSpaceFromBubble:I

.field private final mFlyoutSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mFlyoutText:Landroid/widget/TextView;

.field private final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field private mFlyoutToDotCornerRadiusDelta:F

.field private mFlyoutToDotHeightDelta:F

.field private mFlyoutToDotWidthDelta:F

.field private final mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mNewDotOffsetFromBubbleBounds:F

.field private final mNewDotRadius:F

.field private final mNewDotSize:F

.field private mOnHide:Ljava/lang/Runnable;

.field private mPercentStillFlyout:F

.field private mPercentTransitionedToDot:F

.field private final mPointerSize:I

.field private mRestingTranslationX:F

.field private final mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private mTranslationXWhenDot:F

.field private mTranslationYWhenDot:F

.field private final mTriangleOutline:Landroid/graphics/Outline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 97
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 100
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 107
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 114
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 115
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 119
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 120
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 130
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->bubble_flyout:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    sget v1, Lcom/android/systemui/R$id;->bubble_flyout_text_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->bubble_flyout_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_padding_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 144
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_space_from_bubble:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 145
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_pointer_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    .line 146
    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 147
    sget v2, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 148
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 149
    invoke-static {p1}, Lcom/android/systemui/bubbles/BadgeRenderer;->getDotCenterOffset(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotOffsetFromBubbleBounds:F

    .line 150
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotOffsetFromBubbleBounds:F

    invoke-static {p1}, Lcom/android/systemui/bubbles/BadgeRenderer;->getDotRadius(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    .line 151
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 153
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 157
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 159
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotCornerRadiusDelta:F

    .line 160
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 165
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 166
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 167
    new-instance p1, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v2

    int-to-float v2, v2

    .line 177
    invoke-static {v3, v2, v0}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 179
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 180
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v2, v0

    int-to-float v0, v0

    .line 183
    invoke-static {v2, v0, v1}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 185
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10104e2
        0x1010571
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private clampPercentage(F)F
    .locals 0

    const/4 p0, 0x0

    .line 302
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 382
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 383
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 386
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    iget-object v1, v1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 391
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 392
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 398
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    sub-float/2addr v1, v2

    const v2, 0x3ca3d70a    # 0.02f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 403
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float v3, p0, v1

    mul-float/2addr p0, v1

    invoke-virtual {v0, v3, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 406
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 409
    :cond_1
    iget-object p0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method

.method private renderBackground(Landroid/graphics/Canvas;)V
    .locals 8

    .line 312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 314
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotCornerRadiusDelta:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 318
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 319
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 326
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v5, v6

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 332
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 333
    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 332
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 337
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderPointerTriangle(Landroid/graphics/Canvas;FF)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private renderPointerTriangle(Landroid/graphics/Canvas;FF)V
    .locals 4

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    .line 355
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v2

    sub-float/2addr p2, v1

    add-float/2addr v0, p2

    :goto_1
    div-float/2addr p3, v3

    .line 360
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p3, p2

    .line 364
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 365
    :goto_2
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x437f0000    # 255.0f

    .line 366
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 367
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    float-to-int p2, v0

    float-to-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Outline;->offset(II)V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method getRestingTranslationX()F
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return p0
.end method

.method hideFlyout()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_0
    const/16 v0, 0x8

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$showFlyout$0$BubbleFlyoutView(Landroid/graphics/PointF;Z)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 219
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 222
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 223
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 228
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_1

    .line 229
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    goto :goto_1

    .line 230
    :cond_1
    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    :goto_1
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 233
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    if-eqz p2, :cond_2

    .line 234
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    neg-int p2, p2

    goto :goto_2

    :cond_2
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    :goto_2
    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 233
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 238
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 246
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float p1, p1

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotOffsetFromBubbleBounds:F

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    .line 248
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz p2, :cond_3

    neg-float p1, p1

    .line 249
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    goto :goto_3

    .line 252
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 256
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotOffsetFromBubbleBounds:F

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderBackground(Landroid/graphics/Canvas;)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method setCollapsePercent(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 278
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 279
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 282
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v0, v1

    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 284
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f400000    # 0.75f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->clampPercentage(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 289
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method showFlyout(Ljava/lang/CharSequence;Landroid/graphics/PointF;FZILjava/lang/Runnable;)V
    .locals 0

    .line 200
    iput-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 201
    iput p5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 202
    iput-object p6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    const/4 p5, 0x0

    .line 204
    invoke-virtual {p0, p5}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 205
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 p5, 0x0

    .line 206
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    iget-object p5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    const p6, 0x3f19999a    # 0.6f

    mul-float/2addr p3, p6

    float-to-int p3, p3

    iget p6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 p6, p6, 0x2

    sub-int/2addr p3, p6

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 213
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uI0YooPNkhWtu8ItqiYGpHh1GuY;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
