.class public Lcom/android/systemui/wallpaper/theme/view/RainView;
.super Landroid/view/View;
.source "RainView.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I = 0x3c


# instance fields
.field list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/systemui/wallpaper/theme/particle/Rain;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

.field private rainline:Landroid/graphics/Bitmap;

.field private refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->list:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    .line 49
    sget v0, Lcom/android/systemui/wallpaper/theme/view/RainView;->MAX_POOL_SIZE:I

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Rain;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 52
    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Rain;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Rain;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 56
    sget v0, Lcom/android/systemui/R$drawable;->rainline:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mRainPool:[Lcom/android/systemui/wallpaper/theme/particle/Rain;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 68
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->rainline:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Rain;->x:F

    invoke-static {v5, v6}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/systemui/wallpaper/theme/particle/Rain;->y:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/theme/particle/Rain;->next()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/RainView;->refresh:Z

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
