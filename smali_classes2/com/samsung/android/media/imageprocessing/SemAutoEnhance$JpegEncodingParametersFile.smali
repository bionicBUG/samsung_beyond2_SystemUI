.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;
.super Ljava/lang/Object;
.source "SemAutoEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegEncodingParametersFile"
.end annotation


# instance fields
.field inputImagePath:Ljava/lang/String;

.field public volatile isEncodingSuccess:Z

.field public volatile isThreadComplete:Z

.field outputImagePath:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SemAutoEnhance"

    const-string v1, "APP - ImageEncode S"

    .line 2597
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2598
    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    .line 2599
    iget-object v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->inputImagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->outputImagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageEncodeFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Quram Encoder failed... Exiting app"

    .line 2600
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2601
    iput-boolean v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    :cond_0
    const-string v2, "APP - ImageEncode E"

    .line 2603
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    iget-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isEncodingSuccess:Z

    if-eqz v0, :cond_1

    .line 2607
    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegEncodingParametersFile;->isThreadComplete:Z

    :cond_1
    return-void
.end method
