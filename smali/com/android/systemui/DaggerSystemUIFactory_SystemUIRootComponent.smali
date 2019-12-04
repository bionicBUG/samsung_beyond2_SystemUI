.class public final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;,
        Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    }
.end annotation


# instance fields
.field private accessibilityControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private accessibilityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private activityStarterDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ActivityStarterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

.field private ambientPulseManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/AmbientPulseManager;",
            ">;"
        }
    .end annotation
.end field

.field private appOpsControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/appops/AppOpsControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private asyncSensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/AsyncSensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

.field private autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

.field private batteryControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

.field private blueLightFilterTileProvider:Lcom/android/systemui/qs/tiles/BlueLightFilterTile_Factory;

.field private bluetoothControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

.field private bubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/bubbles/BubbleData;",
            ">;"
        }
    .end annotation
.end field

.field private castControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/CastControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

.field private cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

.field private channelEditorDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            ">;"
        }
    .end annotation
.end field

.field private clockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/clock/ClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

.field private coverUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/CoverUtil;",
            ">;"
        }
    .end annotation
.end field

.field private darkIconDispatcherImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

.field private deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

.field private dumpControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/DumpController;",
            ">;"
        }
    .end annotation
.end field

.field private dynamicPrivacyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            ">;"
        }
    .end annotation
.end field

.field private expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

.field private extensionControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private falsingManagerProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingManagerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

.field private foregroundServiceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceController;",
            ">;"
        }
    .end annotation
.end field

.field private foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/ForegroundServiceNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/fragments/FragmentService;",
            ">;"
        }
    .end annotation
.end field

.field private garbageMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

.field private indicatorGardenPresenterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private initControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/InitController;",
            ">;"
        }
    .end annotation
.end field

.field private injectionInflationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private keyguardMonitorImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private leakReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakReporter;",
            ">;"
        }
    .end annotation
.end field

.field private lightBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LightBarController;",
            ">;"
        }
    .end annotation
.end field

.field private locationControllerImplProvider:Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

.field private locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

.field private lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;"
        }
    .end annotation
.end field

.field private managedProfileControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mediaArtworkProcessorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/MediaArtworkProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

.field private mobileDataTileProvider:Lcom/android/systemui/qs/tiles/MobileDataTile_Factory;

.field private navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private networkControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nextAlarmControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

.field private notificationAlertingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationFilter;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationGutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private notificationMediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRemoteInputManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationRoundnessManagerProvider:Ljavax/inject/Provider;

.field private notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field

.field private notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private pluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/PluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private powerNotificationWarningsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/PowerNotificationWarnings;",
            ">;"
        }
    .end annotation
.end field

.field private provideActivityManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/ActivityManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private provideAssistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideAutoHideControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoHideController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideBgLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideBixbyInteractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BixbyInteractor;",
            ">;"
        }
    .end annotation
.end field

.field private provideConfigurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

.field private provideDataSaverControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/DataSaverController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDebugLogStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DebugLogStore;",
            ">;"
        }
    .end annotation
.end field

.field private provideDebugLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDesktopManagerProvider:Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;

.field private provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private provideDockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideEnhancedEstimatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/power/EnhancedEstimates;",
            ">;"
        }
    .end annotation
.end field

.field private provideFaceWidgetControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/facewidget/FaceWidgetController;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideINotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/INotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideIStatusBarServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/statusbar/IStatusBarService;",
            ">;"
        }
    .end annotation
.end field

.field private provideIWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private provideKnoxStateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/KnoxStateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/LeakDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideLeakReportEmailProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideMetricsLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/MetricsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavbarBgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private provideNavigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private provideNightDisplayListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/display/NightDisplayListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationEntryManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            ">;"
        }
    .end annotation
.end field

.field private providePackageManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/system/PackageManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private providePluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSPluginManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorPrivacyManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideSettingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideShadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private provideUiOffloadThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/UiOffloadThread;",
            ">;"
        }
    .end annotation
.end field

