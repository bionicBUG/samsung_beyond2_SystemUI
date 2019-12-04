.class public Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;
.super Ljava/lang/Object;
.source "NavBarInteractorManager.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mListener:Lcom/samsung/systemui/splugins/SPluginListener;

.field mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

.field mPlugin:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager$1;-><init>(Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->start()V

    return-void
.end method

.method private start()V
    .locals 3

    .line 43
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    .line 47
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavBarInteractorManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    return-void
.end method
