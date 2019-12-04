.class public Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;
.super Ljava/lang/Object;
.source "WallpaperAdaptiveColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "WallpaperAdaptiveColor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InvertAdaptiveHsvColor([F[F)[[F
    .locals 5

    .line 176
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string v1, "InvertAdaptiveHsvColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x1

    .line 180
    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 181
    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    .line 182
    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object p0

    aput-object p0, v0, v2

    .line 183
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object p0

    const/4 v4, 0x3

    aput-object p0, v0, v4

    .line 184
    invoke-static {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningInvert([FI)[F

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    .line 187
    aget-object p0, v0, v3

    aget-object p1, v0, v1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    .line 188
    aget-object p0, v0, v2

    aget-object p1, v0, v4

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static adaptiveHsvColor([F[F)[[F
    .locals 5

    .line 158
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    const-string v1, "adaptiveHsvColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x1

    .line 162
    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 163
    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    .line 164
    invoke-static {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object p0

    aput-object p0, v0, v2

    .line 165
    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object p0

    const/4 v4, 0x3

    aput-object p0, v0, v4

    .line 166
    invoke-static {p1, v4}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuning([FI)[F

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    .line 169
    aget-object p0, v0, v3

    aget-object p1, v0, v1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    .line 170
    aget-object p0, v0, v2

    aget-object p1, v0, v4

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->colorTuningHue([F[F)V

    return-object v0
.end method

.method private static colorTuning([FI)[F
    .locals 6

    .line 194
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v0, 0x1

    .line 195
    aget v1, p0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v0, :cond_4

    const v3, 0x3c23d70a    # 0.01f

    const/16 v4, 0xa

    if-ne p1, v0, :cond_1

    const/16 p1, 0x9

    if-le v1, p1, :cond_0

    const/16 p1, 0x14

    if-lt v1, p1, :cond_5

    .line 200
    :cond_0
    rem-int/2addr v1, v4

    int-to-float p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p1, v1

    mul-float/2addr p1, v3

    aput p1, p0, v0

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    const/16 p1, 0x13

    if-le v1, p1, :cond_2

    const/16 p1, 0x1e

    if-lt v1, p1, :cond_5

    .line 204
    :cond_2
    rem-int/2addr v1, v4

    int-to-float p1, v1

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr p1, v1

    mul-float/2addr p1, v3

    aput p1, p0, v0

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne p1, v5, :cond_5

    if-lt v1, v4, :cond_5

    .line 208
    rem-int/2addr v1, v4

    int-to-float p1, v1

    mul-float/2addr p1, v3

    aput p1, p0, v0

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    const/4 p1, 0x0

    .line 212
    aput p1, p0, v0

    :cond_5
    :goto_0
    const p1, 0x3f7ae148    # 0.98f

    .line 214
    aput p1, p0, v2

    return-object p0
.end method

.method private static colorTuningHue([F[F)V
    .locals 5

    const/4 v0, 0x0

    .line 254
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 255
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v3, v1, v2

    .line 257
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_3

    const/high16 v3, 0x41a00000    # 20.0f

    if-le v1, v2, :cond_1

    const/16 v2, 0x154

    if-lt v1, v2, :cond_0

    .line 262
    aget p0, p1, v0

    sub-float/2addr p0, v3

    aput p0, p1, v0

    goto :goto_0

    .line 264
    :cond_0
    aget p1, p0, v0

    add-float/2addr p1, v3

    aput p1, p0, v0

    goto :goto_0

    .line 267
    :cond_1
    aget v1, p1, v0

    const/high16 v2, 0x43aa0000    # 340.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 268
    aget p1, p0, v0

    sub-float/2addr p1, v3

    aput p1, p0, v0

    goto :goto_0

    .line 270
    :cond_2
    aget p0, p1, v0

    add-float/2addr p0, v3

    aput p0, p1, v0

    :cond_3
    :goto_0
    return-void
.end method

.method private static colorTuningInvert([FI)[F
    .locals 7

    .line 220
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v0, 0x1

    .line 221
    aget v1, p0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const v3, 0x3e8a3d71    # 0.27f

    const/4 v4, 0x2

    if-lt v1, v0, :cond_5

    add-int/lit8 v1, v1, 0x28

    const/16 v5, 0x64

    const v6, 0x3c23d70a    # 0.01f

    if-lt v1, v5, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 226
    aput v1, p0, v0

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 228
    aput v1, p0, v0

    .line 231
    :goto_0
    aget v1, p0, v4

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v2, 0x1b

    if-ne p1, v0, :cond_1

    add-int/lit8 v1, v1, -0x28

    goto :goto_1

    :cond_1
    if-ne p1, v4, :cond_2

    add-int/lit8 v1, v1, -0xa

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    if-ge v1, v2, :cond_4

    .line 241
    aput v3, p0, v4

    goto :goto_2

    :cond_4
    int-to-float p1, v1

    mul-float/2addr p1, v6

    .line 243
    aput p1, p0, v4

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    const/4 p1, 0x0

    .line 246
    aput p1, p0, v0

    .line 247
    aput v3, p0, v4

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;IZ)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 8

    .line 136
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdaptiveColorFromBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {p1}, Lcom/android/systemui/wallpaper/Kmeans;->makeClusterGroup_preset1(I)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/wallpaper/Kmeans;->kMeans_hsv(Landroid/graphics/Bitmap;[I)[Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;

    move-result-object p0

    const/4 p1, 0x0

    .line 140
    aget-object v0, p0, p1

    iget-object v0, v0, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x1

    .line 141
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/Kmeans$DominantHSVColorResult;->hsv_color:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p2, :cond_0

    .line 145
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->InvertAdaptiveHsvColor([F[F)[[F

    move-result-object p0

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->adaptiveHsvColor([F[F)[[F

    move-result-object p0

    .line 150
    :goto_0
    new-instance p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    aget-object p1, p0, p1

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aget-object p1, p0, v1

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    const/4 p1, 0x2

    aget-object p1, p0, p1

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    const/4 p1, 0x3

    aget-object p1, p0, p1

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    const/4 p1, 0x4

    aget-object p0, p0, p1

    .line 154
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>(IIIII)V

    return-object p2
.end method
