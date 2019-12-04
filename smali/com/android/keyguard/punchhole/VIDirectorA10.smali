.class public Lcom/android/keyguard/punchhole/VIDirectorA10;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorA10.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3cac0831    # 0.021f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA10;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 33
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3e841893    # 0.258f

    const v1, 0x3d4ccccd    # 0.05f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA10;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getCameraAffordanceVIFileName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCameraAffordanceVISizeRatio()Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCameraLocationRatio()Landroid/graphics/PointF;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA10;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top"

    .line 61
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "vcut_punch_cut_invert.json"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "vcut_punch_cut.json"

    :goto_0
    return-object p0
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA10;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object p0
.end method
