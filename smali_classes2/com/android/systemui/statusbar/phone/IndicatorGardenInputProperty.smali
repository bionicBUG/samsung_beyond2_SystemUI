.class public Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;
.super Ljava/lang/Object;
.source "IndicatorGardenInputProperty.java"


# static fields
.field private static sDefaultCameraTopMarginSize:I


# instance fields
.field private DefaultCameraSidePaddingSize:I

.field private DefaultGardenSidePaddingSize:I

.field private DefaultNudgeOffsetForCenterCutout:I

.field private DefaultOffsetBetweenLeftAndRight:I

.field private DpCutout:Landroid/view/DisplayCutout;

.field private mCachedDensity:F

.field private mCachedDisplay:Landroid/view/Display;

.field private mCachedScreenWidthSize:I

.field private mContext:Landroid/content/Context;

.field private mCoverDefaultSidePadding:I

.field private mRotation:I

.field private mRotationHasBeenChangedFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/DisplayCutout;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    .line 97
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotationHasBeenChangedFlag:Z

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    return-void
.end method

.method public static getDefaultCameraTopMarginSize()I
    .locals 1

    .line 194
    sget v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->sDefaultCameraTopMarginSize:I

    return v0
.end method

.method private updateDimenResources()V
    .locals 2

    .line 158
    sget v0, Lcom/android/systemui/R$dimen;->notification_icon_view_width:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultOffsetBetweenLeftAndRight:I

    .line 159
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_center_cutout_nudge:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultNudgeOffsetForCenterCutout:I

    .line 160
    sget v0, Lcom/android/systemui/R$dimen;->status_bar_padding_start:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultGardenSidePaddingSize:I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v1, 0x10503ff

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result v1

    .line 162
    invoke-static {v0, v1}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultCameraSidePaddingSize:I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    const v1, 0x1050400

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDimenSize(I)I

    move-result p0

    .line 164
    invoke-static {v0, p0}, Lcom/android/systemui/util/DeviceState;->getDeviceResolutionPixelSize(Landroid/content/Context;I)I

    move-result p0

    sput p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->sDefaultCameraTopMarginSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultCameraSidePaddingSize:I

    .line 168
    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->sDefaultCameraTopMarginSize:I

    :goto_0
    return-void
.end method

.method private updateDisplay()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    return-void
.end method

.method private updateDisplayMetricsDensity()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    return-void
.end method

.method private updateGardenDefaultResources()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplayMetricsDensity()V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateScreenWidthSize()V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDimenResources()V

    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 105
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    if-eq v1, v0, :cond_0

    .line 106
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotationHasBeenChangedFlag:Z

    :cond_0
    return-void
.end method

.method private updateScreenWidthSize()V
    .locals 2

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    return-void
.end method


# virtual methods
.method public getCoverDefaultSidePadding()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    return p0
.end method

.method public getDefaultCameraSidePaddingSize()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultCameraSidePaddingSize:I

    return p0
.end method

.method public getDefaultGardenSidePaddingSize()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultGardenSidePaddingSize:I

    return p0
.end method

.method public getDefaultNudgeOffsetForCenterCutout()I
    .locals 0

    .line 179
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultNudgeOffsetForCenterCutout:I

    return p0
.end method

.method public getDefaultOffsetBetweenLeftAndRight()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultOffsetBetweenLeftAndRight:I

    return p0
.end method

.method public getDimenSize(I)I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayMetricsDensity()F
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplayMetricsDensity()V

    .line 61
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    return p0
.end method

.method public getDpCutout()Landroid/view/DisplayCutout;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public getDumpString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[IndicatorGardenInputProperty]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Rotation(0-0,90-1,180-2,270-3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ScreenWidthSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CoverSidePadding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DefaultOffsetBetweenLeftAndRight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultOffsetBetweenLeftAndRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DefaultNudgeOffsetForCenterCutout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultNudgeOffsetForCenterCutout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DefaultGardenSidePaddingSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultGardenSidePaddingSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DefaultCameraSidePaddingSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DefaultCameraSidePaddingSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sDefaultCameraTopMarginSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->sDefaultCameraTopMarginSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DpCutout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRotation()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateRotation()V

    .line 100
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotation:I

    return p0
.end method

.method public getScreenWidthSize()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateScreenWidthSize()V

    .line 85
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCachedScreenWidthSize:I

    return p0
.end method

.method public onChangedCoverDefaultSidePadding(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mCoverDefaultSidePadding:I

    return-void
.end method

.method public onGardenConfigurationChanged()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateRotation()V

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotationHasBeenChangedFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->mRotationHasBeenChangedFlag:Z

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    :cond_0
    return-void
.end method

.method public onGardenDensityOrFontScaleChanged()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    return-void
.end method

.method public setDpCutout(Landroid/view/DisplayCutout;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->DpCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public updateAllInputProperties()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateDisplay()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateRotation()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateGardenDefaultResources()V

    return-void
.end method
