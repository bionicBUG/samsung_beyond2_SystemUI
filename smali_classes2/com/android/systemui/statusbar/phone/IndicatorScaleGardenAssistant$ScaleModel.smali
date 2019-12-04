.class public Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
.super Ljava/lang/Object;
.source "IndicatorScaleGardenAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleModel"
.end annotation


# instance fields
.field final FontSize:I

.field final PaddingForSignalClusterBattery:I

.field final Ratio:F

.field final StatusIconSize:I


# direct methods
.method public constructor <init>(FIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->Ratio:F

    .line 39
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->FontSize:I

    .line 40
    iput p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->PaddingForSignalClusterBattery:I

    .line 41
    iput p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->StatusIconSize:I

    return-void
.end method


# virtual methods
.method public getFontSize()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->FontSize:I

    return p0
.end method

.method public getPaddingForSignalClusterBattery()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->PaddingForSignalClusterBattery:I

    return p0
.end method

.method public getRatio()F
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->Ratio:F

    return p0
.end method

.method public getStatusIconSize()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->StatusIconSize:I

    return p0
.end method
