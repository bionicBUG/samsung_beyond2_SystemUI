.class Landroid/app/enterprise/kioskmode/KioskMode$1;
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
    .locals 6

    .line 1284
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$kiosk:Landroid/app/enterprise/kioskmode/KioskSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Landroid/app/enterprise/kioskmode/KioskSetting;

    invoke-direct {v0}, Landroid/app/enterprise/kioskmode/KioskSetting;-><init>()V

    .line 1287
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->HomeKey:Z

    .line 1288
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SettingsChanges:Z

    .line 1289
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBarExpansion:Z

    .line 1290
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->AirCommand:Z

    .line 1291
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->AirView:Z

    .line 1292
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->MultiWindow:Z

    .line 1293
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SmartClip:Z

    .line 1294
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->TaskManager:Z

    .line 1295
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->ClearAllNotifications:Z

    const/4 v2, 0x1

    .line 1296
    iput-boolean v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->NavigationBar:Z

    .line 1297
    iput-boolean v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBar:Z

    .line 1298
    iput-boolean v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SystemBar:Z

    .line 1299
    iput-boolean v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->WipeRecentTasks:Z

    .line 1300
    iput v1, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->BlockedEdgeFunctions:I

    .line 1303
    :cond_0
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->access$000(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v2

    const-string v3, "KioskMode"

    if-nez v2, :cond_1

    const-string v2, "Failed talking with restriction service"

    .line 1305
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1309
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SettingsChanges:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSettingsChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "allow settings changes failed"

    .line 1312
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Failed to allow settings changes"

    .line 1316
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1320
    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBarExpansion:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowStatusBarExpansion(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "allow status bar expansion failed"

    .line 1323
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "Failed to allow status bar expansion"

    .line 1327
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    :cond_3
    :goto_1
    :try_start_2
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->HomeKey:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->setHomeKeyState(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "set home key state failed"

    .line 1334
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    const-string v5, "Failed to set home key state"

    .line 1338
    invoke-static {v3, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    :cond_4
    :goto_2
    :try_start_3
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SmartClip:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->allowSmartClipMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "allow smart clip mode failed"

    .line 1345
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    const-string v4, "Failed to allow smart clip mode"

    .line 1349
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    :cond_5
    :goto_3
    :try_start_4
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->AirCommand:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirCommandMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "set air command mode failed"

    .line 1357
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v4, "Failed to allow air command mode"

    .line 1361
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    :cond_6
    :goto_4
    :try_start_5
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->AirView:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowAirViewMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "set air view mode failed"

    .line 1368
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    const-string v4, "Failed to allow air view mode"

    .line 1372
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    :cond_7
    :goto_5
    iget-object v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 1376
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    move v4, v1

    .line 1377
    :goto_6
    iget-object v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1378
    iget-object v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->HardwareKey:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1382
    :cond_8
    :try_start_6
    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v5, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v5

    invoke-interface {v4, v5, v2, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowHardwareKeys(Lcom/samsung/android/knox/ContextInfo;[IZ)[I

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "allowHardwareKeys failed"

    .line 1385
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_6
    move-exception v2

    const-string v4, "Failed to allow hardware keys"

    .line 1389
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
    :cond_9
    :goto_7
    :try_start_7
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->MultiWindow:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowMultiWindowMode(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "set multiwindow mode failed"

    .line 1397
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catch_7
    move-exception v2

    const-string v4, "Failed to allow multiwindow mode"

    .line 1401
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    :cond_a
    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->TaskManager:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowTaskManager(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "set task manager failed"

    .line 1408
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    move-exception v2

    const-string v4, "Failed to allow task manager"

    .line 1412
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    :cond_b
    :goto_9
    iget-boolean v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->ClearAllNotifications:Z

    if-eqz v2, :cond_c

    .line 1417
    :try_start_9
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->clearAllNotifications(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "clear all notifications failed"

    .line 1420
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v4, "Failed to clear all notifications"

    .line 1424
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    :cond_c
    :goto_a
    :try_start_a
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->SystemBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideSystemBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "hide system bar failed"

    .line 1432
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_b

    :catch_a
    move-exception v2

    const-string v4, "Failed to hide system bar"

    .line 1436
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    :cond_d
    :goto_b
    :try_start_b
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->NavigationBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideNavigationBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "hide navigationbar failed"

    .line 1443
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_c

    :catch_b
    move-exception v2

    const-string v4, "Failed to hide navigationbar"

    .line 1447
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    :cond_e
    :goto_c
    :try_start_c
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget-boolean v5, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->StatusBar:Z

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/knox/kiosk/IKioskMode;->hideStatusBar(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "hide status bar failed"

    .line 1454
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_d

    :catch_c
    move-exception v2

    const-string v4, "Failed to hide status bar"

    .line 1458
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1461
    :cond_f
    :goto_d
    iget-boolean v2, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->WipeRecentTasks:Z

    if-eqz v2, :cond_10

    .line 1463
    :try_start_d
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/samsung/android/knox/kiosk/IKioskMode;->wipeRecentTasks(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "wipe recent task failed"

    .line 1466
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_e

    :catch_d
    move-exception v2

    const-string v4, "Failed to wipe recent task"

    .line 1470
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    :cond_10
    :goto_e
    :try_start_e
    iget-object v2, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object v4, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v4

    iget v0, v0, Landroid/app/enterprise/kioskmode/KioskSetting;->BlockedEdgeFunctions:I

    invoke-interface {v2, v4, v0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->allowEdgeScreen(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "block edge functions failed"

    .line 1478
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    const-string v1, "Failed to Block Edge Functions"

    .line 1482
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    :cond_11
    :goto_f
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1487
    :try_start_f
    iget-object v0, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->val$km:Lcom/samsung/android/knox/kiosk/IKioskMode;

    iget-object p0, p0, Landroid/app/enterprise/kioskmode/KioskMode$1;->this$0:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-static {p0}, Landroid/app/enterprise/kioskmode/KioskMode;->access$100(Landroid/app/enterprise/kioskmode/KioskMode;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    const-string v1, "com.sec.android.kiosk"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/kiosk/IKioskMode;->enableKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_10

    :catch_f
    move-exception p0

    const-string v0, "Failed talking with kiosk mode service"

    .line 1489
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_10
    return-void
.end method
