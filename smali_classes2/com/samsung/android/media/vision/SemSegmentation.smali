.class public Lcom/samsung/android/media/vision/SemSegmentation;
.super Ljava/lang/Object;
.source "SemSegmentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vision/SemSegmentation$Result;,
        Lcom/samsung/android/media/vision/SemSegmentation$Mode;
    }
.end annotation


# static fields
.field private static volatile trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;


# instance fields
.field private blendArr:[B

.field private imheight:I

.field private imwidth:I

.field private volatile isReleased:Z

.field private maskArr:[B

.field private outputBuf:Ljava/nio/ByteBuffer;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InteractiveSegmentation.camera.samsung"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    return-void
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 346
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->release()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/media/vision/SemSegmentation;->nativeRelease()V

    .line 321
    sget-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 322
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->blendBitmap:Landroid/graphics/Bitmap;

    .line 323
    sget-object v1, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->maskBitmap:Landroid/graphics/Bitmap;

    .line 325
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation$Result;->segmentContour:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 327
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->size:I

    .line 328
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imheight:I

    .line 329
    iput v1, p0, Lcom/samsung/android/media/vision/SemSegmentation;->imwidth:I

    .line 330
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->maskArr:[B

    .line 331
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->blendArr:[B

    .line 332
    iput-object v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->outputBuf:Ljava/nio/ByteBuffer;

    .line 334
    sput-object v0, Lcom/samsung/android/media/vision/SemSegmentation;->trackingInstance:Lcom/samsung/android/media/vision/SemSegmentation;

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/samsung/android/media/vision/SemSegmentation;->isReleased:Z

    :cond_0
    return-void
.end method
