.class public Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;
.super Ljava/lang/Object;
.source "SecQSColoringPluginMediator.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$DummyPluginQSColoring;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsPluginConnected:Z

.field private mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

.field private mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->makePluginQSColoringCallback()Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

    .line 45
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginManager;

    const-class v1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0, p0, v1}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V

    .line 46
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qscoloring/-$$Lambda$SecQSColoringPluginMediator$tESezJUuq7K1g7iz06jrGLxH4a0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qscoloring/-$$Lambda$SecQSColoringPluginMediator$tESezJUuq7K1g7iz06jrGLxH4a0;-><init>(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->updateNotificationColorSettings()V

    return-void
.end method

.method private makePluginQSColoringCallback()Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;
    .locals 1

    .line 112
    new-instance v0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator$1;-><init>(Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;)V

    return-object v0
.end method

.method private updateNotificationColorSettings()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->isQSColoringTurnedOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->updateNotificationColorSettings(Z)V

    return-void
.end method

.method private updateNotificationColorSettings(Z)V
    .locals 1

    .line 106
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const-string v0, "quickstar_coloring_notification_switch"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getBlurAmount()F
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringBlurEffectAmount()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getColor(I)I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPanelBackgroundAlpha()I
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringBackgroundAlpha()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xff

    :goto_0
    return p0
.end method

.method public isPluginConnected()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mIsPluginConnected:Z

    return p0
.end method

.method public isQSColoringTurnedOn()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->isPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$SecQSColoringPluginMediator()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->updateNotificationColorSettings()V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V
    .locals 2

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginConnected() prevConnected?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mIsPluginConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", (plugin == null)?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    return-void

    .line 53
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mIsPluginConnected:Z

    .line 54
    iput-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    iget-object p2, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoringCallback:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->onPluginConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Exception QSColoring onPluginConnected() "

    .line 59
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->updateNotificationColorSettings()V

    .line 62
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->refreshAllFunctions()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;I)V
    .locals 3

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginDisconnected(reason:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") prevConnected?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mIsPluginConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[QuickStar]SecQSColoringPluginMediator"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mIsPluginConnected:Z

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v1, v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V

    .line 72
    iget-object v1, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->onPluginDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception QSColoring onPluginDisconnected() "

    .line 75
    invoke-static {p2, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->updateNotificationColorSettings(Z)V

    .line 78
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {p1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->refreshAllFunctions()V

    .line 79
    iput-object v0, p0, Lcom/android/systemui/qscoloring/SecQSColoringPluginMediator;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    return-void
.end method
