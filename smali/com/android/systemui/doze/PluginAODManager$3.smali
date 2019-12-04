.class Lcom/android/systemui/doze/PluginAODManager$3;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickNotification(Ljava/lang/String;)V
    .locals 4

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickNotification() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "statusbar"

    .line 209
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x1

    .line 210
    invoke-static {p1, v2, p0, v3}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-interface {v0, p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    goto :goto_0

    :cond_0
    const-string p0, "can\'t get STATUS_BAR_SERVICE"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public requestActiveNotifications()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/doze/DozeHost;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->requestActiveNotifications()V

    :cond_0
    return-void
.end method

.method public requestVisibleNotifications()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$400(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/doze/PluginAODManager;->access$400(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)I

    move-result p0

    invoke-interface {v1, v2, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$600(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/cover/PluginViewCover;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/cover/PluginViewCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/doze/PluginAODManager;->access$400(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)I

    move-result p0

    invoke-interface {v1, v2, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1}, Lcom/android/systemui/doze/PluginAODManager;->access$700(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/doze/PluginAODManager;->access$400(Lcom/android/systemui/doze/PluginAODManager;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$3;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$500(Lcom/android/systemui/doze/PluginAODManager;)I

    move-result p0

    invoke-interface {v1, v2, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateVisibleNotifications(Ljava/util/List;I)V

    .line 199
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
