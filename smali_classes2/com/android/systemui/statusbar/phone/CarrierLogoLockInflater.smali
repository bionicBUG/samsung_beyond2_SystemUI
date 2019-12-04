.class public Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;
.super Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.source "CarrierLogoLockInflater.java"


# instance fields
.field private mDensityDpi:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mResId:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;-><init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V

    const/4 p1, -0x1

    .line 127
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isORANGE()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_org:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isSINGTEL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_singtel:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isSKT()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_sktelcom:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isKTT()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_kt:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isLGT()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 61
    sget p1, Lcom/android/systemui/R$drawable;->stat_notify_operator_logo_lgu:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    :cond_4
    :goto_0
    return-void
.end method

.method private loadDimenValues()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->carrier_information_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mTopPadding:I

    return-void
.end method

.method private updateCarrierInformationVisibility()V
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateCarrierInformationVisibility(Z)V

    return-void
.end method

.method private updateColorFileter()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 178
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachCarrierInformationView()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDefaultFocusHighlightEnabled(Z)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->loadDimenValues()V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mTopPadding:I

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateColorFileter()V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 88
    :cond_1
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "CarrierLogoLockInflater"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    :cond_2
    return-void
.end method

.method protected detachCarrierInformationView()V
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getParentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    .line 105
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "CarrierLogoLockInflater"

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public getInfoTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CarrierLogoLockInflater"

    return-object p0
.end method

.method public synthetic lambda$onConfigurationChanged$1$CarrierLogoLockInflater()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onDetachedFromWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onAttachedToWindow()V

    return-void
.end method

.method public synthetic lambda$updateScaleCarrierInformationView$0$CarrierLogoLockInflater()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 117
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getScaleModel()Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->getRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public needToAttachView()Z
    .locals 1

    .line 167
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_CARRIER_LOGO:Ljava/lang/String;

    const-string v0, "LOCK"

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
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mDensityDpi:I

    .line 133
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierLogoLockInflater$Roa-JK1qhMDRINx9c_SFAb-dO6M;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierLogoLockInflater$Roa-JK1qhMDRINx9c_SFAb-dO6M;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 172
    const-class p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->getFontColorOfLockIndicator()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateColorFileter()V

    return-void
.end method

.method public updateCarrierInformationVisibility(Z)V
    .locals 3

    .line 147
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 149
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLockCarrierDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    xor-int/2addr p1, v0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->setVisibilityForObstacles(ZLandroid/view/View;)V

    :cond_2
    return-void
.end method

.method public updateCarrierPlmnText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;->updateCarrierInformationVisibility()V

    return-void
.end method

.method protected updateScaleCarrierInformationView()V
    .locals 2

    .line 112
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    .line 113
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->shouldBeScaleLogicApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierLogoLockInflater$JuLS9MxDbWsds_a_2nwspdmKWF0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$CarrierLogoLockInflater$JuLS9MxDbWsds_a_2nwspdmKWF0;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLogoLockInflater;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
