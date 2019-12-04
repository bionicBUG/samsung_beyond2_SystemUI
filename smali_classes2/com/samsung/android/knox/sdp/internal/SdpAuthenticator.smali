.class public Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
.super Ljava/lang/Object;
.source "SdpAuthenticator.java"


# static fields
.field private static sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;


# instance fields
.field private mSdpService:Landroid/os/ISdpManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sdp"

    .line 21
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    invoke-direct {v1}, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;

    .line 28
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->sInstance:Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onBiometricsAuthenticated(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/ISdpManagerService;->onBiometricsAuthenticated(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SdpAuthenticator"

    const-string v0, "Failed to call SDP API"

    .line 38
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0xd

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 42
    :cond_1
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p1
.end method

.method public onDeviceOwnerLocked(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/knox/sdp/core/SdpException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/samsung/android/knox/sdp/internal/SdpAuthenticator;->mSdpService:Landroid/os/ISdpManagerService;

    if-eqz p0, :cond_0

    .line 51
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/ISdpManagerService;->onDeviceOwnerLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SdpAuthenticator"

    const-string v0, "Failed to call SDP API"

    .line 54
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 p0, -0xd

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 58
    :cond_1
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpException;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/sdp/core/SdpException;-><init>(I)V

    throw p1
.end method
