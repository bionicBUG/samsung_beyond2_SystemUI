.class public Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;
.super Ljava/lang/Object;
.source "KeyguardWallpaperColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;
    }
.end annotation


# static fields
.field public static final DEBUG_FLAG_NAMES:[Ljava/lang/String;

.field public static final NUM_SEPERATED_AREA:I

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperColors"

.field public static final UPDATE_FLAGS:[I

.field public static final UPDATE_SHADOW_FLAGS:[I


# instance fields
.field public final BITMAP_SCALE_RATIO:F

.field private final DOMINANT_COLOR_NUMBER:I

.field private mAdaptiveColorChangedListener:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;

.field private mAdaptiveColorExtractor:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

.field private mContext:Landroid/content/Context;

.field private mPresetInfinityAdaptiveColorResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWallpaperColors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private mSemWallpaperColorsSub:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 54
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    const-string v0, "STATUSBAR "

    const-string v1, "BODY_TOP "

    const-string v2, "BODY_BOTTOM "

    const-string v3, "NAVIBAR "

    const-string v4, "BACKGROUND "

    .line 68
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    array-length v0, v0

    sput v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPERATED_AREA:I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x100
        0x200
    .end array-data

    :array_1
    .array-data 4
        0x400
        0x800
        0x1000
        0x2000
        0x4000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d4ccccd    # 0.05f

    .line 78
    iput v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->BITMAP_SCALE_RATIO:F

    const/16 v0, 0xa

    .line 79
    iput v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->DOMINANT_COLOR_NUMBER:I

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsSub:Landroid/util/SparseArray;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    return-object p0
.end method

.method public static checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move p0, v0

    .line 219
    :goto_0
    sget v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPERATED_AREA:I

    if-ge v0, v1, :cond_a

    .line 220
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    or-int/2addr p0, v1

    .line 222
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    aget v1, v1, v0

    or-int/2addr p0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_5

    if-nez p1, :cond_5

    move p1, v0

    .line 226
    :goto_1
    sget v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPERATED_AREA:I

    if-ge v0, v1, :cond_4

    .line 227
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 228
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v1, v1, v0

    or-int/2addr p1, v1

    .line 229
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    aget v1, v1, v0

    or-int/2addr p1, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move p0, p1

    goto :goto_5

    :cond_5
    move v1, v0

    move v2, v1

    .line 233
    :goto_2
    sget v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPERATED_AREA:I

    if-ge v1, v3, :cond_9

    .line 234
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    .line 235
    sget-object v4, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v4, v4, v1

    invoke-virtual {p1, v4}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v4

    if-nez v3, :cond_6

    if-eqz v4, :cond_8

    .line 238
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v3, v3, v1

    or-int/2addr v2, v3

    .line 239
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    aget v3, v3, v1

    :goto_3
    or-int/2addr v2, v3

    goto :goto_4

    .line 242
    :cond_6
    invoke-virtual {v3, v4, v0}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 243
    sget-object v5, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[I

    aget v5, v5, v1

    or-int/2addr v2, v5

    :cond_7
    const/4 v5, 0x1

    .line 245
    invoke-virtual {v3, v4, v5}, Landroid/app/SemWallpaperColors$Item;->equals(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_8

    .line 246
    sget-object v3, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_SHADOW_FLAGS:[I

    aget v3, v3, v1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move p0, v2

    :cond_a
    :goto_5
    return p0
.end method

.method private getAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_6

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v0, :cond_5

    if-gtz v1, :cond_1

    goto :goto_3

    :cond_1
    int-to-float v2, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    int-to-float v2, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 428
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "getAdaptiveColors: bitmap has recycled"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4
    const/4 v2, 0x1

    .line 435
    :try_start_0
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 437
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating scaled bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p0

    .line 413
    :cond_5
    :goto_3
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "getAdaptiveColors: bitmap is too small"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-object p0
.end method

.method private getAdaptiveColors(Landroid/graphics/Bitmap;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 3

    if-eqz p1, :cond_2

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const/16 v2, 0x40

    .line 458
    invoke-virtual {p0, v2}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 460
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    const/16 p0, 0xa

    .line 466
    invoke-static {p1, p0, v0}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor;->getAdaptiveColorFromBitmap(Landroid/graphics/Bitmap;IZ)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    .line 450
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p1, "getAdaptiveColors: bitmap is null or recycled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getInfinityAdaptiveColorResultInternal()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mPresetInfinityAdaptiveColorResult:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 478
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v2, "getInfinityAdaptiveColorResultInternal mAdaptiveColorPreSet is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getPresetInfinityAdaptiveColorResult()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mPresetInfinityAdaptiveColorResult:Ljava/util/Map;

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, -0x2

    .line 483
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mPresetInfinityAdaptiveColorResult:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-object p0

    .line 491
    :cond_1
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "getInfinityAdaptiveColorResultInternal() Color info is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "getInfinityAdaptiveColorResultInternal() WallpaperManager is null."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPresetInfinityAdaptiveColorResult()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$array;->lockscreen_infinity_adaptive_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 503
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 505
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 506
    aget-object v2, p0, v1

    new-instance v9, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, p0, v3

    add-int/lit8 v3, v1, 0x2

    aget-object v5, p0, v3

    add-int/lit8 v3, v1, 0x3

    aget-object v6, p0, v3

    add-int/lit8 v3, v1, 0x4

    aget-object v7, p0, v3

    add-int/lit8 v3, v1, 0x5

    aget-object v8, p0, v3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    :cond_0
    return-object v0

    .line 511
    :catch_0
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "NumberFormatException!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private writeSettingsWallpaperColors(I)V
    .locals 3

    .line 259
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSettingsWallpaperColors() flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v0

    .line 266
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_3

    const/16 v0, 0x200

    .line 271
    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    .line 274
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    .line 279
    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    .line 282
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_4
    const/16 v0, 0x100

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 287
    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors;->get(I)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 289
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    .line 290
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public extractAdaptiveColor(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorExtractor:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorExtractor:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorExtractor:Landroid/os/AsyncTask;

    .line 316
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$1;-><init>(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorExtractor:Landroid/os/AsyncTask;

    .line 346
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorExtractor:Landroid/os/AsyncTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 307
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p1, "extractAdaptiveColor() bitmap is null or recycled!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public extractInfinityAdaptiveColor()V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getInfinityAdaptiveColorResultInternal()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v0

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setAdaptiveColorResult(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method

.method public getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-nez v0, :cond_0

    .line 351
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v0, "getAdaptiveColorResult() null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdaptiveColorResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-object p0
.end method

.method public getSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getSemWallpaperColors(I)Landroid/app/SemWallpaperColors;
    .locals 2

    .line 179
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result v0

    .line 181
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsSub:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColors;

    return-object p0

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColors;

    return-object p0

    .line 187
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public handlePowerSavingNEmergencyMode(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p1

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p1

    .line 206
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->writeSettingsWallpaperColors(I)V

    return p1
.end method

.method public setAdaptiveColorResult(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 3

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->writeSettingsAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 364
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p1, "setAdaptiveColorResult() mAdaptiveColorResult == null && result == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 370
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 375
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string v2, "setAdaptiveColorResult() AdaptiveColorResult is updated."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorResult:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 382
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorChangedListener:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;

    if-eqz p0, :cond_6

    .line 384
    invoke-interface {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;->onAdaptiveColorChanged(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    goto :goto_1

    .line 387
    :cond_5
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p1, "setAdaptiveColorResult() Adaptive color is updated but NOT in notifiction condition."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method

.method public setOnAdaptiveColorChangedListener(Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mAdaptiveColorChangedListener:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors$OnAdaptiveColorChangedListener;

    return-void
.end method

.method public setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)I
    .locals 1

    .line 103
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;II)I

    move-result p0

    return p0
.end method

.method public setSemWallpaperColors(Landroid/app/SemWallpaperColors;II)I
    .locals 3

    if-eqz p1, :cond_3

    .line 117
    sget-object v0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSemWallpaperColors() userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", colors = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    .line 120
    sget-boolean p2, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p2, :cond_1

    .line 121
    iget-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result p2

    .line 122
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsSub:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SemWallpaperColors;

    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColorsSub:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SemWallpaperColors;

    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/SemWallpaperColors;

    invoke-static {p2, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkUpdates(Landroid/app/SemWallpaperColors;Landroid/app/SemWallpaperColors;)I

    move-result p2

    .line 154
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->mSemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p2, "setSemWallpaperColors() Colors for home wallpaper updated. No nothing here."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_4

    .line 167
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->writeSettingsWallpaperColors(I)V

    :cond_4
    return p2
.end method

.method public writeSettingsAdaptiveColorValue(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 3

    if-nez p1, :cond_0

    .line 394
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    const-string p1, "writeSettingsAdaptiveColorValue null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_0
    sget-object p0, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeSettingsAdaptiveColorValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget p1, p1, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveColors([I)Z

    :goto_0
    return-void
.end method
