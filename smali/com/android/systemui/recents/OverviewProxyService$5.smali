.class Lcom/android/systemui/recents/OverviewProxyService$5;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/OverviewProxyService;->registerPluginListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/recents/PluginExRecents;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 1003
    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$5;->onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V
    .locals 1

    .line 1006
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginConnected : plugin.version="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OverviewProxyService"

    .line 1006
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance p2, Lcom/android/systemui/recents/OverviewProxyService$5$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$5$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$5;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->onStart(Lcom/samsung/systemui/splugins/recents/PluginRecents;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 1003
    check-cast p1, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$5;->onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;I)V
    .locals 1

    .line 1024
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPluginDisconnected : plugin.version="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverviewProxyService"

    .line 1024
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2800(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method
