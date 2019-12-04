.class public Lcom/android/systemui/wallpaper/theme/view/SnowView;
.super Landroid/view/View;
.source "SnowView.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I = 0x23


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

.field private refresh:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    .line 39
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    .line 41
    sget v0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->MAX_POOL_SIZE:I

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Snow;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 45
    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Snow;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Snow;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mSnowPool:[Lcom/android/systemui/wallpaper/theme/particle/Snow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/android/systemui/wallpaper/theme/particle/Snow;->alpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 59
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cx:F

    invoke-static {v4, v5}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Snow;->cy:F

    .line 60
    invoke-static {v5, v6}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/systemui/wallpaper/theme/particle/Snow;->radius:I

    int-to-float v7, v7

    .line 61
    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->mPaint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/theme/particle/Snow;->next()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/SnowView;->refresh:Z

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
