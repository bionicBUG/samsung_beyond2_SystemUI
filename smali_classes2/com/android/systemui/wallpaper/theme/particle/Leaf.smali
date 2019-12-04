.class public Lcom/android/systemui/wallpaper/theme/particle/Leaf;
.super Ljava/lang/Object;
.source "Leaf.java"


# instance fields
.field public cx:F

.field public cy:F

.field public leafKind:I

.field public leafSize:I

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    .line 28
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    .line 34
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 50
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 52
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    .line 55
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafKind:I

    .line 56
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->leafSize:I

    .line 58
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cx:F

    .line 63
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->cy:F

    .line 65
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->clear()V

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Leaf;->rotate:I

    :cond_1
    return-void
.end method
