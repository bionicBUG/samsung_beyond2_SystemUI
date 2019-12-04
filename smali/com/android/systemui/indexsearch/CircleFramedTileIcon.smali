.class public Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedTileIcon.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 8

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    .line 64
    iget p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 73
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v2, 0x43b40000    # 360.0f

    .line 77
    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 79
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getCircleBGColor()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getIconColor()I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 88
    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    iput p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    .line 92
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    invoke-direct {p1, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    .line 93
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-direct {p1, v4, v4, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getCircleBGColor()I
    .locals 2

    .line 113
    sget-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$color;->qs_tile_round_background_on:I

    sget-object v1, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method private getIconColor()I
    .locals 2

    .line 102
    sget-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$color;->qs_tile_round_icon_color_on:I

    sget-object v1, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
    .locals 1

    .line 53
    sput-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 55
    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 57
    new-instance v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;

    float-to-int p0, p0

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 120
    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
