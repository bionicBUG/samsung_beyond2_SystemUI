.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;
.source "IndicatorGardenAlgorithmNoCutout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateCameraTopPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected calculateLeftPadding()I
    .locals 0

    .line 26
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method

.method protected calculateRightPadding()I
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmBase;->getDefaultSidePaddingSize()I

    move-result p0

    return p0
.end method
