.class Lcom/samsung/android/knox/kiosk/KioskMode$3;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

.field final synthetic val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

.field final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "KioskMode"

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed talking with kiosk mode service"

    .line 1632
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1635
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1637
    new-instance v1, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v1}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 1638
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 1639
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 1640
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 1641
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 1642
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 1643
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 1644
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 1645
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 1646
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    .line 1647
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 1648
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 1649
    iput-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 1650
    iput-boolean v3, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 1651
    iput v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 1654
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Failed talking with restriction service"

    .line 1656
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1660
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "allow settings changes failed"

    .line 1663
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "Failed to allow settings changes"

    .line 1667
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "allow status bar expansion failed"

    .line 1674
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v6, "Failed to allow status bar expansion"

    .line 1678
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1682
    :cond_3
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "set home key state failed"

    .line 1685
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    const-string v6, "Failed to set home key state"

    .line 1689
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1693
    :cond_4
    :goto_3
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "allow smart clip mode failed"

    .line 1696
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    const-string v5, "Failed to allow smart clip mode"

    .line 1700
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1705
    :cond_5
    :goto_4
    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "allow air command failed"

    .line 1708
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    const-string v5, "Failed to allow air command mode"

    .line 1712
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    :cond_6
    :goto_5
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "allow air view failed"

    .line 1720
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    const-string v5, "Failed to allow air view mode"

    .line 1724
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1727
    :cond_7
    :goto_6
    iget-object v4, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 1728
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1729
    :goto_7
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 1730
    iget-object v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1734
    :cond_8
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v2, v5, v4, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "allowHardwareKeys failed"

    .line 1737
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v4, "Failed to allow hardware keys"

    .line 1741
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1746
    :cond_9
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "set multiwindow mode failed"

    .line 1749
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "Failed to allow multiwindow mode"

    .line 1753
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    :cond_a
    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "set task manager failed"

    .line 1760
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v4, "Failed to allow task manager"

    .line 1764
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    :cond_b
    :goto_a
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v2, :cond_c

    .line 1769
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear all notifications failed"

    .line 1772
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v2

    const-string v4, "Failed to clear all notifications"

    .line 1776
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    :cond_c
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "hide navigationbar failed"

    .line 1784
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    const-string v4, "Failed to hide navigationbar"

    .line 1788
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1792
    :cond_d
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "hide status bar failed"

    .line 1795
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    const-string v4, "Failed to hide status bar"

    .line 1799
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1803
    :cond_e
    :goto_d
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "hide system bar failed"

    .line 1806
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move-exception v2

    const-string v4, "Failed to hide system bar"

    .line 1810
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1813
    :cond_f
    :goto_e
    iget-boolean v2, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v2, :cond_10

    .line 1815
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "wipe recent task failed"

    .line 1818
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_f

    :catch_e
    move-exception v2

    const-string v4, "Failed to wipe recent task"

    .line 1822
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1827
    :cond_10
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$3;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    iget v1, v1, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v2, p0, v1, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "Allow edge functions failed"

    .line 1830
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    const-string v1, "Failed to Allow Edge Functions"

    .line 1834
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_10
    return-void
.end method
