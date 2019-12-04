.class public Lcom/android/systemui/infinity/preview/GalaxyViewCircle;
.super Landroid/view/View;
.source "GalaxyViewCircle.java"


# static fields
.field public static final POSITION_LEFT:I = 0x1

.field public static final POSITION_RIGHT:I


# instance fields
.field private mCurrentXDegree:F

.field private mCurrentYDegree:F

.field private mExpand:F

.field private mHeight:F

.field private mIsInitStart:Z

.field private mLeftMargin:F

.field private mMainAlpha:F

.field private mMaxDegree:F

.field private mPaint:Landroid/graphics/Paint;

.field private mParticleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleCount:I

.field private mParticleScale:F

.field private mPlusValueX:F

.field private mPositionType:I

.field private mStarScale:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/16 p2, 0xbb8

    .line 42
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    const p2, 0x3e4ccccd    # 0.2f

    .line 43
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    .line 47
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    .line 50
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    const/high16 v0, 0x40e00000    # 7.0f

    .line 52
    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    .line 53
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    const/high16 p2, 0x442f0000    # 700.0f

    .line 54
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 55
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    .line 56
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    .line 57
    iput p2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->initStarList()V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateDXObject()V
    .locals 3

    const/4 v0, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/infinity/preview/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public changeAlpha(F)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public changePlusValue(F)V
    .locals 2

    .line 162
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    .line 163
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-float p1, p1

    .line 164
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 0

    .line 198
    iget p0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    return p0
.end method

.method public getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 4

    .line 202
    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, p1

    iget p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 4

    .line 206
    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, p1

    iget p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentYDegree:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 5

    .line 184
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 185
    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, p1

    iget p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float p0, p0

    add-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    add-double/2addr v1, v3

    double-to-float p0, v1

    return p0
.end method

.method public getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 0

    .line 189
    iget p0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    return p0
.end method

.method public getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 5

    .line 193
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPlusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 194
    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    neg-float v1, v1

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, p1

    iget p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mCurrentXDegree:F

    neg-float p0, p0

    add-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    add-double/2addr v1, v3

    double-to-float p0, v1

    return p0
.end method

.method public getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    .line 210
    iget p1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v0, 0x3fcccccd    # 1.6f

    add-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p1

    .line 211
    iget p0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mStarScale:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x41a00000    # 20.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public getRandValue(F)F
    .locals 4

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    float-to-double p0, p1

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public initStarList()V
    .locals 14

    .line 74
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    .line 77
    iget-object v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v0, v7

    float-to-int v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccd    # 0.2f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    .line 78
    iget-object v9, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v10, v0

    const/high16 v11, 0x3fc00000    # 1.5f

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3ecccccd    # 0.4f

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    const v6, 0x3e2e147b    # 0.17f

    mul-float/2addr v0, v6

    float-to-int v2, v0

    const v3, 0x3fcccccd    # 1.6f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3ecccccd    # 0.4f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    .line 80
    iget-object v8, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v9, v0

    const v10, 0x3fb33333    # 1.4f

    const v11, 0x3f19999a    # 0.6f

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleCount:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3f99999a    # 1.2f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;IFFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    int-to-float v1, v0

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 89
    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMaxDegree:F

    mul-float/2addr v1, v2

    .line 91
    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v4

    float-to-double v2, p3

    float-to-double v5, v1

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v2

    double-to-float v1, v7

    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 93
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v2, v5

    double-to-float v2, v2

    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v3

    add-float v5, v2, v3

    .line 95
    new-instance v8, Lcom/android/systemui/infinity/preview/ParticleModel;

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v2, v8

    move v3, v1

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/infinity/preview/ParticleModel;-><init>(FFFFF)V

    .line 96
    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mExpand:F

    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    const/4 v1, -0x1

    .line 97
    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    const/4 v1, 0x0

    .line 99
    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->tension:F

    .line 100
    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v1

    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->xRand:F

    .line 101
    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v1

    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->yRand:F

    .line 102
    invoke-virtual {p0, p5}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRandValue(F)F

    move-result v1

    iput v1, v8, Lcom/android/systemui/infinity/preview/ParticleModel;->zRand:F

    .line 104
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mIsInitStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->invalidateDXObject()V

    .line 135
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    .line 139
    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    .line 143
    :cond_2
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 147
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mParticleScale:F

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    goto :goto_1

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mMainAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 156
    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->expand:F

    mul-float/2addr v4, v5

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    iget v7, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mWidth:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    iget v1, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v7, 0x3ed70a3d    # 0.42f

    mul-float/2addr v1, v7

    add-float/2addr v6, v1

    mul-float/2addr v6, v5

    add-float/2addr v6, v3

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public setHorizontalLocation(I)V
    .locals 1

    .line 175
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mPositionType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 179
    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->mLeftMargin:F

    :goto_0
    return-void
.end method
