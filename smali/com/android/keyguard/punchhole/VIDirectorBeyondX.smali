.class public Lcom/android/keyguard/punchhole/VIDirectorBeyondX;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorBeyondX.java"


# instance fields
.field private mCameraLocPercent:Landroid/graphics/PointF;

.field private mFaceVISizePercent:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/VIDirector;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3f514e3c    # 0.8176f

    const v1, 0x3ce631f9    # 0.0281f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 30
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3e825aee    # 0.2546f

    const v1, 0x3d69e1b1    # 0.0571f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;->mFaceVISizePercent:Landroid/graphics/PointF;

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

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top"

    .line 59
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "face_unlocking_cutout_ic_whitebg_bx.json"

    goto :goto_0

    :cond_0
    const-string p0, "face_unlocking_cutout_ic_bx.json"

    :goto_0
    return-object p0
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorBeyondX;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object p0
.end method
