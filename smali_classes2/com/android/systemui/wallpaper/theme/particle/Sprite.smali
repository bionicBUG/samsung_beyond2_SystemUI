.class public Lcom/android/systemui/wallpaper/theme/particle/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;
    }
.end annotation


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsRotated:Z

.field private mModifierCount:I

.field private mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->visible:Z

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    .line 50
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->x:F

    .line 51
    iput p2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->y:F

    .line 52
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    .line 53
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    return-void
.end method


# virtual methods
.method public addModifier(Lcom/android/systemui/wallpaper/theme/SpriteModifier;)Z
    .locals 3

    .line 73
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    aput-object p1, v1, v0

    .line 78
    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/theme/SpriteModifier;->onCreate(Lcom/android/systemui/wallpaper/theme/particle/Sprite;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->x:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mIsRotated:Z

    if-eqz v0, :cond_1

    .line 96
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mAngle:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mPivotX:F

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mPivotY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 98
    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 100
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 102
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->currentFrame:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    mul-float/2addr v1, p0

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/systemui/wallpaper/theme/SpriteModifier;->onUpdate(Lcom/android/systemui/wallpaper/theme/particle/Sprite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/content/Context;IIF)V
    .locals 0

    .line 57
    invoke-static {p1, p2}, Lcom/android/systemui/wallpaper/theme/OpenThemeUtil;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V

    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V
    .locals 0

    .line 61
    iput p3, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->frameSize:I

    .line 62
    iput p4, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mScale:F

    .line 63
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    .line 65
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    return-void
.end method
