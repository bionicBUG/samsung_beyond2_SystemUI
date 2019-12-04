.class public Lcom/samsung/android/veconverter/core/EncodeImages;
.super Lcom/samsung/android/veconverter/core/Encode;
.source "EncodeImages.java"


# static fields
.field private static mUseUri:Z = false


# instance fields
.field private agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

.field private bm:Landroid/graphics/Bitmap;

.field private mEncodedOutputDurationMs:J

.field private volatile mEncoding:Z

.field private mFramesToWrite:I

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

.field private mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

.field private mStopLock:Ljava/lang/Object;

.field private mTotalFrames:I

.field private videoFramesWritten:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/veconverter/core/Encode;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    const-wide/16 v1, -0x1

    .line 64
    iput-wide v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 66
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    .line 73
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mTotalFrames:I

    .line 78
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 3

    .line 546
    iget v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    div-int/2addr v0, v1

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoFramesWritten : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFramesToWrite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VEConverter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public initialize(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_8

    if-lez p3, :cond_7

    if-eqz p1, :cond_6

    if-eqz p5, :cond_5

    .line 100
    iput-object p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFilePath:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    .line 102
    iput p3, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    .line 104
    iput-object p5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    const/4 p1, 0x0

    .line 106
    sput-boolean p1, Lcom/samsung/android/veconverter/core/EncodeImages;->mUseUri:Z

    .line 108
    new-instance p1, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {p1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result p1

    .line 110
    iget-object p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {p2}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getNumOfFrame()I

    move-result p2

    .line 111
    iget-object p3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {p3}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getWidth()I

    move-result p3

    .line 112
    iget-object p5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {p5}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getHeight()I

    move-result p5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", num :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VEConverter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    .line 123
    :cond_0
    iget p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    .line 127
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 133
    iput p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    .line 135
    iget-wide v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    .line 136
    div-int/2addr p2, p4

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    .line 139
    :cond_2
    iget p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 140
    iget p1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    mul-int/lit16 p1, p1, 0x3e8

    iget-wide p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    long-to-int p2, p2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    .line 154
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEncodedOutputDurationMs :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", mFramesToWrite :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mOutputVideoFrameRate: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t get getNumOfFrame"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input file path cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output file path cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height cannot be equal to or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width cannot be equal to or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/EncodeImages;->prepareVideoCodecs()V

    .line 199
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "Orientation"

    .line 200
    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5a

    .line 202
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0xb4

    .line 205
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x10e

    .line 208
    iput v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    .line 212
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total frames to be written "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInputOrientationDegrees  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEConverter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected prepareVideoCodecs()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-wide v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mSizeFraction:F

    iget-wide v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncodedOutputDurationMs:J

    iget v5, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v5, v5, 0x3e8

    iget v6, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    iget v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/veconverter/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoBitRate:I

    goto :goto_0

    .line 227
    :cond_0
    iget v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1}, Lcom/samsung/android/veconverter/util/CodecsHelper;->suggestBitRate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoBitRate:I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const v1, 0x7f000789

    const-string v2, "color-format"

    .line 231
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 232
    iget v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoBitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 233
    iget v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 234
    iget v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoIFrameInterval:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    .line 237
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 239
    new-instance v0, Lcom/samsung/android/veconverter/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/veconverter/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->makeCurrent()V

    .line 242
    new-instance v0, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    .line 243
    iget-object p0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {p0}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->prepare()I

    return-void
.end method

.method protected release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "VEConverter"

    const-string v2, "releasing encoder objects"

    .line 425
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 428
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 430
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing output video encoder."

    .line 433
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->release()V

    .line 441
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing renderer."

    .line 444
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 450
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->release()V

    .line 451
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mLogoRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_6
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing logo renderer."

    .line 454
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    .line 462
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->release()V

    .line 463
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_8
    const-string v3, "VEConverter"

    const-string v4, "Exception in releasing input surface."

    .line 466
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 471
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_5

    .line 473
    :try_start_9
    iget-boolean v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    if-eqz v1, :cond_4

    .line 474
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 476
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v1

    :try_start_a
    const-string v2, "VEConverter"

    const-string v3, "Exception in releasing muxer."

    .line 480
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 485
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 487
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v1}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->finish()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 490
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 492
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    .line 493
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    .line 490
    iget-object v2, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 492
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    .line 493
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1

    :catchall_2
    move-exception p0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw p0
.end method

