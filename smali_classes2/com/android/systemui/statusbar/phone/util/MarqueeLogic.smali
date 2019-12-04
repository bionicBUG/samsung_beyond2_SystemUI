.class public Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;
.super Ljava/lang/Object;
.source "MarqueeLogic.java"


# instance fields
.field private mHorizontalMoved:I

.field private mHorizontalShift:I

.field mScaleFactor:F

.field private mVerticalMoved:I

.field private mVerticalShift:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalMoved:I

    .line 11
    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalMoved:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mScaleFactor:F

    return-void
.end method


# virtual methods
.method public getLeftShift(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    iget p1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    :goto_0
    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mScaleFactor:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public getSidePadding(II)I
    .locals 2

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3f96bb98c0000000L    # 0.022199999541044235

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getTopShift(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    iget p1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    :goto_0
    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mScaleFactor:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public update(F)V
    .locals 2

    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/16 v1, -0x10

    if-gt v0, v1, :cond_1

    .line 33
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalMoved:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalMoved:I

    .line 35
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    const/16 v1, -0xa

    if-gt v0, v1, :cond_3

    .line 36
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalMoved:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalMoved:I

    .line 38
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalMoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mHorizontalShift:I

    .line 39
    iget v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalMoved:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mVerticalShift:I

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/android/systemui/statusbar/phone/util/MarqueeLogic;->mScaleFactor:F

    return-void
.end method
