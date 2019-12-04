.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DependencyInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V

    return-void
.end method

.method private injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1351
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1348
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1346
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1355
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1354
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1352
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityStarterDelegate(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1359
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1358
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1356
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAsyncSensorManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1365
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1362
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1360
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBluetoothController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1370
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v0

    .line 1368
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1366
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1376
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1371
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRotationLockController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1381
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1379
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1377
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNetworkController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1386
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1384
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1382
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMZenModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1391
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1387
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMHotspotController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1396
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1394
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1392
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCastController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1397
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1402
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1399
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1397
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFlashlightController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1406
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1405
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1403
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserSwitcherController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1411
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1409
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1407
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUserInfoController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1416
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1414
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1412
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1421
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1419
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1417
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBatteryController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1426
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1424
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1422
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNightDisplayListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1432
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1429
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1427
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMManagedProfileController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1433
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1438
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1435
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1433
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNextAlarmController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1442
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1441
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1439
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDataSaverController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1443
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1446
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1445
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1443
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1452
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1449
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1447
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDeviceProvisionedController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1453
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1456
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1455
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1453
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1457
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1460
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1459
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1457
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAssistManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1461
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1465
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1463
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1461
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecurityController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1469
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1468
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1466
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakDetector(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1472
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1470
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReporter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1473
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1476
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1475
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1473
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMGarbageMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1481
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1479
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1477
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunerService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1485
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1484
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1482
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarWindowController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1486
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1490
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1488
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1486
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDarkIconDispatcher(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1495
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1493
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1491
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMConfigurationController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1501
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1498
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1496
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarIconController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1505
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1504
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1502
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMScreenLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1509
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1508
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1506
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWakefulnessLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1513
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1512
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1510
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFragmentService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1519
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1516
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1514
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMExtensionController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1520
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1523
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1522
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1520
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1528
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1526
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1524
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLocalBluetoothManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1534
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1531
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1529
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVolumeDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1538
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1537
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1535
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMetricsLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1543
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$4900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1541
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1539
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAccessibilityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1544
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1547
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1546
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1544
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSysuiColorExtractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1548
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1551
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1550
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1548
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTunablePaddingService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1552
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1556
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1554
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1552
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1560
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1559
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1557
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMUiOffloadThread(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1566
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1563
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1561
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMWarningsUI(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1570
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1569
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1567
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLightBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1574
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1573
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1571
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIWindowManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1578
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1577
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1575
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMOverviewProxyService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1579
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1582
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1581
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1579
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavBarModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1583
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1586
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1585
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1583
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMEnhancedEstimates(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1590
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1589
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1587
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVibratorHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1591
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1594
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1593
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1591
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIStatusBarService(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1598
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1597
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1595
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayMetrics(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1599
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1602
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1601
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1599
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenGestureLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1603
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1606
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1605
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1603
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardEnvironment(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1607
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1610
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1609
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1607
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShadeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1616
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1613
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1611
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManagerCallback(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1620
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1619
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1617
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMInitController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1621
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1625
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1623
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1621
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAppOpsController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1630
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$6900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1628
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1626
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavigationBarController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1636
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1633
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1631
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarStateController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1637
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1641
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1639
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1637
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLockscreenUserManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1646
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1644
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1642
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupAlertTransferHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1647
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1650
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1649
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1647
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGroupManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1651
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1654
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1653
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1651
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMVisualStabilityManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1655
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1658
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1657
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1655
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationGutsManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1662
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1661
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1659
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationMediaManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1663
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1666
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1665
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1663
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAmbientPulseManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1671
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1669
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1667
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationBlockingHelperManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1676
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1674
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1672
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationRemoteInputManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1680
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1679
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1677
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyConstants(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1681
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1685
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1683
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1681
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1686
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1689
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1688
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1686
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationLogger(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1690
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1694
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1692
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1690
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationViewHierarchyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1698
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1697
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1695
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationFilter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1703
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1701
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1699
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationInterruptionStateProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1704
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1707
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1706
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1704
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKeyguardDismissUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1708
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1711
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1710
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1708
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSmartReplyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1712
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1716
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1714
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1712
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMRemoteInputQuickSettingsDisabler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1720
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$8900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1719
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1717
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBubbleController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1725
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1723
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1721
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationEntryManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1730
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1728
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1726
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationAlertingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1735
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1733
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1731
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1736
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1739
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1738
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1736
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMAutoHideController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1740
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1744
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1742
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1740
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMForegroundServiceNotificationListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1745
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1748
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1747
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1745
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1749
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1752
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1751
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1749
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1756
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1755
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1753
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMMainHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1757
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1760
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1759
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1757
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTimeTickHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1761
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1764
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1763
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1761
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLeakReportEmail(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1767
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1765
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMClockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1772
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1770
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1768
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMActivityManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1777
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1773
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDevicePolicyManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1782
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1780
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1778
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMPackageManagerWrapper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1783
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1788
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1785
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1783
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSensorPrivacyController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1789
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1792
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1791
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1789
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDumpController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1796
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1795
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1793
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDockManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1797
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1801
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1799
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1797
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMChannelEditorDialogController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1806
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1804
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1802
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMINotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1811
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1809
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1807
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFalsingManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1815
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1814
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1812
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSettingsHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1819
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;

    move-result-object v0

    .line 1818
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1816
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDesktopManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1823
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1820
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDebugLooper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1824
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1827
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1826
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1824
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDebugLogStore(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1828
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1831
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1830
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1828
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMKnoxStateMonitor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1832
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1835
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1834
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1832
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMStatusBarKnoxMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1836
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1840
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1838
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1836
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMFaceWidgetController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1844
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1843
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1841
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSPluginManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1848
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1845
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSPluginDependencyProvider(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1852
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1851
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1849
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBixbyInteractor(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1857
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1855
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1853
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotificationColorPicker(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1858
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1862
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1860
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1858
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMLockscreenNotificationManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1866
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1865
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1863
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavbarStore(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1867
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1870
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1869
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1867
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMQSClockBellTower(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1871
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1874
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1873
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1871
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIndicatorGardenPresenter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1875
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1878
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1877
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1875
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSlimIndicatorViewMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1884
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1881
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1879
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSecQSColoringPresenter(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1885
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1888
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1887
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1885
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMTwoPhoneModeController(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1889
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1892
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1891
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1889
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMIntegrityVerifier(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1893
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1896
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$12900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1895
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1893
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMShortcutManager(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1900
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1899
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1897
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMDisplayLifecycle(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1903
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1901
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMCoverUtil(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1908
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1906
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1904
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMSystemUIIndexMediator(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1909
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1912
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1911
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1909
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotiCenterPlugin(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1913
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1917
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1915
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1913
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNotiCenterSettingsListener(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1921
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1920
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    .line 1918
    invoke-static {p1, v0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMNavbarBgHandler(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    .line 1922
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1926
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1924
    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    .line 1922
    invoke-static {p1, p0}, Lcom/android/systemui/Dependency_MembersInjector;->injectMBinderProxyDumpHelper(Lcom/android/systemui/Dependency;Ldagger/Lazy;)V

    return-object p1
.end method


# virtual methods
.method public createSystemUI(Lcom/android/systemui/Dependency;)V
    .locals 0

    .line 1342
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;->injectDependency(Lcom/android/systemui/Dependency;)Lcom/android/systemui/Dependency;

    return-void
.end method
