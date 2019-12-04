.class Lcom/samsung/android/knox/kiosk/KioskMode$1;
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
    .locals 6

    .line 1339
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$kiosk:Lcom/samsung/android/knox/kiosk/KioskSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1341
    new-instance v0, Lcom/samsung/android/knox/kiosk/KioskSetting;

    invoke-direct {v0}, Lcom/samsung/android/knox/kiosk/KioskSetting;-><init>()V

    .line 1342
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    .line 1343
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    .line 1344
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    .line 1345
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    .line 1346
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    .line 1347
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    .line 1348
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    .line 1349
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    .line 1350
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    const/4 v2, 0x1

    .line 1351
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    .line 1352
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    .line 1353
    iput-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    .line 1354
    iput-boolean v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    .line 1355
    iput v1, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$000(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    const-string v3, "KioskMode"

    if-nez v2, :cond_1

    const-string v2, "Failed talking with restriction service"

    .line 1360
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1364
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->settingsChanges:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "allow settings changes failed"

    .line 1367
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Failed to allow settings changes"

    .line 1371
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBarExpansion:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "allow status bar expansion failed"

    .line 1378
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "Failed to allow status bar expansion"

    .line 1382
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1386
    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->homeKey:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "set home key state failed"

    .line 1389
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    const-string v5, "Failed to set home key state"

    .line 1393
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->smartClip:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "allow smart clip mode failed"

    .line 1400
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    const-string v4, "Failed to allow smart clip mode"

    .line 1404
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    :cond_5
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airCommand:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "set air command mode failed"

    .line 1412
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v4, "Failed to allow air command mode"

    .line 1416
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    :cond_6
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->airView:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "set air view mode failed"

    .line 1423
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    const-string v4, "Failed to allow air view mode"

    .line 1427
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    :cond_7
    :goto_5
    iget-object v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 1431
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    move v4, v1

    .line 1432
    :goto_6
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1433
    iget-object v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->hardwareKey:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1437
    :cond_8
    :try_start_6
    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "allowHardwareKeys failed"

    .line 1440
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    const-string v4, "Failed to allow hardware keys"

    .line 1444
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1449
    :cond_9
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->multiWindow:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "set multiwindow mode failed"

    .line 1452
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v4, "Failed to allow multiwindow mode"

    .line 1456
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    :cond_a
    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->taskManager:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "set task manager failed"

    .line 1463
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "Failed to allow task manager"

    .line 1467
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    :cond_b
    :goto_9
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->clearAllNotifications:Z

    if-eqz v2, :cond_c

    .line 1472
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear all notifications failed"

    .line 1475
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v4, "Failed to clear all notifications"

    .line 1479
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    :cond_c
    :goto_a
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->systemBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "hide system bar failed"

    .line 1487
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v2

    const-string v4, "Failed to hide system bar"

    .line 1491
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    :cond_d
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->navigationBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "hide navigationbar failed"

    .line 1498
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    const-string v4, "Failed to hide navigationbar"

    .line 1502
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    :cond_e
    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->statusBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "hide status bar failed"

    .line 1509
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    const-string v4, "Failed to hide status bar"

    .line 1513
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1516
    :cond_f
    :goto_d
    iget-boolean v2, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->wipeRecentTasks:Z

    if-eqz v2, :cond_10

    .line 1518
    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "wipe recent task failed"

    .line 1521
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move-exception v2

    const-string v4, "Failed to wipe recent task"

    .line 1525
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1530
    :cond_10
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {v4}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v0, v0, Lcom/samsung/android/knox/kiosk/KioskSetting;->blockedEdgeFunctions:I

    invoke-interface {v2, v4, v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "block edge functions failed"

    .line 1533
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    const-string v1, "Failed to Block Edge Functions"

    .line 1537
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1540
    :cond_11
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1542
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Lcom/samsung/android/knox/kiosk/KioskMode$1;->this$0:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->access$100(Lcom/samsung/android/knox/kiosk/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    const-string v1, "com.sec.android.kiosk"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    const-string v0, "Failed talking with kiosk mode service"

    .line 1544
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_10
    return-void
.end method
