.class public Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierLogoHomeInflater.java"


# instance fields
.field private mEndPadding:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mResId:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isORANGE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_org:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isSINGTEL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_singtel:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isSKT()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_skt:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isKTT()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_kt:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isLGT()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_lgu:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    :cond_4
    :goto_0
    return-void
.end method

.method private loadDimenValues()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->carrier_information_margin_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->carrier_information_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    return-void
.end method

.method private updateCarrierInformationVisibility()V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method private updateColorFileter()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 174
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDefaultFocusHighlightEnabled(Z)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->loadDimenValues()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateColorFileter()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 93
    :cond_1
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "CarrierLogoHomeInflater"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    .line 105
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierLogoHomeInflater"

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierLogoHomeInflater"

    return-object p0
.end method

.method public needToAttachView()Z
    .locals 1

    .line 159
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_LOGO:Ljava/lang/String;

    const-string v0, "HOME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_LOGO:Ljava/lang/String;

    const-string v0, "BOTH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->loadDimenValues()V

    .line 113
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mTopPadding:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mEndPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 164
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 165
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    goto :goto_0

    .line 167
    :cond_0
    iput p3, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateColorFileter()V

    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 1

    .line 138
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 141
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHomeCarrierDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 142
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isNetworkInformationHidden()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 143
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->updateCarrierInformationVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 3

    .line 120
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 121
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 123
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoHomeInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method
