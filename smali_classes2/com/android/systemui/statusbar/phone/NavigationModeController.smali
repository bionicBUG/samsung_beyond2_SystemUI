.class public Lcom/android/systemui/statusbar/phone/NavigationModeController;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;,
        Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationModeController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mIsNavbarCanMove:Z

.field private mLastDefaultLauncher:Ljava/lang/String;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field mOverlayHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

.field private mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/UiOffloadThread;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    .line 108
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 116
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mIsNavbarCanMove:Z

    .line 117
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    .line 134
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 220
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 221
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v1, "overlay"

    .line 223
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    move-object/from16 v1, p3

    .line 224
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    move-object/from16 v1, p2

    .line 225
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 226
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 228
    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 229
    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android"

    .line 230
    invoke-virtual {v7, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 231
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 233
    new-instance v13, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v13, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 237
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    .line 239
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchToBottomGestureModeIfFullscreenGestureUserInP()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationModeController;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->deferGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotificationIfDefaultLauncherSupportsGestureNav()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationModeController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->restoreButtonModeIfNecessary()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->restoreGesturalModeIfNecessary()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->restoreGesturalNavOverlayIfNecessary()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateInteractionModeAsOwnerUser()V

    return-void
.end method

.method private deferGesturalNavOverlayIfNecessary()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 345
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v2}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v3, "deferGesturalNavOverlayIfNecessary: failed to fetch default overlays"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "com.android.internal.systemui.navbar.gestural"

    .line 360
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    .line 371
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->DEFER_GESTURE_OVERLAY_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private dumpAssetPaths(Landroid/content/Context;)V
    .locals 5

    .line 737
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "assetPaths="

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    .line 739
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    .line 740
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCurrentInteractionMode(Landroid/content/Context;)I
    .locals 0

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e00ae

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method private getCurrentNavbarCanMoveState(Landroid/content/Context;)Z
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11100a9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 518
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 527
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 528
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 530
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private isSupportGestureRestore(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.sec.android.emergencylauncher"

    .line 547
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.sec.android.app.kidshome"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 556
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p1, p1, 0x81

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    :catch_0
    :cond_0
    return p0
.end method

.method static synthetic lambda$updateCurrentInteractionMode$0(Landroid/content/om/OverlayInfo;)Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->getCategory()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.internal.navigation_bar_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateCurrentInteractionMode$1(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 260
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private makeOverlayHistory(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V
    .locals 6

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    const-string v1, "navigation_mode_controller_preferences"

    const/4 v2, 0x0

    .line 709
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "switched_from_gesture_on_restore_support_launcher"

    .line 710
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 711
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 712
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "prev_overlay_package_to_restore"

    const-string v4, "com.android.internal.systemui.navbar.threebutton"

    .line 713
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UserId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OverlayPkg= "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " OverlayReason= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " defaultLauncher= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " previouslySwitchedOnRestoreLauncher= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " restoreOverlay= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->makeTime()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-le p1, p2, :cond_0

    .line 725
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeTime()Ljava/lang/String;
    .locals 3

    .line 730
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb

    .line 732
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc

    .line 733
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "%02d:%02d:%02d.%03d"

    .line 732
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private restoreButtonModeIfNecessary()V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureWhileHidden(Z)V

    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, -0x2

    .line 648
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_BUTTON_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    :cond_0
    return-void
.end method

.method private restoreGesturalModeIfNecessary()V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 654
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureWhileHidden(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-static {v1, p0}, Lcom/android/systemui/statusbar/phone/util/NavigationModeUtil;->setNavigationMode(ZLcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    :cond_1
    return-void

    .line 656
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "restoreGesturalModeIfNecessary deviceProvisioned and userSetupComplete not complete"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreGesturalNavOverlayIfNecessary()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    .line 386
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const-string v3, "com.android.internal.systemui.navbar.gestural"

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    .line 387
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method private showNotification(Landroid/content/Context;I)V
    .locals 2

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 568
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 571
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$drawable;->ic_info:I

    .line 572
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p2, 0x1

    .line 573
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.NAVIGATION_BAR_SETTING"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 574
    invoke-static {p1, v0, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 575
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sget-object p2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private showNotificationIfDefaultLauncherSupportsGestureNav()V
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v1, "navigation_mode_controller_preferences"

    const/4 v2, 0x0

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "switched_from_gesture_nav"

    .line 494
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchToGestureNavModeIfNeedRestore()Z

    move-result v0

    .line 502
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 503
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->notification_content_gesture_nav_available:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotification(Landroid/content/Context;I)V

    .line 509
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 510
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_0
    return-void
.end method

.method private switchFromGestureNavModeIfNotSupportedByDefaultLauncher()V
    .locals 10

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isGestureNavSupportedByDefaultLauncher(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 421
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isSupportGestureRestore(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getDefaultLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 433
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->isSupportGestureRestore(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    move v3, v1

    goto :goto_1

    .line 438
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    return-void

    :cond_5
    move v3, v2

    .line 444
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    const-string v5, "navigation_mode_controller_preferences"

    .line 445
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "com.android.internal.systemui.navbar.threebutton"

    const-string v7, "applied_navbar_overlay_package"

    .line 446
    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switching system navigation to 3-button mode: defaultLauncher="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " currentOverlay="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " contextUser="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 450
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 452
    sget-object v7, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_FROM_GESTURE_MODE_IF_NOT_SUPPORTED_BY_DEFAULT_LAUNCHER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v6, v0, v7}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    .line 453
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_6

    .line 454
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureWhileHidden(Z)V

    :cond_6
    if-eqz v3, :cond_7

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "switched_from_gesture_on_restore_support_launcher"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "prev_overlay_package_to_restore"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 462
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_content_system_nav_changed:I

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->showNotification(Landroid/content/Context;I)V

    .line 464
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 465
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "switched_from_gesture_nav"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private switchToBottomGestureModeIfFullscreenGestureUserInP()V
    .locals 3

    .line 584
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v0

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mRestoreGesturalNavBarMode:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "navigation_mode_controller_preferences"

    .line 590
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "switched_from_gesture_nav"

    .line 591
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 595
    :cond_1
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 596
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    .line 597
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureDetailType(I)V

    .line 598
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.internal.systemui.navbar.sec_gestural"

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.internal.systemui.navbar.sec_gestural_no_hint"

    :goto_0
    const/4 v1, -0x2

    .line 601
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_BOTTOM_GESTURE_FOR_Q_OS_UPGRADE_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    :cond_3
    return-void
.end method

.method private switchToGestureNavModeIfNeedRestore()Z
    .locals 7

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    const-string v1, "navigation_mode_controller_preferences"

    const/4 v2, 0x0

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "switched_from_gesture_on_restore_support_launcher"

    .line 471
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "prev_overlay_package_to_restore"

    const-string v5, "com.android.internal.systemui.navbar.threebutton"

    .line 476
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 478
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 480
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eq v0, v5, :cond_0

    .line 482
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v2, "Restore gesture from 3 button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 483
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_GESTURE_MODE_IF_NEED_RESTORE:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    .line 484
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarGestureWhileHidden(Z)V

    return v0

    :cond_0
    return v2
.end method

.method private updateInteractionModeAsOwnerUser()V
    .locals 6

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 613
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "updateInteractionModeAsOwnerUser switch to owner user"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    .line 618
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 619
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "navigation_mode_controller_preferences"

    .line 630
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "com.android.internal.systemui.navbar.threebutton"

    const-string v4, "applied_navbar_overlay_package"

    .line 631
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v5

    .line 634
    invoke-virtual {v5, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 635
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 638
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInteractionModeAsOwnerUser mode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 639
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    :cond_2
    return-void

    .line 621
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v2, "updateInteractionModeAsOwnerUser deviceProvisioned and userSetupComplete fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 622
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 623
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 624
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mSecRestoreGesturalNavbarMode:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p1, "NavigationModeController:"

    .line 671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string p1, ", "

    .line 675
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p3}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed_to_fetch"

    .line 679
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  defaultOverlays="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  defaultLauncher="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mLastDefaultLauncher:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string p3, "navigation_mode_controller_preferences"

    const/4 v0, 0x0

    .line 684
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "switched_from_gesture_nav"

    .line 685
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  previouslySwitchedFromGestureNav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz p1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 689
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "switched_from_gesture_on_restore_support_launcher"

    .line 690
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 692
    invoke-virtual {v1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v1, "prev_overlay_package_to_restore"

    const-string v2, "com.android.internal.systemui.navbar.threebutton"

    .line 693
    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  previouslySwitchedOnRestoreLauncher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  restoreOverlay="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  navbarCanMove="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mIsNavbarCanMove:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 699
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOverlayHistoryList.size="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    if-ge v0, p1, :cond_0

    .line 701
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public getCurrentUserContext()Landroid/content/Context;
    .locals 3

    .line 324
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    return-object p0

    .line 333
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 334
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 333
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$setModeOverlay$3$NavigationModeController(Ljava/lang/String;I)V
    .locals 2

    .line 401
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to enable overlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateCurrentInteractionMode$2$NavigationModeController(I)V
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 275
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "navigation_mode"

    .line 274
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setModeOverlay(Ljava/lang/String;I)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$bhPvcqxbgDIp32uvCdWHJwFenSw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$bhPvcqxbgDIp32uvCdWHJwFenSw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setModeOverlay(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V
    .locals 1

    .line 392
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p2, p1, p3}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->makeOverlayHistory(ILjava/lang/String;Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;)V

    .line 395
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->setModeOverlay(Ljava/lang/String;I)V

    return-void
.end method

.method public updateCurrentInteractionMode(Z)V
    .locals 6

    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    .line 251
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mMode:I

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentNavbarCanMoveState(Landroid/content/Context;)Z

    move-result v1

    .line 254
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mIsNavbarCanMove:Z

    const/4 v2, 0x0

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v4, "android"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 258
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$iT5ZTkOOiDXAo1a2aur9uqM779c;

    .line 259
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$fMqMRl7uxD_c2KyRNK9cL2ld1qI;

    .line 260
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 261
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    if-eqz v3, :cond_0

    .line 264
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string v5, "navigation_mode_controller_preferences"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 265
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "applied_navbar_overlay_package"

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v4, "updateCurrentInteractionMode fail to get overlay package"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$mg7ApJ1zDjNs7qhdk4CxBSsPPeo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_1

    .line 284
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;->onNavigationCanMoveChanged(Z)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
