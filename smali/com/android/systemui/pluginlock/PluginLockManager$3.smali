.class Lcom/android/systemui/pluginlock/PluginLockManager$3;
.super Ljava/lang/Object;
.source "PluginLockManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pluginlock/PluginLockManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    .line 626
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEvent() event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f2de4df

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "action_data_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 632
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1900(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 633
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1900(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;->onDataCleared()V

    :cond_3
    :goto_2
    return-void
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 13

    .line 499
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 500
    new-instance v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;-><init>()V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    .line 503
    const-class v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 505
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardClockPositionResult()[I

    move-result-object v4

    .line 506
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->setServiceBoxTop(Ljava/lang/Integer;)V

    .line 507
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    const/4 v7, 0x1

    aget v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->setServiceBoxBottom(Ljava/lang/Integer;)V

    .line 508
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lockscreen_minimizing_notification"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 509
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->setNotiType(Ljava/lang/Integer;)V

    .line 510
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 511
    invoke-static {v9}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_show_notifications"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 510
    invoke-virtual {v8, v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->setVisibility(Ljava/lang/Integer;)V

    if-ne v5, v7, :cond_0

    .line 513
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v5

    const/4 v8, 0x2

    aget v9, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->setNotiCardTop(Ljava/lang/Integer;)V

    .line 514
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v5

    aget v4, v4, v8

    .line 515
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->getNotificationIconsOnlyContainerHeight()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 514
    invoke-virtual {v5, v3}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->setNotiCardBottom(Ljava/lang/Integer;)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v3

    const/4 v5, 0x3

    aget v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->setNotiCardTop(Ljava/lang/Integer;)V

    .line 518
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;

    move-result-object v3

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationCardData;->setNotiCardNumbers(Ljava/lang/Integer;)V

    :goto_0
    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_7

    .line 521
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 522
    instance-of v5, v4, Lcom/android/systemui/facewidget/FaceWidgetContainer;

    if-eqz v5, :cond_2

    .line 523
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 524
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v8}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1500(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->getServiceBoxVisibility()I

    move-result v8

    goto :goto_2

    :cond_1
    move v8, v6

    .line 523
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->setVisibility(Ljava/lang/Integer;)V

    .line 525
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v5

    move-object v8, v4

    check-cast v8, Lcom/android/systemui/facewidget/FaceWidgetContainer;

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getCurrentClockType()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->setClockType(I)V

    .line 526
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/systemui/facewidget/FaceWidgetContainer;->getClockGravity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->setGravity(Ljava/lang/Integer;)V

    .line 527
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->setPaddingStart(Ljava/lang/Integer;)V

    .line 528
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->setPaddingEnd(Ljava/lang/Integer;)V

    .line 529
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v8}, Lcom/android/systemui/pluginlock/PluginLockManager;->getClockScale()F

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ServiceBoxData$ClockInfo;->setScale(F)V

    .line 531
    :cond_2
    instance-of v5, v4, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v5, :cond_3

    .line 532
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v5

    move-object v8, v4

    check-cast v8, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->setGravity(Ljava/lang/Integer;)V

    .line 533
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->setPaddingStart(Ljava/lang/Integer;)V

    .line 534
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->setPaddingEnd(Ljava/lang/Integer;)V

    .line 535
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/pluginlock/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->setPaddingTop(Ljava/lang/Integer;)V

    .line 538
    :cond_3
    instance-of v5, v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    if-eqz v5, :cond_6

    .line 539
    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    move v8, v6

    :goto_3
    if-ge v8, v5, :cond_6

    .line 541
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 542
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    sget v11, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    if-ne v10, v11, :cond_5

    .line 543
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v10

    float-to-int v10, v10

    .line 544
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 545
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->setTop(Ljava/lang/Integer;)V

    .line 546
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->setBottom(Ljava/lang/Integer;)V

    .line 547
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v10}, Lcom/android/systemui/pluginlock/PluginLockManager;->isLockStarEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 548
    iget-object v10, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v10}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1200(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->getHelpTextVisibility()I

    move-result v10

    goto :goto_4

    :cond_4
    move v10, v6

    .line 547
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/pluginlock/model/DynamicLockData$IndicationData$HelpTextData;->setHelpTextVisibility(Ljava/lang/Integer;)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 556
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFingerPrintData()Landroid/os/Bundle;

    move-result-object v2

    .line 557
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    move-result-object v3

    const-string v4, "finger_print_height"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->setHeight(Ljava/lang/Integer;)V

    .line 558
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    move-result-object v3

    const-string v4, "finger_print_image_size"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->setImageSize(Ljava/lang/Integer;)V

    .line 559
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    move-result-object v3

    const-string v4, "finger_print_margin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->setBottom(Ljava/lang/Integer;)V

    .line 560
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;

    move-result-object v3

    const-string v4, "finger_print_enabled"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$FingerPrintData;->setEnabled(Ljava/lang/Boolean;)V

    .line 563
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getShortcutData()Landroid/os/Bundle;

    move-result-object v2

    .line 564
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string/jumbo v4, "shortcut_enable"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setShortcutVisibility(Ljava/lang/Integer;)V

    .line 565
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string/jumbo v4, "shortcut_size"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setImageSize(Ljava/lang/Integer;)V

    .line 566
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string v4, "bottom_margin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setBottom(Ljava/lang/Integer;)V

    .line 567
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string/jumbo v4, "start_margin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setSideMargin(Ljava/lang/Integer;)V

    .line 568
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string v4, "isFloatingShortcut"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setFloatingShortcutEnable(Ljava/lang/Boolean;)V

    .line 569
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v3

    const-string/jumbo v4, "shortcut_info"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setShortcutInfo(Ljava/lang/String;)V

    .line 571
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFloatingShortcutPosition()[I

    move-result-object p0

    .line 572
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v2

    aget v3, p0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setFloatingShortcutX(Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;

    move-result-object v2

    aget p0, p0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData$ShortcutData;->setFloatingShortcutY(Ljava/lang/Integer;)V

    .line 575
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public goToLockedShade()V
    .locals 1

    .line 369
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToLockedShade(Landroid/view/View;)V

    return-void
.end method

.method public isSecure()Z
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p0

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisibleWrapper()V

    return-void
.end method

.method public onLaunchTransitionFadingEnded()V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLaunchTransitionFadingEndedWrapper()V

    return-void
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 3

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDismissKeyguard() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 651
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 659
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 662
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v0, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 663
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->startActivity(Landroid/app/PendingIntent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setBiometricRecognition(Z)V
    .locals 2

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBiometricRecognition() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBiometricRecognition(Z)V

    return-void
.end method

.method public setBlur(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 392
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBlur(Z)V

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 6

    const-string v0, "PluginLockManager"

    if-eqz p1, :cond_9

    .line 397
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockClock;

    move-result-object v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockClock;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockClock;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1002(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockClock;)Lcom/android/systemui/pluginlock/component/PluginLockClock;

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1200(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    move-result-object v1

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1202(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockHelpText;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    move-result-object v1

    if-nez v1, :cond_3

    .line 409
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1302(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockNotification;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 411
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1400(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    move-result-object v1

    if-nez v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1402(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockSecure;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1500(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    move-result-object v1

    if-nez v1, :cond_5

    .line 415
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1502(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    .line 417
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    move-result-object v1

    if-nez v1, :cond_6

    .line 418
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1602(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockShortcut;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 420
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1700(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v1

    if-nez v1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1702(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockSwipe;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v1

    if-nez v1, :cond_8

    .line 424
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    new-instance v2, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$700(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v5}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1100(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/PluginLockInstanceState;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    invoke-static {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1802(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 425
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1900(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginLockWallpaperCallback;)V

    .line 428
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicLockData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 431
    const-class v2, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicLockData() currData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicLockData() newData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockClock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1200(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1400(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1500(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1700(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2002(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/model/DynamicLockData;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 445
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2102(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z

    .line 447
    const-class p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 449
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string/jumbo p0, "wrong request"

    .line 398
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLockscreenTimer() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateLockscreenTimer(J)V

    return-void
.end method

.method public setPluginLockWallpaper(IILjava/lang/String;)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPluginLockWallpaper() wallpaperType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 489
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2200(Lcom/android/systemui/pluginlock/PluginLockManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Landroid/content/Context;IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRotationAllowed(Z)V
    .locals 1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 374
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager$3;->setScreenOrientation(ZZ)V

    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$802(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z

    .line 385
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0, p2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$902(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z

    .line 386
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScreenOrientation(Z)V

    return-void
.end method

.method public setTimeOut(Z)V
    .locals 2

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimeOut() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScreenTimeOut(Z)V

    return-void
.end method

.method public setViewMode(I)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setViewMode(I)V

    return-void
.end method

.method public setWallpaperHints(Ljava/lang/String;)V
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWallpaperHints() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "white"

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    invoke-static {}, Landroid/app/SemWallpaperColors;->getBlankWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_1
    const-string v0, "black"

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 611
    :cond_2
    new-instance v0, Landroid/app/SemWallpaperColors;

    invoke-direct {v0, p1}, Landroid/app/SemWallpaperColors;-><init>(Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "hints is null"

    .line 603
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    .line 615
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    :cond_4
    return-void
.end method

.method public setWallpaperHints([I)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager$3;->setWallpaperHints([IZ)V

    return-void
.end method

.method public setWallpaperHints([IZ)V
    .locals 0

    .line 643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setWallpaperHints() "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PluginLockManager"

    if-eqz p1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 460
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLockData() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 463
    const-class v2, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLockData() currData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLockData() newData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1300(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockClock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockClock;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1800(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1200(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1400(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1500(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockServiceBox;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$1700(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2000(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2002(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/model/DynamicLockData;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 477
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$2102(Lcom/android/systemui/pluginlock/PluginLockManager;Z)Z

    .line 478
    const-class p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->reissueAllPages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 480
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string/jumbo p0, "updateDynamicLockData() wrong request"

    .line 456
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockManager$3;->this$0:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->access$600(Lcom/android/systemui/pluginlock/PluginLockManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->userActivity()V

    return-void
.end method
