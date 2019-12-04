.class public Lcom/samsung/android/knox/custom/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field private static sContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private static sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;


# instance fields
.field private mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knox/custom/SettingsManager;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-class v0, Lcom/samsung/android/knox/custom/SettingsManager;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/samsung/android/knox/custom/SettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/knox/custom/SettingsManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;

    .line 85
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    if-nez v1, :cond_1

    .line 86
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 88
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/custom/SettingsManager;->sSettingsManager:Lcom/samsung/android/knox/custom/SettingsManager;
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

    .line 70
    iget-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 71
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method


# virtual methods
.method public getScreenWakeupOnPowerState()Z
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SettingsManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 661
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getSettingsHiddenState()I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/SettingsManager;->getService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/SettingsManager;->mService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SettingsManager"

    const-string v1, "Failed talking with KnoxCustomManager service"

    .line 331
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
