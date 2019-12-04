.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;
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
    name = "JpegDecodingParameters"
.end annotation


# instance fields
.field height:I

.field imagePath:Ljava/lang/String;

.field inputBuffer:[B

.field public volatile isDecodingSuccess:Z

.field public volatile isThreadComplete:Z

.field width:I


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "SemAutoEnhance"

    const-string v1, "APP - ImageDecode S"

    .line 2559
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 2561
    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    .line 2563
    iget-object v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->imagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->inputBuffer:[B

    iget v4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->width:I

    iget v5, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->height:I

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->ImageDecode(Ljava/lang/String;[BII)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Quram Decoder failed... Exiting app"

    .line 2565
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2566
    iput-boolean v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    :cond_0
    const-string v2, "APP - ImageDecode E"

    .line 2569
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isDecodingSuccess:Z

    if-eqz v0, :cond_1

    .line 2573
    iput-boolean v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$JpegDecodingParameters;->isThreadComplete:Z

    :cond_1
    return-void
.end method
