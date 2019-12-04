.class public Lcom/android/keyguard/punchhole/VIDirectorA8S;
.super Lcom/android/keyguard/punchhole/VIDirector;
.source "VIDirectorA8S.java"


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

    const v0, 0x3d9b7176    # 0.0759f

    const v1, 0x3d0f5c29    # 0.035f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA8S;->mCameraLocPercent:Landroid/graphics/PointF;

    .line 32
    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3e0c49ba    # 0.137f

    const v1, 0x3d816f00    # 0.0632f

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/android/keyguard/punchhole/VIDirectorA8S;->mFaceVISizePercent:Landroid/graphics/PointF;

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
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA8S;->mCameraLocPercent:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getFaceRecognitionVIFileName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top"

    .line 60
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "face_unlocking_cutout_ic_whitebg_a8s.json"

    goto :goto_0

    :cond_0
    const-string p0, "face_unlocking_cutout_ic_a8s.json"

    :goto_0
    return-object p0
.end method

.method protected getFaceRecognitionVISizeRatio()Landroid/graphics/PointF;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/punchhole/VIDirectorA8S;->mFaceVISizePercent:Landroid/graphics/PointF;

    return-object p0
.end method
