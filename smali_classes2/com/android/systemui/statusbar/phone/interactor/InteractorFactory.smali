.class public Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;
.super Ljava/lang/Object;
.source "InteractorFactory.java"


# instance fields
.field private mProvider:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/NavigationModeInterator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/NavigationModeInterator;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/interactor/NavigationModeInterator;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/interactor/MirrorLinkInteractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/interactor/BarStateInteractor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/interactor/ButtonOrderInteractor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/interactor/OpenThemeInteractor;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/interactor/KnoxStateMonitorInteractor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    new-instance v2, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/interactor/ColorSettingImpl;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/UseThemeDefaultInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureHintInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/GestureTypeInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/GestureTypeInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/GestureTypeInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/NavigationCanMoveInterator;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/PayHandlerInterator;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/HideKeyboardButtonInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/HideKeyboardButtonInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/HideKeyboardButtonInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureOnKeyboardInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/BackGestureOnKeyboardInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/BackGestureOnKeyboardInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/BackGestureSensitivityInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/BackGesturePolicyInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class v0, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsEnableInteractor;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    const-class p1, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/interactor/FloatingGameToolsSupportInteractor;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/interactor/InteractorFactory;->mProvider:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
