.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBasicCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
.source "IndicatorGardenAlgorithmBasicCutout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateCameraTopPadding()Z
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result p0

    return p0
.end method

.method protected calculateTotalHeight()I
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->calculateTotalHeight()I

    move-result v0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->is0Rotation()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->mProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDpCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    sub-int/2addr v1, p0

    if-lez v1, :cond_1

    return v1

    :cond_1
    return v0
.end method
