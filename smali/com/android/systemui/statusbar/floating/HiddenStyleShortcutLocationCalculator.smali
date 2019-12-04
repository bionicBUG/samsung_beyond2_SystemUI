.class public Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;
.super Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;
.source "HiddenStyleShortcutLocationCalculator.java"


# instance fields
.field private mIconBottomMargin:I

.field private mIconBottomMarginLand:I

.field private mIconSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getIconBottomMargin()I
    .locals 2

    .line 88
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_1

    .line 89
    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 90
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    return p0

    .line 92
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    return p0
.end method

.method public getScreenRotation()I
    .locals 1

    .line 79
    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result p0

    return p0
.end method

.method public getShortcutLocation(IIII)Landroid/graphics/Point;
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->getScreenRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/Point;

    sub-int/2addr v1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    iget p0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    mul-int/2addr v1, p0

    add-int/2addr p3, v1

    sub-int/2addr p4, p0

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget p0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    add-int/2addr p3, p0

    sub-int/2addr v1, p2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    mul-int/2addr v1, p0

    add-int/2addr p4, v1

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget p0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    sub-int/2addr p3, p0

    sub-int/2addr p2, v1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    mul-int/2addr p2, p0

    add-int/2addr p4, p2

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public loadDimens()V
    .locals 4

    .line 42
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    .line 44
    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-super {p0}, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->getScreenRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 45
    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_1
    if-eqz v2, :cond_3

    .line 46
    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_3
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 47
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->floating_shortcut_icon_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconSpace:I

    .line 49
    sget-boolean v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v2, :cond_4

    .line 50
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition()V

    .line 51
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 52
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    goto :goto_3

    .line 54
    :cond_4
    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_5

    int-to-float v0, v0

    const v2, 0x3d99999a    # 0.075f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 55
    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    int-to-float v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    goto :goto_3

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->floating_shortcut_icon_margin_when_indisplay_not_supported:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMargin:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/floating/ShortcutLocationCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->floating_shortcut_icon_margin_when_indisplay_not_supported_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/floating/HiddenStyleShortcutLocationCalculator;->mIconBottomMarginLand:I

    :goto_3
    return-void
.end method
