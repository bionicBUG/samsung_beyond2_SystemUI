.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.source "IndicatorGardenAlgorithmCenterCutout.java"


# instance fields
.field private mCutoutLeft:I

.field private mCutoutRight:I

.field private mNudgeOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mNudgeOffset:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 86
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method protected calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 58
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 60
    :cond_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    .line 63
    :cond_1
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected calculateLeftPadding()I
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method

.method protected calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mNudgeOffset:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 72
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1

    .line 74
    :cond_0
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    return p1

    .line 77
    :cond_1
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method protected calculateRightPadding()I
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayMetricsDensity()F

    move-result p1

    const/high16 v0, 0x40900000    # 4.5f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultNudgeOffsetForCenterCutout()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mNudgeOffset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mNudgeOffset:I

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutLeft:I

    .line 38
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->mCutoutRight:I

    :cond_1
    return-void
.end method
