.class public Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;
.super Ljava/lang/Object;
.source "ImageSequenceStabilizer.java"


# instance fields
.field private mDefaultStableRectHeight:I

.field private mDefaultStableRectWidth:I

.field private mImageStabilizationPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "saiv_1_0"

    .line 197
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "saiv_imagesequencestabilizer"

    .line 201
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 207
    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectWidth:I

    .line 208
    iput v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mDefaultStableRectHeight:I

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return-void
.end method

.method private destroy()I
    .locals 3

    .line 69
    iget-wide v0, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->release(J)I

    move-result v0

    const-wide/16 v1, 0x0

    .line 70
    iput-wide v1, p0, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->mImageStabilizationPtr:J

    return v0
.end method

.method private native init()J
.end method

.method private native release(J)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/saiv/vision/ImageSequenceStabilizer;->destroy()I

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
