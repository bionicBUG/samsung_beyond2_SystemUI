.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
.source "DualDarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# instance fields
.field private mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;-><init>()V

    .line 69
    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    .line 70
    new-instance p1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;Lcom/samsung/android/knox/ddar/DualDarClientManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    .line 65
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-object p0
.end method


# virtual methods
.method public initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 78
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->establishSecureSession()V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "DualDarClientManager"

    const-string p1, "initializeSecureSession failed!"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAgentReconnected()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string p0, "DualDarClientManager"

    const-string v0, "onAgentReconnected!"

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->onAgentReconnected()V

    return-void
.end method

.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 94
    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->teardownSecureSession()V

    .line 97
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "DualDarClientManager"

    const-string p1, "terminateSecureSession failed!"

    .line 100
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
