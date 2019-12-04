.class public abstract Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;
.super Ljava/lang/Object;
.source "CarrierInformationInflater.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;
.implements Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;
    }
.end annotation


# instance fields
.field protected mIconTint:I

.field protected mOriginalVisible:Z

.field mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mOriginalVisible:Z

    const v0, -0x42000001    # -0.12499999f

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mIconTint:I

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    return-void
.end method


# virtual methods
.method protected abstract attachCarrierInformationView()V
.end method

.method protected abstract detachCarrierInformationView()V
.end method

.method public abstract getInfoTag()Ljava/lang/String;
.end method

.method protected getNeedToBeGoneContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getNeedToBeGoneContainer()Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getPixelSize(I)I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInMainThread()Z
    .locals 1

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isInWhiteList(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isKTT()Z
    .locals 1

    .line 106
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "KTT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isLGT()Z
    .locals 1

    .line 109
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "LGT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isORANGE()Z
    .locals 1

    .line 97
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "ORANGE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isSINGTEL()Z
    .locals 1

    .line 100
    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "SIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected isSKT()Z
    .locals 1

    .line 103
    sget-boolean p0, Lcom/android/systemui/Rune;->STATBAR_CHUNO_LOGO_TEST:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    const-string v0, "SKT"

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

.method public abstract needToAttachView()Z
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->attachCarrierInformationView()V

    .line 53
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCarrierInformationNetworkHelper()Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->registerInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->requestUpdateCarrierInformationToNetwork()V

    .line 55
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->updateScaleCarrierInformationView()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->needToAttachView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->detachCarrierInformationView()V

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCarrierInformationNetworkHelper()Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/CarrierInformationNetworkHelper;->removeInflaterCallback(Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;)V

    .line 64
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method protected setVisibilityForObstacles(ZLandroid/view/View;)V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->getNeedToBeGoneContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 121
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 122
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->mParent:Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;

    .line 124
    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater$CarrierInformationParent;->getCarrierInformationContainer()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierInformationInflater;->isInWhiteList(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 126
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract updateCarrierInformationVisibility(Z)V
.end method

.method public abstract updateCarrierPlmnText(Ljava/lang/String;)V
.end method

.method protected abstract updateScaleCarrierInformationView()V
.end method
