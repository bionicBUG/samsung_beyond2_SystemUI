.class Lcom/android/systemui/recents/OverviewProxyService$5$1;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/recents/PluginRecents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/OverviewProxyService$5;->onPluginConnected(Lcom/samsung/systemui/splugins/recents/PluginExRecents;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/OverviewProxyService$5;

.field final synthetic val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$5;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/recents/OverviewProxyService$5;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$5$1;->val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginRecents : setEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1014
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/recents/OverviewProxyService$5;

    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$1;->val$plugin:Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-static {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2700(Lcom/android/systemui/recents/OverviewProxyService;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    goto :goto_0

    .line 1016
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5$1;->this$1:Lcom/android/systemui/recents/OverviewProxyService$5;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$5;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2800(Lcom/android/systemui/recents/OverviewProxyService;)V

    :goto_0
    return-void
.end method
