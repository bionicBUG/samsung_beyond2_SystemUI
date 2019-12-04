.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
.super Ljava/lang/Object;
.source "IndicatorGardenAlgorithmBase.java"


# instance fields
.field private mDebugCalledCount:I

.field public mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mDebugCalledCount:I

    return-void
.end method


# virtual methods
.method protected abstract calculateCameraTopPadding()Z
.end method

.method protected calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result p1

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr p1, v0

    int-to-float p0, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method protected calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 84
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0

    .line 90
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 92
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultOffsetBetweenLeftAndRight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 97
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected abstract calculateLeftPadding()I
.end method

.method protected calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getScreenWidthSize()I

    move-result v0

    .line 106
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 110
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultOffsetBetweenLeftAndRight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 116
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected abstract calculateRightPadding()I
.end method

.method protected calculateTotalHeight()I
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    const v0, 0x1050403

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result p0

    return p0
.end method

.method public cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Landroid/view/Display;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->cornerCutoutMargins(Landroid/view/DisplayCutout;Landroid/view/Display;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultSidePaddingSize()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-nez v0, :cond_0

    const/16 p0, 0x18

    return p0

    .line 132
    :cond_0
    sget v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_DEVICE_CORNER_ROUND:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget v0, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplayMetricsDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDefaultGardenSidePaddingSize()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getCoverDefaultSidePadding()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    return-void
.end method

.method protected is0Rotation()Z
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getRotation()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized makeGardenModel(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;Lcom/android/systemui/statusbar/phone/IndicatorGarden;)Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->initResources(Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;)V

    .line 44
    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftPadding()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setPaddingLeft(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightPadding()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setPaddingRight(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCenterContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthCenterContainer(I)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthLeftContainer(I)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setMaxWidthRightContainer(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateTotalHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setTotalHeight(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateCameraTopPadding()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->setCameraTopMargin(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 41
    monitor-exit p0

    return-object p1
.end method
