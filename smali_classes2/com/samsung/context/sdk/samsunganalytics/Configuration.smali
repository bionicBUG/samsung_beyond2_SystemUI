.class public Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private auidType:I

.field private dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

.field private deviceId:Ljava/lang/String;

.field private enableAutoDeviceId:Z

.field private enableFastReady:Z

.field private enableUseInAppLogging:Z

.field private isAlwaysRunningApp:Z

.field private networkTimeoutInMilliSeconds:I

.field private overrideIp:Ljava/lang/String;

.field private queueSize:I

.field private restrictedNetworkType:I

.field private trackingId:Ljava/lang/String;

.field private useAnonymizeIp:Z

.field private userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

.field private userId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    .line 31
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->useAnonymizeIp:Z

    .line 33
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    .line 41
    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->restrictedNetworkType:I

    .line 42
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkTimeoutInMilliSeconds:I

    .line 43
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->queueSize:I

    return-void
.end method


# virtual methods
.method public enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return-object p0
.end method

.method public getAuidType()I
    .locals 0

    .line 216
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return p0
.end method

.method public getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    return-object p0
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    if-nez v0, :cond_3

    const-string v0, "content://com.sec.android.log.diagmonagent.sa/deviceid"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 63
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    if-eqz v1, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :catch_0
    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_3
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkTimeoutInMilliSeconds()I
    .locals 0

    .line 188
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkTimeoutInMilliSeconds:I

    return p0
.end method

.method public getOverrideIp()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->overrideIp:Ljava/lang/String;

    return-object p0
.end method

.method public getQueueSize()I
    .locals 0

    .line 197
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->queueSize:I

    return p0
.end method

.method public getRestrictedNetworkType()I
    .locals 0

    .line 226
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->restrictedNetworkType:I

    return p0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method

.method public isAlwaysRunningApp()Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return p0
.end method

.method public isEnableAutoDeviceId()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return p0
.end method

.method public isEnableFastReady()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    return p0
.end method

.method public isEnableUseInAppLogging()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    return p0
.end method

.method public isUseAnonymizeIp()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->useAnonymizeIp:Z

    return p0
.end method

.method public setAlwaysRunningApp(Z)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return-object p0
.end method

.method public setAuidType(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method
