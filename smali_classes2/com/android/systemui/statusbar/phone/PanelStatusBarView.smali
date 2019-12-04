.class public Lcom/android/systemui/statusbar/phone/PanelStatusBarView;
.super Landroid/widget/LinearLayout;
.source "PanelStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# static fields
.field private static TAG:Ljava/lang/String; = "[IndicatorGarden]PanelStatusBarView"


# instance fields
.field private mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelStatusBarView$1;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelStatusBarView;->TAG:Ljava/lang/String;

    invoke-direct {p1, p0, p2, p0, v0}, Lcom/android/systemui/statusbar/phone/PanelStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelStatusBarView;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelStatusBarView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEssentialLeftWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEssentialRightWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 92
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 64
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 53
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->initIndicatorGarden(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenConfigurationChanged(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method

.method public updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelStatusBarView;->mGardener:Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V

    return-void
.end method
