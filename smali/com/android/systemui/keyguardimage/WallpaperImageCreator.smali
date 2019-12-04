.class public Lcom/android/systemui/keyguardimage/WallpaperImageCreator;
.super Ljava/lang/Object;
.source "WallpaperImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 p0, 0x2

    .line 17
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p2, "WallpaperImageCreator"

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-static {p0, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "crop bitmap failed"

    .line 25
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const-string p0, "There is no cached wallpaper."

    .line 29
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
