.class public Lcom/samsung/android/media/face/SemFaceDetection$Settings;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableFrontalRollSearch:Z

.field private mEnableFrontalTiltDownSearch:Z

.field private mEnableProfileSearch:Z

.field private mMaxFaceSize:F

.field private mMinFaceSize:F

.field private mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    const/high16 v0, -0x40800000    # -1.0f

    .line 323
    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    .line 324
    iput v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    .line 326
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    .line 327
    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return-void
.end method