.method protected startEncoding()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    const-string v1, "VEConverter"

    if-eqz v0, :cond_0

    const-string p0, "Not starting encoding because it is stopped by user."

    .line 252
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 256
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 261
    iput v4, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    .line 264
    iget-object v5, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 265
    iget-object v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v6}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v6

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gif decode :  ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", delay :"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v6, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    iget v10, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    invoke-virtual {v6, v7, v9, v10}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    move-object v6, v3

    move-object v3, v0

    move v0, v4

    :cond_1
    if-nez v0, :cond_13

    .line 281
    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    const/4 v9, 0x1

    if-nez v7, :cond_e

    if-nez v0, :cond_e

    if-eqz v6, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    if-eqz v7, :cond_e

    .line 282
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v7, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_4

    const-string v7, "Video encoder output try again later "

    .line 285
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const/4 v10, -0x3

    const-string v11, "Video encoder output buffer changed"

    if-ne v7, v10, :cond_5

    .line 290
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    goto/16 :goto_2

    :cond_5
    const/4 v10, -0x2

    if-ne v7, v10, :cond_7

    .line 296
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v6, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    if-gez v6, :cond_6

    .line 303
    iget-object v6, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoEncoderOutputMediaFormat : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 301
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Video encoder output format changed after muxer has started"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-gez v7, :cond_8

    const-string v7, "Unexpected result from video encoder dequeue output format."

    .line 309
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 313
    :cond_8
    aget-object v10, v3, v7

    if-eqz v10, :cond_d

    .line 318
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_9

    const-string v11, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 320
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 324
    :cond_9
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v11, :cond_b

    .line 325
    iget-boolean v11, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    if-eqz v11, :cond_a

    .line 330
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 331
    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 333
    iget-object v11, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    iget v12, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    invoke-virtual {v11, v12, v10, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes to muxer  time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "muxer hasn\'t started. We cannot write video encoder output."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 338
    :cond_b
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v10, v7, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 340
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    .line 341
    iget v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-le v0, v7, :cond_c

    const-string v0, "video endcoder end of stream reached"

    .line 343
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const-string v0, "reached video encoder end of stream unexpectedly"

    .line 346
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v9

    goto :goto_2

    .line 315
    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video encoder OutputBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 361
    :cond_e
    :goto_2
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-nez v7, :cond_10

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-ge v7, v10, :cond_10

    if-eqz v6, :cond_f

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    if-eqz v7, :cond_10

    :cond_f
    const/16 v7, 0x4000

    .line 362
    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 363
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    invoke-virtual {v7}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->draw()V

    .line 365
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/veconverter/core/Encode;->computePresentationTimeNsec(I)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->setPresentationTime(J)V

    .line 373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sending frame "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to video encoder. time : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    invoke-virtual {p0, v10}, Lcom/samsung/android/veconverter/core/Encode;->computePresentationTimeNsec(I)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputSurface:Lcom/samsung/android/veconverter/surfaces/InputSurface;

    invoke-virtual {v7}, Lcom/samsung/android/veconverter/surfaces/InputSurface;->swapBuffers()Z

    .line 375
    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    add-int/2addr v7, v9

    iput v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    .line 377
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    iget-object v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v10}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->decodeFrame(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 378
    iget-object v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->agifdec:Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;

    invoke-virtual {v10}, Lcom/quramsoft/agifDecoder/QuramAGIFDecoder;->getDelay()I

    move-result v10

    .line 381
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mRenderer:Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;

    iget-object v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->bm:Landroid/graphics/Bitmap;

    iget v11, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputWidth:I

    iget v12, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputHeight:I

    invoke-virtual {v7, v10, v11, v12}, Lcom/samsung/android/veconverter/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    goto :goto_3

    .line 387
    :cond_10
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-nez v7, :cond_11

    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mFramesToWrite:I

    if-ne v7, v10, :cond_11

    const-string v7, "sending EOS to video encoder"

    .line 389
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 391
    iget v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    add-int/2addr v7, v9

    iput v7, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->videoFramesWritten:I

    .line 400
    :cond_11
    :goto_3
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-nez v7, :cond_12

    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    if-nez v7, :cond_12

    if-eqz v6, :cond_12

    .line 401
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    .line 402
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mInputOrientationDegrees:I

    invoke-virtual {v7, v10}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 403
    iget-object v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    .line 404
    iput-boolean v9, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    .line 407
    :cond_12
    iget-boolean v7, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-eqz v7, :cond_1

    const-string p0, "Encoding abruptly stopped."

    .line 409
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "VEConverter"

    const-string v1, "Stop method called"

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mEncoding:Z

    if-nez v1, :cond_0

    .line 507
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 509
    iput-boolean v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "VEConverter"

    const-string v2, "Calling wait on stop lock."

    .line 511
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object p0, p0, Lcom/samsung/android/veconverter/core/EncodeImages;->mStopLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "VEConverter"

    const-string v2, "Stop lock interrupted."

    .line 515
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 518
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
