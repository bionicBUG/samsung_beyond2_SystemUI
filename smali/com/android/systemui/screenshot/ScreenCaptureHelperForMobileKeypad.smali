.class public Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;
.super Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.source "ScreenCaptureHelperForMobileKeypad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationWindowFlag()I
    .locals 0

    .line 18
    invoke-super {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowFlag()I

    move-result p0

    or-int/lit16 p0, p0, 0x400

    xor-int/lit16 p0, p0, 0x400

    return p0
.end method

.method protected getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 26
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    invoke-virtual {p1, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 3

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v1, v1

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
