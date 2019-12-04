.class public Lcom/samsung/android/knox/ddar/DualDARManager;
.super Ljava/lang/Object;
.source "DualDARManager.java"


# static fields
.field private static final DEBUG:Z

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSecureClientOutAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/ddar/DualDARManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ddar/DualDARManager;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/samsung/android/knox/ddar/DualDARManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ddar/DualDARManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;

    .line 90
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDARManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 249
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object p0

    const-string v0, "KNOXCORE_PROXY_AGENT"

    const-string v1, "DUALDAR_MGR_SERVICE"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->relayMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method bindClient(Lcom/samsung/android/knox/ddar/IDualDARClient;)Landroid/os/IBinder;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;

    move-result-object p0

    return-object p0
.end method

.method establishSecureSession()V
    .locals 4

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const-string v1, "DUAL_DAR_CLIENT"

    const-string v2, "KNOXCORE_PROXY_AGENT"

    const-string v3, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->initializeSecureSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DualDarManager"

    const-string v1, "Failed to establish secure connection from SDK to KnoxCore"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method onAgentReconnected()V
    .locals 2

    const-string v0, "ON_AGENT_RECONNECTED"

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/ddar/DualDARManager;->processCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method teardownSecureSession()V
    .locals 4

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    const-string v2, "KNOXCORE_PROXY_AGENT"

    const-string v3, "DUALDAR_MGR_SERVICE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->terminateSecureSession(Lcom/samsung/android/knox/ddar/securesession/SecureClient;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/DualDARManager;->mSecureClientOutAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DualDarManager"

    const-string v1, "Failed to teardown secure connection from SDK to KnoxCore"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
