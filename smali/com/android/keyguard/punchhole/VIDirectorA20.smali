.class public Lcom/android/keyguard/punchhole/VIDirectorA20;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorA20.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3cc8b439    # 0.0245f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA20;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 32
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3d6c56d6    # 0.0577f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA20;->mFaceVISizePercent:Landroid/graphics/PointF;

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

    .line 40
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA20;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top"

    .line 60
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

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA20;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object p0
.end method
