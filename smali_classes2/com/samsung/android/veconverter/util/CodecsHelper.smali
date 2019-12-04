.class public Lcom/samsung/android/veconverter/util/CodecsHelper;
.super Ljava/lang/Object;
.source "CodecsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoEncodingBitRate(FJJIII)I
    .locals 0

    long-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    long-to-float p1, p3

    div-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p5, p5, 0x2

    sub-int/2addr p0, p5

    mul-int p1, p6, p7

    .line 403
    div-int/lit16 p1, p1, 0x100

    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    const/16 p1, 0x63

    goto :goto_0

    :cond_0
    const/16 p3, 0x3e8

    if-le p1, p2, :cond_1

    if-ge p1, p3, :cond_1

    const/16 p1, 0x96

    goto :goto_0

    :cond_1
    if-le p1, p3, :cond_2

    const/16 p1, 0x15e

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 412
    :goto_0
    invoke-static {p6, p7}, Lcom/samsung/android/veconverter/util/CodecsHelper;->suggestBitRate(II)I

    move-result p2

    if-ge p0, p1, :cond_3

    move p0, p1

    goto :goto_1

    :cond_3
    if-le p0, p2, :cond_4

    move p0, p2

    :cond_4
    :goto_1
    return p0
.end method

.method public static suggestBitRate(II)I
    .locals 0

    mul-int/2addr p0, p1

    const p1, 0x7e9000

    if-lt p0, p1, :cond_0

    const p0, 0x88b8

    return p0

    :cond_0
    const p1, 0x384000

    if-lt p0, p1, :cond_1

    const/16 p0, 0x4650

    return p0

    :cond_1
    const p1, 0x1fa400

    if-lt p0, p1, :cond_2

    const/16 p0, 0x32c8

    return p0

    :cond_2
    const p1, 0xe1000

    if-lt p0, p1, :cond_3

    const/16 p0, 0x1f40

    return p0

    :cond_3
    const/16 p0, 0x1388

    return p0
.end method
