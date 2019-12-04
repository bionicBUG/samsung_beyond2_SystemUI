.class public Lcom/samsung/android/media/vision/SemMatting;
.super Ljava/lang/Object;
.source "SemMatting.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InteractiveSegmentation.camera.samsung"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
