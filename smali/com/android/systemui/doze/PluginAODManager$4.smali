.class Lcom/android/systemui/doze/PluginAODManager$4;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;


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

    .line 226
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v0}, Lcom/android/systemui/doze/PluginAODManager;->shouldShowAODNotifications()Z

    move-result v0

    .line 240
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnAOD()Z

    move-result v1

    .line 241
    sget-boolean v2, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v2}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->isMusicFaceWidgetOn()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 245
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v3

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    if-nez v6, :cond_2

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 254
    sget-boolean v8, Lcom/android/systemui/Rune;->AOD_SUPPORT_FACE_WIDGET:Z

    if-eqz v8, :cond_3

    .line 255
    iget-object v8, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v8}, Lcom/android/systemui/doze/PluginAODManager;->access$900(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    move-result-object v8

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->isFaceWidgetMusicNotification(Ljava/lang/String;)Z

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v3

    :goto_2
    const/4 v9, 0x1

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    if-eqz v8, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move v8, v9

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    if-eqz v8, :cond_6

    const/4 v10, 0x2

    goto :goto_4

    :cond_6
    move v10, v0

    :goto_4
    if-eqz v8, :cond_7

    .line 264
    iget-object v8, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v8}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v9

    goto :goto_5

    :cond_7
    move v8, v3

    :goto_5
    if-eqz v8, :cond_8

    const/4 v10, 0x3

    :cond_8
    if-eqz v8, :cond_9

    .line 266
    iget-object v8, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    .line 267
    invoke-static {v8}, Lcom/android/systemui/doze/PluginAODManager;->access$800(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_9

    goto :goto_6

    :cond_9
    move v9, v3

    :goto_6
    const/4 v6, 0x4

    if-eqz v9, :cond_a

    move v10, v6

    :cond_a
    if-eqz v0, :cond_b

    if-nez v9, :cond_b

    .line 271
    const-class v8, Lcom/android/systemui/util/DebugLogStore;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/DebugLogStore;

    if-eqz v8, :cond_b

    .line 273
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onNotificationInfoUpdated$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PluginAODManager"

    invoke-virtual {v8, v11, v10}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v9, :cond_1

    if-ge v5, v6, :cond_c

    .line 279
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 285
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$4;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/doze/PluginAODManager;->updateVisibleNotifications(Ljava/util/List;I)V

    return-void
.end method

.method public onNotificationTypeChanged(I)V
    .locals 0

    return-void
.end method
