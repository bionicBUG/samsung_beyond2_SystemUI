.class public Lcom/android/systemui/wallpaper/theme/particle/Flower;
.super Ljava/lang/Object;
.source "Flower.java"


# instance fields
.field public cx:F

.field public cy:F

.field public flowerKind:I

.field public flowerSize:I

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
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    .line 28
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    .line 34
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    .line 50
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    .line 52
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mXSpeed:I

    .line 53
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mYSpeed:I

    .line 55
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    .line 56
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    .line 57
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    return-void
.end method

.method public isVisible()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mContext:Landroid/content/Context;

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

    .line 61
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    .line 62
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    iget v1, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    .line 64
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Flower;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/particle/Flower;->clear()V

    .line 70
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    :cond_1
    return-void
.end method
