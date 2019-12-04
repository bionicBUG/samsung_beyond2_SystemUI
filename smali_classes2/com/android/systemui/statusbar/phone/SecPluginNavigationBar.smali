.class public Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;
.super Ljava/lang/Object;
.source "SecPluginNavigationBar.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;


# instance fields
.field mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

.field mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

.field mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;Lcom/android/systemui/statusbar/phone/ButtonDispatcherProxy;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;

    .line 20
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    return-void
.end method


# virtual methods
.method public getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mButtonDispatcherProxy:Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;

    return-object p0
.end method

.method public getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDefaultColorProvider()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDefaultLayoutProviderContainer()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0
.end method

.method public getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mRuneWrapper:Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;

    return-object p0
.end method

.method public setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;)V

    if-eqz p2, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor()V

    :cond_0
    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIconsAndHints()V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconThemeAlpha(F)V

    return-void
.end method

.method public setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPluginNavigationBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V

    return-void
.end method
