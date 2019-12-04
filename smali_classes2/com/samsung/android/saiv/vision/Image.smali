.class public Lcom/samsung/android/saiv/vision/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/vision/Image$ImageBufferFormat;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mImagePtr:J

.field private mIntBuffer:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "saiv_noisefilter"

    .line 226
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "saiv_nightshot"

    .line 232
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "saiv_imagesequencestabilizer"

    .line 236
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private native release(J[B)V
.end method

.method private native releaseInt(J[I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/saiv/vision/Image;->release()V

    .line 219
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mBuffer:[B

    if-eqz v0, :cond_0

    .line 194
    iget-wide v1, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/saiv/vision/Image;->release(J[B)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/saiv/vision/Image;->mIntBuffer:[I

    if-eqz v0, :cond_1

    .line 196
    iget-wide v1, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/saiv/vision/Image;->releaseInt(J[I)V

    :cond_1
    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p0, Lcom/samsung/android/saiv/vision/Image;->mImagePtr:J

    return-void
.end method
