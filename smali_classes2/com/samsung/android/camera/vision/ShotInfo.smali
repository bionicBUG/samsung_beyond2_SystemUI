.class public Lcom/samsung/android/camera/vision/ShotInfo;
.super Ljava/lang/Object;
.source "ShotInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/vision/ShotInfo$ShotParams;
    }
.end annotation


# instance fields
.field public Cx:I

.field public Cy:I

.field public aperture:F

.field public brightness:F

.field public cameraModel:Ljava/lang/String;

.field public compressionLevel:F

.field public digitalZoomRatio:F

.field public exposureTime:F

.field public flashLevel:I

.field public focalLength:F

.field public gamma:F

.field public sensitivity_ISO:I

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->exposureTime:F

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/samsung/android/camera/vision/ShotInfo;->time:Ljava/util/Date;

    .line 36
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->compressionLevel:F

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/samsung/android/camera/vision/ShotInfo;->sensitivity_ISO:I

    .line 41
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->aperture:F

    .line 43
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->focalLength:F

    .line 45
    iput v1, p0, Lcom/samsung/android/camera/vision/ShotInfo;->flashLevel:I

    .line 50
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->brightness:F

    const-string v0, "unknown"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->cameraModel:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->digitalZoomRatio:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    iput v0, p0, Lcom/samsung/android/camera/vision/ShotInfo;->gamma:F

    .line 59
    iput v1, p0, Lcom/samsung/android/camera/vision/ShotInfo;->Cx:I

    .line 60
    iput v1, p0, Lcom/samsung/android/camera/vision/ShotInfo;->Cy:I

    return-void
.end method
