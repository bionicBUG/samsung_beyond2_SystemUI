.class public Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;
.super Ljava/lang/Object;
.source "IndicatorScaleGardener.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final RID_END_MARGIN_SIGNAL:I

.field private static final RID_ICON_RATIO:I

.field private static final RID_TEXT_SIZE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_icon_ratio:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_ICON_RATIO:I

    .line 46
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_text_size:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_TEXT_SIZE:I

    .line 47
    sget v0, Lcom/android/systemui/R$dimen;->indicator_garden_scale_signal_cluster_battery_end_margin:I

    sput v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_END_MARGIN_SIGNAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    .line 41
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldBeScaleLogicApplied(Landroid/content/Context;)Z
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmFactory;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object p0

    return-object p0
.end method

.method protected makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_ICON_RATIO:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_TEXT_SIZE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->RID_END_MARGIN_SIGNAL:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x1050408

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 56
    new-instance v3, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;-><init>(FIII)V

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->makeScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->mScaleModel:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    return-void
.end method
