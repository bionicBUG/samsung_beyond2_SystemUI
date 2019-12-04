.class public Lcom/android/systemui/DependencyProvider;
.super Ljava/lang/Object;
.source "DependencyProvider.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideActivityManagerWrapper()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 223
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideAutoHideController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/phone/AutoHideController;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 217
    new-instance p0, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0
    .param p1    # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 114
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public provideBgLooper()Landroid/os/Looper;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 104
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiBg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 107
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public provideBixbyInteractor(Landroid/content/Context;)Lcom/android/systemui/BixbyInteractor;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 309
    new-instance p0, Lcom/android/systemui/BixbyInteractor;

    invoke-direct {p0, p1}, Lcom/android/systemui/BixbyInteractor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideConfigurationController(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 210
    new-instance p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDataSaverController(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 127
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object p0

    return-object p0
.end method

.method public provideDebugLogStore(Landroid/os/Looper;)Lcom/android/systemui/util/DebugLogStore;
    .locals 0
    .param p1    # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "debug_looper"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 275
    new-instance p0, Lcom/android/systemui/util/DebugLogStore;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DebugLogStore;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public provideDebugLooper()Landroid/os/Looper;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 266
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiDbg"

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 268
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 269
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public provideDesktopManager(Landroid/content/Context;)Lcom/android/systemui/util/DesktopManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 257
    new-instance p0, Lcom/android/systemui/util/DesktopManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDevicePolicyManagerWrapper()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 229
    invoke-static {}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public provideDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 171
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    return-object p0
.end method

.method public provideFaceWidgetController()Lcom/android/systemui/facewidget/FaceWidgetController;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 292
    sget-boolean p0, Lcom/android/systemui/Rune;->LOCKUI_SUPPORT_FACE_WIDGET:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;->getInstance()Lcom/android/systemui/facewidget/FaceWidgetControllerImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public provideHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 95
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "TimeTick"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public provideINotificationManager()Landroid/app/INotificationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string p0, "notification"

    .line 163
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 162
    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public provideIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string/jumbo p0, "statusbar"

    .line 155
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 154
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public provideIWindowManager()Landroid/view/IWindowManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 148
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public provideKnoxStateMonitor(Landroid/content/Context;)Lcom/android/systemui/KnoxStateMonitor;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 250
    new-instance p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0, p1}, Lcom/android/systemui/KnoxStateMonitor;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 183
    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public provideLocalBluetoothController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 135
    sget-object p0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->create(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public provideMainHandler()Landroid/os/Handler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 121
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public provideMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 142
    new-instance p0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object p0
.end method

.method public provideNavbarBgHandler()Landroid/os/Handler;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 374
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiNavbarBg"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public provideNavigationBarController(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/NavigationBarController;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 204
    new-instance p0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NavigationBarController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public provideNightDisplayListener(Landroid/content/Context;Landroid/os/Handler;)Landroid/hardware/display/NightDisplayListener;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 191
    new-instance p0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public providePackageManagerWrapper()Lcom/android/systemui/shared/system/PackageManagerWrapper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 235
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public providePluginManager(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 197
    new-instance p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    new-instance v0, Lcom/android/systemui/plugins/PluginInitializerImpl;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginInitializerImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-object p0
.end method

.method public provideSPluginManager(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 301
    new-instance p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    new-instance v0, Lcom/samsung/systemui/splugins/SPluginInitializerImpl;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/SPluginInitializerImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginInitializer;)V

    return-object p0
.end method

.method public provideSensorPrivacyManager(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 177
    const-class p0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    return-object p0
.end method

.method public provideSettingsHelper(Landroid/content/Context;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 242
    new-instance p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideUiOffloadThread()Lcom/android/systemui/UiOffloadThread;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 283
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_DEBUG_UI_OFFLOAD_THREAD:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/DebugUiOffloadThread;

    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;-><init>()V

    goto :goto_0

    .line 284
    :cond_0
    new-instance p0, Lcom/android/systemui/UiOffloadThread;

    invoke-direct {p0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    :goto_0
    return-object p0
.end method

.method public providerBinderProxyDumpHelper()Lcom/android/systemui/BinderProxyDumpHelper;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 386
    new-instance p0, Lcom/android/systemui/BinderProxyDumpHelper;

    invoke-direct {p0}, Lcom/android/systemui/BinderProxyDumpHelper;-><init>()V

    return-object p0
.end method

.method public providerDisplayLifecycle(Landroid/content/Context;)Lcom/android/systemui/keyguard/DisplayLifecycle;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 357
    new-instance p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerIntegrityVerifier(Landroid/content/Context;)Lcom/android/systemui/util/IntegrityVerifier;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 341
    new-instance p0, Lcom/android/systemui/util/IntegrityVerifier;

    invoke-direct {p0}, Lcom/android/systemui/util/IntegrityVerifier;-><init>()V

    return-object p0
.end method

.method public providerLockscreenNotificationManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/LockscreenNotificationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 325
    new-instance p0, Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerNavbarStore(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/store/NavBarStore;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 333
    new-instance p0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerNotiCenterPlugin()Lcom/android/systemui/noticenter/NotiCenterPlugin;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 394
    new-instance p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;-><init>()V

    return-object p0
.end method

.method public providerNotiCenterSettingsListener()Lcom/android/systemui/noticenter/NotiCenterSettingsListener;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 400
    new-instance p0, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    invoke-direct {p0}, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;-><init>()V

    return-object p0
.end method

.method public providerNotificationColorPicker(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationColorPicker;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 317
    new-instance p0, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationColorPicker;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerShortcutManager(Landroid/content/Context;)Lcom/android/systemui/util/ShortcutManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 349
    new-instance p0, Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ShortcutManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public providerSystemUIIndexMediator(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 365
    new-instance p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    return-object p0
.end method
