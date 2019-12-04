.class public Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.super Ljava/lang/Object;
.source "SmartCropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/saiv/imageprocessing/SmartCropper$COLOR_FORMAT;,
        Lcom/samsung/android/saiv/imageprocessing/SmartCropper$INTERACTION_MODE;
    }
.end annotation


# instance fields
.field private mBDPtr:J

.field public memory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "smart_cropping.camera.samsung"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 645
    iput v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->memory:I

    const/16 v1, 0x3f

    .line 150
    invoke-static {v1, v0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    return-void
.end method

.method public static native findObjectRect(J[I)I
.end method

.method public static native init(II)J
.end method

.method private printVersionCode()V
    .locals 1

    const-string p0, "SCE_v2.0"

    const-string v0, "This is SCE v2.02"

    .line 252
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native release(J)V
.end method

.method public static native releaseOneImage(J)I
.end method

.method public static native setImageIntBuf(J[IIII)J
.end method


# virtual methods
.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 160
    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->release(J)V

    .line 161
    iput-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    .line 164
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public findObjectRect()Landroid/graphics/Rect;
    .locals 4

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 422
    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect(J[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 423
    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x1

    .line 424
    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    const/4 p0, 0x2

    .line 425
    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    const/4 p0, 0x3

    .line 426
    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public releaseImage()Z
    .locals 2

    .line 571
    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseOneImage(J)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setImage([IIII)Z
    .locals 6

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->printVersionCode()V

    .line 313
    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImageIntBuf(J[IIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
