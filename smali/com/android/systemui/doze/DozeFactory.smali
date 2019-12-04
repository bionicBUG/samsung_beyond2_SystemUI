.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 8

    .line 101
    sget p0, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    .line 102
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-static {p3, p0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    .line 104
    new-instance p0, Lcom/android/systemui/doze/AODScreenBrightness;

    .line 105
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/AODScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    return-object p0
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 10

    .line 125
    new-instance v9, Lcom/android/systemui/doze/AODUi;

    .line 126
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object/from16 v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/AODUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v9
.end method

.method public static getBiometricUnlockController(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 141
    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    .line 142
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 1

    .line 134
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 135
    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    .line 136
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 18

    move-object/from16 v8, p1

    .line 48
    const-class v0, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/SensorManager;

    .line 49
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/AlarmManager;

    .line 50
    const-class v0, Lcom/android/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dock/DockManager;

    .line 52
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v10

    .line 53
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, v8}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v11

    .line 55
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 56
    new-instance v13, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v1, "Doze"

    .line 57
    invoke-static {v8, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-direct {v13, v12, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 60
    new-instance v1, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v1, v8, v10}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    .line 61
    sget-boolean v2, Lcom/android/systemui/Rune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-nez v2, :cond_0

    .line 62
    invoke-static {v1, v11}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v1

    .line 64
    :cond_0
    invoke-static {v1, v11}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v14

    .line 69
    new-instance v15, Lcom/android/systemui/doze/AODMachine;

    invoke-direct {v15, v14, v0, v13}, Lcom/android/systemui/doze/AODMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 70
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAODParameters()Lcom/android/systemui/doze/AODParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    const/4 v0, 0x5

    new-array v7, v0, [Lcom/android/systemui/doze/DozeMachine$Part;

    const/4 v0, 0x0

    .line 71
    new-instance v1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    .line 72
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    aput-object v1, v7, v0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v13

    move-object v4, v15

    move-object v5, v12

    move-object/from16 v17, v15

    move-object v15, v7

    move-object v7, v11

    .line 73
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    aput-object v0, v15, v16

    const/4 v0, 0x2

    new-instance v1, Lcom/android/systemui/doze/DozeScreenState;

    invoke-direct {v1, v14, v12, v11, v13}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V

    aput-object v1, v15, v0

    const/4 v7, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeFactory;->createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    aput-object v0, v15, v7

    const/4 v0, 0x4

    new-instance v1, Lcom/android/systemui/doze/DozeWallpaperState;

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getBiometricUnlockController(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-direct {v1, v8, v2}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    aput-object v1, v15, v0

    move-object/from16 v0, v17

    .line 71
    invoke-virtual {v0, v15}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-object v0
.end method
