.class public Lcom/samsung/android/media/face/SemFaceGAERecognition;
.super Ljava/lang/Object;
.source "SemFaceGAERecognition.java"


# instance fields
.field private mGAEPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "HprFace_GAE_jni.camera.samsung"

    .line 213
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 45
    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    .line 46
    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceGAERecognition;->mGAEPointer:[J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    return-void
.end method