.field private providerBinderProxyDumpHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/BinderProxyDumpHelper;",
            ">;"
        }
    .end annotation
.end field

.field private providerDisplayLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private providerIntegrityVerifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/IntegrityVerifier;",
            ">;"
        }
    .end annotation
.end field

.field private providerLockscreenNotificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerNavbarStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/store/NavBarStore;",
            ">;"
        }
    .end annotation
.end field

.field private providerNotiCenterPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/noticenter/NotiCenterPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private providerNotiCenterSettingsListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/noticenter/NotiCenterSettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private providerNotificationColorPickerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationColorPicker;",
            ">;"
        }
    .end annotation
.end field

.field private providerShortcutManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/ShortcutManager;",
            ">;"
        }
    .end annotation
.end field

.field private providerSystemUIIndexMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/indexsearch/SystemUIIndexMediator;",
            ">;"
        }
    .end annotation
.end field

.field private pulseExpansionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private qSClockBellTowerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/QSClockBellTower;",
            ">;"
        }
    .end annotation
.end field

.field private qSFactoryImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private qSTileHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSTileHost;",
            ">;"
        }
    .end annotation
.end field

.field private remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

.field private sPluginDependencyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/samsung/systemui/splugins/SPluginDependencyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private screenCaptureTileProvider:Lcom/android/systemui/qs/tiles/ScreenCaptureTile_Factory;

.field private screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private secQSColoringPresenterImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private securityControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyConstantsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/SmartReplyConstants;",
            ">;"
        }
    .end annotation
.end field

.field private smartReplyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            ">;"
        }
    .end annotation
.end field

.field private soundModeTileProvider:Lcom/android/systemui/qs/tiles/SoundModeTile_Factory;

.field private statusBarIconControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarKnoxMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarStateControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private statusBarWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private systemUIRootComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;",
            ">;"
        }
    .end annotation
.end field

.field private sysuiColorExtractorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/colorextraction/SysuiColorExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private tunablePaddingServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
            ">;"
        }
    .end annotation
.end field

.field private tunerServiceImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private twoPhoneModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
            ">;"
        }
    .end annotation
.end field

.field private uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

.field private userInfoControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field

.field private userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

.field private vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field

.field private visualStabilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private volumeDialogControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/volume/VolumeDialogControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field private wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

.field private workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

