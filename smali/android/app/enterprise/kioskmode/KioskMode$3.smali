.class Landroid/app/enterprise/kioskmode/KioskMode$3;
.super Ljava/lang/Object;
.source "KioskMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/app/enterprise/kioskmode/KioskMode;

.field final synthetic val$kiosk:Landroid/app/enterprise/kioskmode/KioskSetting;

.field final synthetic val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "KioskMode"

    .line 1574
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/kiosk/IKioskMode;->disableKioskMode(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed talking with kiosk mode service"

    .line 1576
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    :goto_0
    iget-object v1, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$kiosk:Landroid/app/enterprise/kioskmode/KioskSetting;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1581
    new-instance v1, Landroid/app/enterprise/kioskmode/KioskSetting;

    invoke-direct {v1}, Landroid/app/enterprise/kioskmode/KioskSetting;-><init>()V

    .line 1582
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SettingsChanges:Z

    .line 1583
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBarExpansion:Z

    .line 1584
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->HomeKey:Z

    .line 1585
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->AirCommand:Z

    .line 1586
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->AirView:Z

    .line 1587
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->MultiWindow:Z

    .line 1588
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SmartClip:Z

    .line 1589
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->TaskManager:Z

    .line 1590
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->ClearAllNotifications:Z

    .line 1591
    iput-boolean v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->NavigationBar:Z

    .line 1592
    iput-boolean v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBar:Z

    .line 1593
    iput-boolean v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SystemBar:Z

    .line 1594
    iput-boolean v3, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->WipeRecentTasks:Z

    .line 1595
    iput v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->BlockedEdgeFunctions:I

    .line 1598
    :cond_0
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$000(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Failed talking with restriction service"

    .line 1600
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1604
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SettingsChanges:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "allow settings changes failed"

    .line 1607
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "Failed to allow settings changes"

    .line 1611
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1615
    :cond_2
    :goto_1
    :try_start_2
    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBarExpansion:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "allow status bar expansion failed"

    .line 1618
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v6, "Failed to allow status bar expansion"

    .line 1622
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    :cond_3
    :goto_2
    :try_start_3
    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->HomeKey:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "set home key state failed"

    .line 1629
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    const-string v6, "Failed to set home key state"

    .line 1633
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1637
    :cond_4
    :goto_3
    :try_start_4
    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SmartClip:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "allow smart clip mode failed"

    .line 1640
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    const-string v5, "Failed to allow smart clip mode"

    .line 1644
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1649
    :cond_5
    :goto_4
    :try_start_5
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->AirCommand:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "allow air command failed"

    .line 1652
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    const-string v5, "Failed to allow air command mode"

    .line 1656
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1661
    :cond_6
    :goto_5
    :try_start_6
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    iget-boolean v6, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->AirView:Z

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "allow air view failed"

    .line 1664
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    const-string v5, "Failed to allow air view mode"

    .line 1668
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    :cond_7
    :goto_6
    iget-object v4, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 1672
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1673
    :goto_7
    iget-object v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 1674
    iget-object v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1678
    :cond_8
    :try_start_7
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v2, v5, v4, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "allowHardwareKeys failed"

    .line 1681
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v4, "Failed to allow hardware keys"

    .line 1685
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1690
    :cond_9
    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->MultiWindow:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "set multiwindow mode failed"

    .line 1693
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "Failed to allow multiwindow mode"

    .line 1697
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1701
    :cond_a
    :goto_9
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->TaskManager:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "set task manager failed"

    .line 1704
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v4, "Failed to allow task manager"

    .line 1708
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    :cond_b
    :goto_a
    iget-boolean v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->ClearAllNotifications:Z

    if-eqz v2, :cond_c

    .line 1713
    :try_start_a
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear all notifications failed"

    .line 1716
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v2

    const-string v4, "Failed to clear all notifications"

    .line 1720
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    :cond_c
    :goto_b
    :try_start_b
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->NavigationBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "hide navigationbar failed"

    .line 1728
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    const-string v4, "Failed to hide navigationbar"

    .line 1732
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    :cond_d
    :goto_c
    :try_start_c
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "hide status bar failed"

    .line 1739
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    const-string v4, "Failed to hide status bar"

    .line 1743
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    :cond_e
    :goto_d
    :try_start_d
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->SystemBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "hide system bar failed"

    .line 1750
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move-exception v2

    const-string v4, "Failed to hide system bar"

    .line 1754
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    :cond_f
    :goto_e
    iget-boolean v2, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->WipeRecentTasks:Z

    if-eqz v2, :cond_10

    .line 1759
    :try_start_e
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "wipe recent task failed"

    .line 1762
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_f

    :catch_e
    move-exception v2

    const-string v4, "Failed to wipe recent task"

    .line 1766
    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    :cond_10
    :goto_f
    :try_start_f
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode$3;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    iget v1, v1, Landroid/app/enterprise/kioskmode/KioskSetting;->BlockedEdgeFunctions:I

    invoke-interface {v2, p0, v1, v3}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "Allow edge functions failed"

    .line 1774
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    const-string v1, "Failed to Allow Edge Functions"

    .line 1778
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_10
    return-void
.end method
