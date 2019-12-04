.class public Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;
.super Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.source "OpenThemeSpriteView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mIsTop:Z

.field protected mSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/theme/particle/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "OpenThemeSurfaceView"

    .line 32
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    .line 47
    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/theme/OpenThemeUtil;->loadBackgroundBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bg: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;)V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mIsTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 72
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->onUpdate()V

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 55
    invoke-super {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->clear()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string v0, "ondetach2"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
