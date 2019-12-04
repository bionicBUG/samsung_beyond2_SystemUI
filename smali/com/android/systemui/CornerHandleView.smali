.class public Lcom/android/systemui/CornerHandleView;
.super Landroid/view/View;
.source "CornerHandleView.java"


# static fields
.field private static final MARGIN_DP:F


# instance fields
.field private mDarkColor:I

.field private mLightColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    :goto_0
    sput v0, Lcom/android/systemui/CornerHandleView;->MARGIN_DP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 62
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 64
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->assist_hint_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    .line 65
    :cond_0
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 66
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$color;->assist_hint_color_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 67
    :cond_1
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->updatePath()V

    return-void
.end method

.method private static convertDpToPixel(FLandroid/content/Context;)F
    .locals 1

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private static convertPixelToDp(FLandroid/content/Context;)F
    .locals 1

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private getAngle()F
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x41f80000    # 31.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x42b40000    # 90.0f

    cmpl-float v1, v0, p0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method private getInnerRadiusPx()F
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMarginPx()F
    .locals 1

    .line 159
    sget v0, Lcom/android/systemui/CornerHandleView;->MARGIN_DP:F

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private getOuterRadiusPx()F
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    .line 180
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    float-to-int v0, p0

    :cond_2
    int-to-float p0, v0

    return p0
.end method

.method private getStrokePx()F
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ff9999a    # 1.95f

    .line 188
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 187
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private updatePath()V
    .locals 11

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    .line 75
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result v0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v4

    sub-float v4, v2, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    const/high16 v1, 0x41940000    # 18.5f

    .line 80
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    const/high16 v3, 0x41840000    # 16.5f

    .line 81
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    .line 82
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v1, v0

    sub-float v7, v3, v0

    add-float/2addr v1, v0

    add-float/2addr v3, v0

    invoke-direct {v5, v6, v7, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v5, v4, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result v0

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getInnerRadiusPx()F

    move-result v4

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result v5

    div-float/2addr v5, v3

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v6

    sub-float v7, v2, v6

    div-float/2addr v7, v3

    add-float/2addr v7, v1

    .line 94
    new-instance v1, Landroid/graphics/RectF;

    add-float v8, v0, v5

    mul-float v9, v4, v3

    add-float v10, v0, v9

    sub-float/2addr v10, v5

    invoke-direct {v1, v8, v8, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v9, v2

    .line 100
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result v2

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x41f80000    # 31.0f

    sub-float/2addr v5, v2

    .line 105
    sget v2, Lcom/android/systemui/CornerHandleView;->MARGIN_DP:F

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    .line 108
    iget-object v3, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    add-float/2addr v0, v4

    add-float/2addr v2, v0

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v1, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateDarkness(F)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 124
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
