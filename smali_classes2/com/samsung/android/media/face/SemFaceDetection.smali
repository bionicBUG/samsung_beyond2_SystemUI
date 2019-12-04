.class public Lcom/samsung/android/media/face/SemFaceDetection;
.super Ljava/lang/Object;
.source "SemFaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/face/SemFaceDetection$Settings;,
        Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemFaceDetection"


# instance fields
.field private mFdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 53
    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    .line 54
    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    return-void
.end method

.method private checkEngineBeforeRun()V
    .locals 4

    .line 260
    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 264
    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The function init() is not yet called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 261
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Improperly instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I
.end method

.method private static native detectionDestroySupportMultiInstance([J)I
.end method

.method private static native detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I
.end method

.method private static native detectionGetFacePoseSupportMultiInstance([JI)I
.end method

.method private static native detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;
.end method

.method private static isSecProductFeatureConfigured()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static printNotSupportedFeatureMessage()V
    .locals 2

    .line 64
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "Current device does NOT support this feature!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public init()I
    .locals 4

    .line 91
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    const/4 p0, -0x1

    return p0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 101
    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v1, "function release() is processed before the second function call for init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I

    move-result p0

    return p0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Improperly instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 6

    .line 147
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 157
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 158
    sget-object p0, Lcom/samsung/android/media/face/SemFaceDetection;->TAG:Ljava/lang/String;

    const-string v0, "The function init() is not yet called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionDestroySupportMultiInstance([J)I

    .line 164
    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    aput-wide v4, p0, v1

    return-void

    .line 154
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Improperly instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/face/SemFace;",
            ">;)I"
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->isSecProductFeatureConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Lcom/samsung/android/media/face/SemFaceDetection;->printNotSupportedFeatureMessage()V

    const/4 p0, -0x1

    return p0

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->checkEngineBeforeRun()V

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 247
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v0, p1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v1, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    invoke-static {v2, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v2

    .line 253
    new-instance v3, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1

    .line 243
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid dimension of image ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image data is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ArrayList<SemFace> is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
