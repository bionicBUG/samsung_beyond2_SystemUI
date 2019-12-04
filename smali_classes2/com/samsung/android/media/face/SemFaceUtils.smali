.class public Lcom/samsung/android/media/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "SemFaceUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FacePreProcessing_jni.camera.samsung"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
