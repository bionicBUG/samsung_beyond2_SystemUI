.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;
.super Ljava/lang/Object;
.source "SemAutoEnhanceNightShotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShotInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;
    }
.end annotation


# instance fields
.field public aperture:F

.field public brightness:F

.field public compressionLevel:F

.field public exposureTime:F

.field public flashLevel:I

.field public focalLength:F

.field public sensitivity_ISO:I

.field public time:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->exposureTime:F

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->time:Ljava/util/Date;

    .line 38
    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->compressionLevel:F

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->sensitivity_ISO:I

    .line 43
    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->aperture:F

    .line 45
    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->focalLength:F

    .line 47
    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->flashLevel:I

    .line 52
    iput v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;->brightness:F

    return-void
.end method
