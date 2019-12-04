.class public Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
.super Ljava/lang/Object;
.source "PrivateCustomDeviceManager.java"


# static fields
.field private static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field private static gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

.field private static mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    const-string v0, "com.samsung.android.hostmanager"

    const-string v1, "com.samsung.android.gear1plugin"

    const-string v2, "com.samsung.android.wms"

    .line 67
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;
    .locals 2

    .line 92
    sget-object v0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    .line 96
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 99
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->gPrivateCustomDeviceManager:Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method


# virtual methods
.method public registerSystemUICallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateCustomDeviceManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "PrivateCustomDeviceManager"

    const-string v0, "Failed talking with KnoxCustomManager service"

    .line 113
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
