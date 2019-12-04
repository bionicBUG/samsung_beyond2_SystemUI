.class public Lcom/samsung/android/camera/vision/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;
    }
.end annotation


# instance fields
.field private mBuffer:[B

.field private mImagePtr:J

.field private mIntBuffer:[I


# direct methods
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

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/camera/vision/Image;->release()V

    .line 221
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mBuffer:[B

    if-eqz v0, :cond_0

    .line 196
    iget-wide v1, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/camera/vision/Image;->release(J[B)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camera/vision/Image;->mIntBuffer:[I

    if-eqz v0, :cond_1

    .line 198
    iget-wide v1, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/camera/vision/Image;->releaseInt(J[I)V

    :cond_1
    const-wide/16 v0, 0x0

    .line 200
    iput-wide v0, p0, Lcom/samsung/android/camera/vision/Image;->mImagePtr:J

    return-void
.end method
