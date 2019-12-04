.class public Lcom/samsung/systemui/splugins/SPluginInitializerImpl;
.super Ljava/lang/Object;
.source "SPluginInitializerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginInitializer;


# static fields
.field private static final WTFS_SHOULD_CRASH:Z = false


# instance fields
.field private mWtfsSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgLooper()Landroid/os/Looper;
    .locals 0

    .line 35
    sget-object p0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method

.method public getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;
    .locals 0

    .line 52
    new-instance p0, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginEnablerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$array;->config_pluginWhitelist:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    return-void
.end method

.method public onPluginManagerInit()V
    .locals 1

    .line 42
    const-class p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    return-void
.end method
