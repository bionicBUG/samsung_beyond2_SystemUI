.class public Lcom/samsung/android/knox/custom/SystemManager;
.super Ljava/lang/Object;
.source "SystemManager.java"


# static fields
.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/SystemManager;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-class v0, Lcom/samsung/android/knox/custom/SystemManager;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/samsung/android/knox/custom/SystemManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/SystemManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    .line 94
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 97
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/SystemManager;->sSystemManager:Lcom/samsung/android/knox/custom/SystemManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 80
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method


# virtual methods
.method public getLockScreenOverrideMode()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1633
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1635
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SystemManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 1637
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    .line 1787
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1789
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SystemManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 1791
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1749
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1751
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SystemManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 1753
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getPowerMenuLockedState()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 838
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SystemManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 840
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SystemManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SystemManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 842
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
