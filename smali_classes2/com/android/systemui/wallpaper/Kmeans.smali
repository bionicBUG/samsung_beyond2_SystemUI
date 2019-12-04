.class public Lcom/android/systemui/wallpaper/Kmeans;
.super Ljava/lang/Object;
.source "Kmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;,
        Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;
    }
.end annotation


# static fields
.field private static DEFAULT_COLOR_NUM:I = 0x3

.field private static DOMINANTC_COLOR_WEIGHT:[F = null

.field private static GRAYSCALE_COLOR_WEIGHT:[F = null

.field public static GRAYSCALE_LIMITE_BRIGHTNESS:F = 0.12f

.field public static GRAYSCALE_LIMITE_SATURATION:F = 0.12f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 42
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    new-array v0, v0, [F

    .line 43
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCenter(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 219
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 220
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 221
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 222
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v1, v0

    .line 226
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v2, v0

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v3, p0

    .line 225
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static checkGayScale_with_value([F)Z
    .locals 3

    const/4 v0, 0x1

    .line 209
    aget v1, p0, v0

    sget v2, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_SATURATION:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x2

    aget p0, p0, v1

    sget v1, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_LIMITE_BRIGHTNESS:F

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static colorDistance_hsv_square2([F[F[F)F
    .locals 5

    const/4 v0, 0x0

    .line 191
    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    :cond_0
    div-float/2addr v1, v2

    const/4 v2, 0x1

    .line 197
    aget v3, p1, v2

    aget v4, p0, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    .line 198
    aget p1, p1, v4

    aget p0, p0, v4

    sub-float/2addr p1, p0

    .line 200
    aget p0, p2, v0

    mul-float/2addr v1, p0

    .line 201
    aget p0, p2, v2

    mul-float/2addr v3, p0

    .line 202
    aget p0, p2, v4

    mul-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method public static kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 9

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 98
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v6

    .line 99
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 101
    invoke-static {v8, p1}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object p0

    return-object p0
.end method

.method static kMeans_hsv([I[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 106
    array-length v2, v1

    .line 107
    new-array v3, v2, [Lcom/android/systemui/wallpaper/Kmeans$DominantColorResult;

    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    .line 109
    new-array v4, v2, [I

    .line 110
    new-array v5, v2, [[F

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v2, :cond_0

    .line 113
    aget v9, v1, v7

    aput v9, v4, v7

    new-array v8, v8, [F

    .line 114
    aput-object v8, v5, v7

    .line 115
    aget v8, v4, v7

    aget-object v9, v5, v7

    invoke-static {v8, v9}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 118
    :cond_0
    array-length v1, v0

    new-array v1, v1, [[F

    const/4 v7, 0x0

    .line 119
    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_1

    new-array v9, v8, [F

    .line 120
    aput-object v9, v1, v7

    .line 121
    aget v9, v0, v7

    aget-object v10, v1, v7

    invoke-static {v9, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 124
    :cond_1
    new-array v7, v2, [Z

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v2, :cond_2

    .line 126
    aget-object v9, v5, v8

    invoke-static {v9}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v9

    aput-boolean v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 131
    :cond_2
    new-array v8, v2, [Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_3

    .line 133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 136
    :goto_4
    array-length v10, v0

    if-ge v9, v10, :cond_7

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 139
    aget-object v11, v1, v9

    invoke-static {v11}, Lcom/android/systemui/wallpaper/Kmeans;->checkGayScale_with_value([F)Z

    move-result v11

    move v13, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v10, v2, :cond_6

    .line 141
    aget-boolean v14, v7, v10

    if-nez v14, :cond_4

    if-nez v11, :cond_4

    .line 146
    aget-object v14, v1, v9

    aget-object v15, v5, v10

    sget-object v6, Lcom/android/systemui/wallpaper/Kmeans;->DOMINANTC_COLOR_WEIGHT:[F

    invoke-static {v14, v15, v6}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v6

    cmpg-float v14, v6, v13

    if-gez v14, :cond_5

    :goto_6
    move v13, v6

    move v12, v10

    goto :goto_7

    :cond_4
    if-eqz v14, :cond_5

    if-eqz v11, :cond_5

    .line 152
    aget-object v6, v1, v9

    aget-object v14, v5, v10

    sget-object v15, Lcom/android/systemui/wallpaper/Kmeans;->GRAYSCALE_COLOR_WEIGHT:[F

    invoke-static {v6, v14, v15}, Lcom/android/systemui/wallpaper/Kmeans;->colorDistance_hsv_square2([F[F[F)F

    move-result v6

    cmpg-float v14, v6, v13

    if-gez v14, :cond_5

    goto :goto_6

    :cond_5
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 159
    :cond_6
    aget-object v6, v8, v12

    aget v10, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_9

    .line 163
    aget-object v6, v8, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_8

    .line 164
    aget-object v6, v8, v1

    invoke-static {v6}, Lcom/android/systemui/wallpaper/Kmeans;->calculateCenter(Ljava/util/List;)I

    move-result v6

    goto :goto_9

    :cond_8
    const/4 v6, 0x0

    .line 166
    :goto_9
    aput v6, v4, v1

    .line 167
    aget v6, v4, v1

    aget-object v7, v5, v1

    invoke-static {v6, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 171
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/4 v0, 0x0

    .line 172
    :goto_a
    array-length v2, v5

    if-ge v0, v2, :cond_a

    .line 173
    new-instance v2, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    aget-object v4, v5, v0

    aget-object v6, v8, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-direct {v2, v4, v6}, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;-><init>([FF)V

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 179
    :cond_a
    new-instance v0, Lcom/android/systemui/wallpaper/Kmeans$1;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/Kmeans$1;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v3
.end method

.method public static makeClusterGroup_preset1(I)[I
    .locals 9

    .line 69
    sget v0, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    if-ge p0, v0, :cond_0

    move p0, v0

    .line 73
    :cond_0
    new-array v0, p0, [I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 74
    aput v1, v0, v2

    const/high16 v1, -0x1000000

    const/4 v3, 0x1

    .line 75
    aput v1, v0, v3

    const v1, -0x777778

    const/4 v4, 0x2

    .line 76
    aput v1, v0, v4

    .line 79
    sget v1, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    :goto_0
    if-ge v1, p0, :cond_1

    const/4 v5, 0x3

    new-array v5, v5, [F

    .line 80
    sget v6, Lcom/android/systemui/wallpaper/Kmeans;->DEFAULT_COLOR_NUM:I

    sub-int v7, v1, v6

    int-to-float v7, v7

    const/high16 v8, 0x43b40000    # 360.0f

    sub-int v6, p0, v6

    int-to-float v6, v6

    div-float/2addr v8, v6

    mul-float/2addr v7, v8

    aput v7, v5, v2

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v5, v3

    aput v6, v5, v4

    .line 85
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
