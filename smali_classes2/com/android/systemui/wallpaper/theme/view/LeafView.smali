.class public Lcom/android/systemui/wallpaper/theme/view/LeafView;
.super Landroid/view/View;
.source "LeafView.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I = 0x23


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLeafImageId:[I

.field private mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

.field private mLeafSizeScale:[F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 40
    sget v2, Lcom/android/systemui/R$drawable;->leaf_01:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->leaf_02:I

    aput v2, v1, v0

    sget v0, Lcom/android/systemui/R$drawable;->leaf_03:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/systemui/R$drawable;->leaf_04:I

    const/4 v2, 0x3

    aput v0, v1, v2

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    .line 54
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    .line 55
    sget v0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->MAX_POOL_SIZE:I

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    invoke-direct {v1, p1}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafPool:[Lcom/android/systemui/wallpaper/theme/particle/Leaf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 72
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget v5, v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 73
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafSizeScale:[F

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    aget v7, v5, v6

    aget v5, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mLeafImageId:[I

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mContext:Landroid/content/Context;

    iget v8, v3, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 77
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->next()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/LeafView;->refresh:Z

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