.field private zenModeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initialize(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    .line 593
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initialize2(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$10900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDesktopManagerProvider:Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDebugLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDebugLogStoreProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarKnoxMediatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideFaceWidgetControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSPluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sPluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBixbyInteractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotificationColorPickerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerLockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNavbarStoreProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSClockBellTowerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->indicatorGardenPresenterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->secQSColoringPresenterImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->twoPhoneModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerIntegrityVerifierProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$12900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerShortcutManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    return-object p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerDisplayLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->coverUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerSystemUIIndexMediatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotiCenterPluginProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotiCenterSettingsListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavbarBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerBinderProxyDumpHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$13900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    return-object p0
.end method

.method static synthetic access$14100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAssistManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideUiOffloadThreadProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$9900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;
    .locals 2

    .line 597
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 11

    .line 603
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->create(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 606
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideBgLooperFactory;

    move-result-object v0

    .line 605
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 609
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;

    move-result-object v0

    .line 608
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 612
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;->create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideLeakReportEmailFactory;

    move-result-object v0

    .line 611
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 613
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakReportEmailProvider:Ljavax/inject/Provider;

    .line 615
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/leak/LeakReporter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/LeakReporter_Factory;

    move-result-object v0

    .line 614
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 619
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->leakReporterProvider:Ljavax/inject/Provider;

    .line 621
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_Factory;

    move-result-object v0

    .line 620
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    .line 627
    invoke-static {}, Lcom/android/systemui/ActivityStarterDelegate_Factory;->create()Lcom/android/systemui/ActivityStarterDelegate_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 631
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 630
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvidePluginManagerFactory;

    move-result-object v0

    .line 629
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 632
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 634
    invoke-static {v0, v1}, Lcom/android/systemui/util/AsyncSensorManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/AsyncSensorManager_Factory;

    move-result-object v0

    .line 633
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->asyncSensorManagerProvider:Ljavax/inject/Provider;

    .line 639
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 638
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBgHandlerFactory;

    move-result-object v0

    .line 637
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 643
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 642
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideLocalBluetoothControllerFactory;

    move-result-object v0

    .line 641
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 644
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLocalBluetoothControllerProvider:Ljavax/inject/Provider;

    .line 646
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v0

    .line 645
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    .line 650
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 651
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    .line 652
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 653
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    .line 656
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;

    move-result-object v0

    .line 655
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 657
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 659
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl_Factory;

    move-result-object v0

    .line 658
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 661
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    .line 663
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl_Factory;

    move-result-object v0

    .line 662
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 667
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 669
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl_Factory;

    move-result-object v0

    .line 668
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 671
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 673
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/HotspotControllerImpl_Factory;

    move-result-object v0

    .line 672
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    .line 675
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 676
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CastControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 677
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 678
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    .line 679
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 680
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 683
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserSwitcherController_Factory;

    move-result-object v0

    .line 682
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 689
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 693
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 692
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideEnhancedEstimatesFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideEnhancedEstimatesFactory;

    move-result-object v0

    .line 691
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 694
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideEnhancedEstimatesProvider:Ljavax/inject/Provider;

    .line 696
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BatteryControllerImpl_Factory;

    move-result-object v0

    .line 695
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 701
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 700
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNightDisplayListenerFactory;

    move-result-object v0

    .line 699
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 703
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 705
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nextAlarmControllerImplProvider:Ljavax/inject/Provider;

    .line 709
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 708
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDataSaverControllerFactory;

    move-result-object v0

    .line 707
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    .line 710
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 711
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityControllerProvider:Ljavax/inject/Provider;

    .line 715
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 714
    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideAssistManagerFactory;

    move-result-object v0

    .line 713
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAssistManagerProvider:Ljavax/inject/Provider;

    .line 718
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 720
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SecurityControllerImpl_Factory;

    move-result-object v0

    .line 719
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->securityControllerImplProvider:Ljavax/inject/Provider;

    .line 722
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    .line 724
    invoke-static {v0, v1, v2}, Lcom/android/systemui/tuner/TunerServiceImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunerServiceImpl_Factory;

    move-result-object v0

    .line 723
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 726
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 727
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 728
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 729
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    .line 733
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 732
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;

    move-result-object v0

    .line 731
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 734
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 735
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    .line 736
    invoke-static {}, Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;->create()Lcom/android/systemui/keyguard/ScreenLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 737
    invoke-static {}, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->create()Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    .line 739
    invoke-static {p0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 741
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/fragments/FragmentService_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->fragmentServiceProvider:Ljavax/inject/Provider;

    .line 742
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideLeakDetectorProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 744
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl_Factory;

    move-result-object v0

    .line 743
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->extensionControllerImplProvider:Ljavax/inject/Provider;

    .line 750
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    .line 751
    invoke-static {v0}, Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/plugins/PluginDependencyProvider_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pluginDependencyProvider:Ljavax/inject/Provider;

    .line 752
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 753
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/volume/VolumeDialogControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->volumeDialogControllerImplProvider:Ljavax/inject/Provider;

    .line 756
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMetricsLoggerFactory;

    move-result-object v0

    .line 755
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMetricsLoggerProvider:Ljavax/inject/Provider;

    .line 757
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 758
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->accessibilityManagerWrapperProvider:Ljavax/inject/Provider;

    .line 759
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 761
    invoke-static {v0, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/colorextraction/SysuiColorExtractor_Factory;

    move-result-object v0

    .line 760
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    .line 763
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    .line 765
    invoke-static {v0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    move-result-object v0

    .line 764
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunablePaddingServiceProvider:Ljavax/inject/Provider;

    .line 768
    invoke-static {}, Lcom/android/systemui/ForegroundServiceController_Factory;->create()Lcom/android/systemui/ForegroundServiceController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 771
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideUiOffloadThreadFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideUiOffloadThreadFactory;

    move-result-object v0

    .line 770
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideUiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 772
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 774
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/power/PowerNotificationWarnings_Factory;

    move-result-object v0

    .line 773
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->powerNotificationWarningsProvider:Ljavax/inject/Provider;

    .line 776
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->darkIconDispatcherImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 778
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LightBarController_Factory;

    move-result-object v0

    .line 777
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lightBarControllerProvider:Ljavax/inject/Provider;

    .line 784
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIWindowManagerFactory;

    move-result-object v0

    .line 783
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 788
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 787
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideNavigationBarControllerFactory;

    move-result-object v0

    .line 786
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    .line 789
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideUiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 791
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NavigationModeController_Factory;

    move-result-object v0

    .line 790
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    .line 795
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->deviceProvisionedControllerImplProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavigationBarControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    .line 797
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/OverviewProxyService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/recents/OverviewProxyService_Factory;

    move-result-object v0

    .line 796
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    .line 803
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 804
    invoke-static {v0}, Lcom/android/systemui/statusbar/VibratorHelper_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/VibratorHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 807
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;

    move-result-object v0

    .line 806
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 810
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDisplayMetricsFactory;

    move-result-object v0

    .line 809
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 812
    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;->create()Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    .line 816
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 815
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideKeyguardEnvironmentFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideKeyguardEnvironmentFactory;

    move-result-object v0

    .line 814
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKeyguardEnvironmentProvider:Ljavax/inject/Provider;

    .line 820
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 819
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideShadeControllerFactory;

    move-result-object v0

    .line 818
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    .line 822
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 823
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    .line 825
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback_Factory;

    move-result-object v0

    .line 824
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarRemoteInputCallbackProvider:Ljavax/inject/Provider;

    .line 827
    invoke-static {}, Lcom/android/systemui/InitController_Factory;->create()Lcom/android/systemui/InitController_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->initControllerProvider:Ljavax/inject/Provider;

    .line 828
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    .line 830
    invoke-static {v0, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/appops/AppOpsControllerImpl_Factory;

    move-result-object v0

    .line 829
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 832
    invoke-static {}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;->create()Lcom/android/systemui/statusbar/StatusBarStateControllerImpl_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 836
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 835
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationLockscreenUserManagerFactory;

    move-result-object v0

    .line 834
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 838
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;->create()Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupAlertTransferHelperProvider:Ljavax/inject/Provider;

    .line 842
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 841
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationEntryManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationEntryManagerFactory;

    move-result-object v0

    .line 840
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 843
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 845
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager_Factory;

    move-result-object v0

    .line 844
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 847
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    .line 849
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager_Factory;

    move-result-object v0

    .line 848
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 852
    invoke-static {}, Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;->create()Lcom/android/systemui/statusbar/MediaArtworkProcessor_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 853
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mediaArtworkProcessorProvider:Ljavax/inject/Provider;

    .line 855
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationMediaManager_Factory;

    move-result-object v0

    .line 854
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationMediaManagerProvider:Ljavax/inject/Provider;

    .line 861
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 862
    invoke-static {v0}, Lcom/android/systemui/statusbar/AmbientPulseManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/AmbientPulseManager_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    .line 863
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 865
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/NotificationBlockingHelperManager_Factory;

    move-result-object v0

    .line 864
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationBlockingHelperManagerProvider:Ljavax/inject/Provider;

    .line 866
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 868
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SmartReplyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/SmartReplyController_Factory;

    move-result-object v0

    .line 867
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    .line 870
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 872
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager_Factory;

    move-result-object v0

    .line 871
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 879
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 881
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyConstants_Factory;

    move-result-object v0

    .line 880
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->smartReplyConstantsProvider:Ljavax/inject/Provider;

    .line 885
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 884
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationListenerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationListenerFactory;

    move-result-object v0

    .line 883
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 886
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideUiOffloadThreadProvider:Ljavax/inject/Provider;

    .line 887
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 888
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideUiOffloadThreadProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->expansionStateLoggerProvider:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_ExpansionStateLogger_Factory;

    .line 890
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger_Factory;

    move-result-object v0

    .line 889
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationLoggerProvider:Ljavax/inject/Provider;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 897
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleData_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleData_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    .line 898
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    .line 900
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController_Factory;

    move-result-object v0

    .line 899
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 902
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationLockscreenUserManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 904
    invoke-static/range {v1 .. v10}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/NotificationViewHierarchyManager_Factory;

    move-result-object v0

    .line 903
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationViewHierarchyManagerProvider:Ljavax/inject/Provider;

    .line 915
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;->create()Lcom/android/systemui/statusbar/notification/NotificationFilter_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationFilterProvider:Ljavax/inject/Provider;

    .line 919
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 918
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideNotificationInterruptionStateProviderFactory;

    move-result-object v0

    .line 917
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    .line 920
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;->create()Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 921
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    .line 923
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler_Factory;

    move-result-object v0

    .line 922
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->remoteInputQuickSettingsDisablerProvider:Ljavax/inject/Provider;

    .line 925
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleDataProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    .line 927
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/bubbles/BubbleController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/bubbles/BubbleController_Factory;

    move-result-object v0

    .line 926
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bubbleControllerProvider:Ljavax/inject/Provider;

    .line 934
    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->visualStabilityManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideShadeControllerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationInterruptionStateProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 936
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationAlertingManager_Factory;

    move-result-object v0

    .line 935
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationAlertingManagerProvider:Ljavax/inject/Provider;

    .line 947
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 946
    invoke-static {v0, v1}, Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSensorPrivacyManagerFactory;

    move-result-object v0

    .line 945
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSensorPrivacyManagerProvider:Ljavax/inject/Provider;

    .line 951
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 950
    invoke-static {v0, v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideAutoHideControllerFactory;

    move-result-object v0

    .line 949
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAutoHideControllerProvider:Ljavax/inject/Provider;

    .line 952
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNotificationEntryManagerProvider:Ljavax/inject/Provider;

    .line 954
    invoke-static {v0, v1, v2}, Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/ForegroundServiceNotificationListener_Factory;

    move-result-object v0

    .line 953
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->foregroundServiceNotificationListenerProvider:Ljavax/inject/Provider;

    .line 960
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideHandlerFactory;

    move-result-object v0

    .line 959
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideHandlerProvider:Ljavax/inject/Provider;

    .line 961
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->systemUIRootComponentProvider:Ljavax/inject/Provider;

    .line 963
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;

    move-result-object v0

    .line 962
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    .line 967
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 966
    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;->create(Lcom/android/systemui/SystemUIFactory;Ljavax/inject/Provider;)Lcom/android/systemui/SystemUIFactory_ProvideDockManagerFactory;

    move-result-object v0

    .line 965
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    .line 968
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->injectionInflationControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sysuiColorExtractorProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDockManagerProvider:Ljavax/inject/Provider;

    .line 970
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/keyguard/clock/ClockManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/clock/ClockManager_Factory;

    move-result-object v0

    .line 969
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->clockManagerProvider:Ljavax/inject/Provider;

    .line 979
    invoke-static {p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object p1

    .line 978
    invoke-static {p1}, Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideActivityManagerWrapperFactory;

    move-result-object p1

    .line 977
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideActivityManagerWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private initialize2(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)V
    .locals 23

    move-object/from16 v0, p0

    .line 987
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 986
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDevicePolicyManagerWrapperFactory;

    move-result-object v1

    .line 985
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDevicePolicyManagerWrapperProvider:Ljavax/inject/Provider;

    .line 991
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 990
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvidePackageManagerWrapperFactory;

    move-result-object v1

    .line 989
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePackageManagerWrapperProvider:Ljavax/inject/Provider;

    .line 992
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 993
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sensorPrivacyControllerImplProvider:Ljavax/inject/Provider;

    .line 994
    invoke-static {}, Lcom/android/systemui/DumpController_Factory;->create()Lcom/android/systemui/DumpController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 998
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 997
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideINotificationManagerFactory;

    move-result-object v1

    .line 996
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 999
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideINotificationManagerProvider:Ljavax/inject/Provider;

    .line 1001
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController_Factory;

    move-result-object v1

    .line 1000
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->channelEditorDialogControllerProvider:Ljavax/inject/Provider;

    .line 1003
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 1005
    invoke-static {v1, v2, v3}, Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/FalsingManagerProxy_Factory;

    move-result-object v1

    .line 1004
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->falsingManagerProxyProvider:Ljavax/inject/Provider;

    .line 1010
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1009
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideSettingsHelperFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSettingsHelperFactory;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    .line 1013
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1012
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDesktopManagerProvider:Lcom/android/systemui/DependencyProvider_ProvideDesktopManagerFactory;

    .line 1016
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideDebugLooperFactory;

    move-result-object v1

    .line 1015
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDebugLooperProvider:Ljavax/inject/Provider;

    .line 1020
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDebugLooperProvider:Ljavax/inject/Provider;

    .line 1019
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideDebugLogStoreFactory;

    move-result-object v1

    .line 1018
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDebugLogStoreProvider:Ljavax/inject/Provider;

    .line 1024
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1023
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideKnoxStateMonitorFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideKnoxStateMonitorFactory;

    move-result-object v1

    .line 1022
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1026
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator_Factory;->create()Lcom/android/systemui/statusbar/phone/StatusBarKnoxMediator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarKnoxMediatorProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1029
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideFaceWidgetControllerFactory;

    move-result-object v1

    .line 1028
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideFaceWidgetControllerProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1033
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideSPluginManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideSPluginManagerFactory;

    move-result-object v1

    .line 1032
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSPluginManagerProvider:Ljavax/inject/Provider;

    .line 1035
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSPluginManagerProvider:Ljavax/inject/Provider;

    .line 1037
    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;->create(Ljavax/inject/Provider;)Lcom/samsung/systemui/splugins/SPluginDependencyProvider_Factory;

    move-result-object v1

    .line 1036
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->sPluginDependencyProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1040
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProvideBixbyInteractorFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideBixbyInteractorFactory;

    move-result-object v1

    .line 1039
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBixbyInteractorProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1044
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderNotificationColorPickerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderNotificationColorPickerFactory;

    move-result-object v1

    .line 1043
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotificationColorPickerProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1048
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderLockscreenNotificationManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderLockscreenNotificationManagerFactory;

    move-result-object v1

    .line 1047
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerLockscreenNotificationManagerProvider:Ljavax/inject/Provider;

    .line 1053
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1052
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderNavbarStoreFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderNavbarStoreFactory;

    move-result-object v1

    .line 1051
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNavbarStoreProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-static {}, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;->create()Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSClockBellTowerProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter_Factory;->create()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->indicatorGardenPresenterProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-static {}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator_Factory;->create()Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->slimIndicatorViewMediatorProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-static {}, Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;->create()Lcom/android/systemui/qscoloring/SecQSColoringPresenterImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->secQSColoringPresenterImplProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController_Factory;->create()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->twoPhoneModeControllerProvider:Ljavax/inject/Provider;

    .line 1066
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1065
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderIntegrityVerifierFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderIntegrityVerifierFactory;

    move-result-object v1

    .line 1064
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerIntegrityVerifierProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1069
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderShortcutManagerFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderShortcutManagerFactory;

    move-result-object v1

    .line 1068
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerShortcutManagerProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    .line 1073
    invoke-static {v1, v2}, Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderDisplayLifecycleFactory;

    move-result-object v1

    .line 1072
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerDisplayLifecycleProvider:Ljavax/inject/Provider;

    .line 1075
    invoke-static {}, Lcom/android/systemui/util/CoverUtil_Factory;->create()Lcom/android/systemui/util/CoverUtil_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->coverUtilProvider:Ljavax/inject/Provider;

    .line 1076
    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1077
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/qs/tiles/WifiTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    .line 1086
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    .line 1094
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1095
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/CellularTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    .line 1099
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->zenModeControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1100
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/DndTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DndTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    .line 1105
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    .line 1113
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    .line 1116
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1117
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    .line 1122
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1123
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    .line 1127
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationControllerImplProvider:Lcom/android/systemui/statusbar/policy/LocationControllerImpl_Factory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1128
    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/qs/tiles/LocationTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    .line 1133
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/CastTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/CastTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    .line 1140
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    .line 1141
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/qs/tiles/HotspotTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    .line 1148
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideSettingsHelperProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->activityStarterDelegateProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->keyguardMonitorImplProvider:Ljavax/inject/Provider;

    .line 1149
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/qs/tiles/MobileDataTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/MobileDataTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mobileDataTileProvider:Lcom/android/systemui/qs/tiles/MobileDataTile_Factory;

    .line 1155
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userInfoControllerImplProvider:Ljavax/inject/Provider;

    .line 1156
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UserTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UserTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    .line 1160
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1161
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    .line 1163
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->networkControllerImplProvider:Ljavax/inject/Provider;

    .line 1164
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    .line 1166
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    .line 1167
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1168
    invoke-static {v1}, Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    .line 1169
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideConfigurationControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batteryControllerImplProvider:Ljavax/inject/Provider;

    .line 1170
    invoke-static {v1, v2, v3}, Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    .line 1174
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/SoundModeTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->soundModeTileProvider:Lcom/android/systemui/qs/tiles/SoundModeTile_Factory;

    .line 1175
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideKnoxStateMonitorProvider:Ljavax/inject/Provider;

    .line 1176
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/BlueLightFilterTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->blueLightFilterTileProvider:Lcom/android/systemui/qs/tiles/BlueLightFilterTile_Factory;

    .line 1178
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1179
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/ScreenCaptureTile_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenCaptureTileProvider:Lcom/android/systemui/qs/tiles/ScreenCaptureTile_Factory;

    .line 1180
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->wifiTileProvider:Lcom/android/systemui/qs/tiles/WifiTile_Factory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->bluetoothTileProvider:Lcom/android/systemui/qs/tiles/BluetoothTile_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->cellularTileProvider:Lcom/android/systemui/qs/tiles/CellularTile_Factory;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dndTileProvider:Lcom/android/systemui/qs/tiles/DndTile_Factory;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->airplaneModeTileProvider:Lcom/android/systemui/qs/tiles/AirplaneModeTile_Factory;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->workModeTileProvider:Lcom/android/systemui/qs/tiles/WorkModeTile_Factory;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->rotationLockTileProvider:Lcom/android/systemui/qs/tiles/RotationLockTile_Factory;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->flashlightTileProvider:Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->locationTileProvider:Lcom/android/systemui/qs/tiles/LocationTile_Factory;

    iget-object v11, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castTileProvider:Lcom/android/systemui/qs/tiles/CastTile_Factory;

    iget-object v12, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotTileProvider:Lcom/android/systemui/qs/tiles/HotspotTile_Factory;

    iget-object v13, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->mobileDataTileProvider:Lcom/android/systemui/qs/tiles/MobileDataTile_Factory;

    iget-object v14, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->userTileProvider:Lcom/android/systemui/qs/tiles/UserTile_Factory;

    iget-object v15, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->batterySaverTileProvider:Lcom/android/systemui/qs/tiles/BatterySaverTile_Factory;

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dataSaverTileProvider:Lcom/android/systemui/qs/tiles/DataSaverTile_Factory;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->nightDisplayTileProvider:Lcom/android/systemui/qs/tiles/NightDisplayTile_Factory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->memoryTileProvider:Lcom/android/systemui/util/leak/GarbageMonitor_MemoryTile_Factory;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->uiModeNightTileProvider:Lcom/android/systemui/qs/tiles/UiModeNightTile_Factory;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->soundModeTileProvider:Lcom/android/systemui/qs/tiles/SoundModeTile_Factory;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->blueLightFilterTileProvider:Lcom/android/systemui/qs/tiles/BlueLightFilterTile_Factory;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->screenCaptureTileProvider:Lcom/android/systemui/qs/tiles/ScreenCaptureTile_Factory;

    move-object/from16 v22, v1

    .line 1182
    invoke-static/range {v2 .. v22}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tileimpl/QSFactoryImpl_Factory;

    move-result-object v1

    .line 1181
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    .line 1204
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    invoke-static {v1}, Lcom/android/systemui/qs/AutoAddTracker_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/AutoAddTracker_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    .line 1205
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoAddTrackerProvider:Lcom/android/systemui/qs/AutoAddTracker_Factory;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->hotspotControllerImplProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideDataSaverControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->managedProfileControllerImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNightDisplayListenerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->castControllerImplProvider:Ljavax/inject/Provider;

    .line 1206
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    .line 1216
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    check-cast v1, Ldagger/internal/DelegateFactory;

    .line 1217
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarIconControllerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSFactoryImplProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideBgLooperProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providePluginManagerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->tunerServiceImplProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->autoTileManagerProvider:Lcom/android/systemui/statusbar/phone/AutoTileManager_Factory;

    iget-object v10, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->dumpControllerProvider:Ljavax/inject/Provider;

    .line 1219
    invoke-static/range {v2 .. v10}, Lcom/android/systemui/qs/QSTileHost_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSTileHost_Factory;

    move-result-object v2

    .line 1218
    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1229
    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    invoke-virtual {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegatedProvider(Ljavax/inject/Provider;)V

    .line 1233
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->qSTileHostProvider:Ljavax/inject/Provider;

    .line 1232
    invoke-static {v1, v2, v3}, Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;->create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProviderSystemUIIndexMediatorFactory;

    move-result-object v1

    .line 1231
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerSystemUIIndexMediatorProvider:Ljavax/inject/Provider;

    .line 1236
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProviderNotiCenterPluginFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProviderNotiCenterPluginFactory;

    move-result-object v1

    .line 1235
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotiCenterPluginProvider:Ljavax/inject/Provider;

    .line 1240
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1239
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProviderNotiCenterSettingsListenerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProviderNotiCenterSettingsListenerFactory;

    move-result-object v1

    .line 1238
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerNotiCenterSettingsListenerProvider:Ljavax/inject/Provider;

    .line 1243
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProvideNavbarBgHandlerFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideNavbarBgHandlerFactory;

    move-result-object v1

    .line 1242
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideNavbarBgHandlerProvider:Ljavax/inject/Provider;

    .line 1247
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/DependencyProvider;

    move-result-object v1

    .line 1246
    invoke-static {v1}, Lcom/android/systemui/DependencyProvider_ProviderBinderProxyDumpHelperFactory;->create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProviderBinderProxyDumpHelperFactory;

    move-result-object v1

    .line 1245
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->providerBinderProxyDumpHelperProvider:Ljavax/inject/Provider;

    .line 1248
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1250
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator_Factory;

    move-result-object v1

    .line 1249
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 1254
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideContextProvider:Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;

    iget-object v2, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationWakeUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 1256
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/PulseExpansionHandler_Factory;

    move-result-object v1

    .line 1255
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->pulseExpansionHandlerProvider:Ljavax/inject/Provider;

    .line 1258
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->contextHolder:Lcom/android/systemui/SystemUIFactory$ContextHolder;

    .line 1262
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->access$300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;)Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    .line 1261
    invoke-static {v1}, Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;->create(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/SystemUIFactory_ProvideAllowNotificationLongPressFactory;

    move-result-object v1

    .line 1260
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->provideAllowNotificationLongPressProvider:Ljavax/inject/Provider;

    .line 1263
    iget-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->ambientPulseManagerProvider:Ljavax/inject/Provider;

    .line 1265
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;->create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager_Factory;

    move-result-object v1

    .line 1264
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->notificationRoundnessManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
    .locals 2

    .line 1275
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$DependencyInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
    .locals 2

    .line 1285
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$FragmentCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
    .locals 0

    .line 1270
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->garbageMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/GarbageMonitor;

    return-object p0
.end method

.method public createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
    .locals 2

    .line 1290
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
    .locals 2

    .line 1280
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method

.method public registerInjector()Lcom/android/systemui/util/InjectionInflationController$Register;
    .locals 2

    .line 1295
    new-instance v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$RegisterImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V

    return-object v0
.end method
