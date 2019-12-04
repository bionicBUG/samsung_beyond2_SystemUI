.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.source "IndicatorGardenAlgorithmSideCutout.java"


# instance fields
.field protected mLeftFirst:I

.field protected mRightSecond:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mLeftFirst:I

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mRightSecond:I

    return-void
.end method


# virtual methods
.method protected calculateSidePaddingWithCutout(II)I
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultCameraSidePaddingSize()I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method

.method protected calculateSidePaddingWithoutCutout(II)I
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultCameraSidePaddingSize()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 46
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mLeftFirst:I

    .line 36
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSideCutout;->mRightSecond:I

    :cond_1
    return-void
.end method
