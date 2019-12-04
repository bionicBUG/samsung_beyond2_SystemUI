.class public abstract Lcom/samsung/android/veconverter/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/veconverter/core/Encode$ContentType;,
        Lcom/samsung/android/veconverter/core/Encode$BitRate;,
        Lcom/samsung/android/veconverter/core/Encode$CodecType;,
        Lcom/samsung/android/veconverter/core/Encode$CodecsMime;,
        Lcom/samsung/android/veconverter/core/Encode$EncodeResolution;,
        Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;
    }
.end annotation


# instance fields
.field protected mAudioTrackIndex:I

.field protected mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoProfile:I

.field protected mOutputWidth:I

.field protected mSizeFraction:F

.field protected mSourceFrameRate:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFormat:I

    const-string v1, "video/avc"

    .line 44
    iput-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const/16 v1, 0xf

    .line 46
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoIFrameInterval:I

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoProfile:I

    const-string v2, "audio/mp4a-latm"

    .line 52
    iput-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    const/4 v2, 0x2

    .line 54
    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioChannelCount:I

    const v3, 0x1f400

    .line 55
    iput v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioBitRate:I

    .line 56
    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioAACProfile:I

    const v2, 0xac44

    .line 57
    iput v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputAudioSampleRateHZ:I

    .line 70
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    .line 71
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mAudioTrackIndex:I

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    const v1, 0x3f4ccccd    # 0.8f

    .line 76
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mSizeFraction:F

    const-wide/16 v1, -0x1

    .line 77
    iput-wide v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputMaxSizeKB:J

    .line 81
    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOriginalAudioChannelCount:I

    const/16 v0, 0x1e

    .line 82
    iput v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mSourceFrameRate:I

    return-void
.end method

.method private printVersionInfo()V
    .locals 1

    const-string p0, "VEConverter"

    const-string v0, "Transcode Framework v.1.1"

    .line 282
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected computePresentationTimeNsec(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    .line 147
    iget p0, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputVideoFrameRate:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public encode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VEConverter"

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/veconverter/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string v1, "starting encoder prepartion"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->prepare()V

    .line 103
    new-instance v1, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFormat:I

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mMuxerStarted:Z

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mVideoTrackIndex:I

    .line 106
    iput v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mAudioTrackIndex:I

    const-string v1, "starting to encode"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    invoke-interface {v1}, Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;->onStarted()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->startEncoding()V

    const-string v1, "encoding finished."

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->release()V

    .line 121
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/veconverter/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated output file size after muxer close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    if-eqz v1, :cond_2

    .line 126
    iget-boolean v1, p0, Lcom/samsung/android/veconverter/core/Encode;->mUserStop:Z

    if-nez v1, :cond_1

    const-string v1, "calling onCompleted"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    invoke-interface {v0}, Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_0

    :cond_1
    const-string v1, "user stopped. Not calling onCompleted"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/veconverter/core/Encode;->release()V

    throw v0
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/veconverter/core/Encode;->mEncodeEventListener:Lcom/samsung/android/veconverter/core/Encode$EncodeEventListener;

    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
