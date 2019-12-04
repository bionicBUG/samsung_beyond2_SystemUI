.class public abstract Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;
.source "newAbstractMasterLogProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;-><init>()V

    return-void
.end method

.method private enforceAgreement()V
    .locals 0

    return-void
.end method

.method private makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 290
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-virtual {p0, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 284
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 0

    .line 278
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 279
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->enforceSelfOrSystem()V

    const-string v0, "get"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->enforceAgreement()V

    .line 359
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()Z
    .locals 4

    .line 235
    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 238
    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "registered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 240
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "tryRegistering"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 241
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "nonce"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 243
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setAuthorityList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authorityList"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 244
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serviceName"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 245
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setDeviceInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "deviceInfo"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 248
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setUploadWiFiOnly()Z

    move-result v2

    const-string v3, "uploadWifionly"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 249
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->setSupportPush()Z

    move-result v2

    const-string v3, "supportPush"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->setLogList()Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 253
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v3, "logList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->setPlainLogList()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0

    .line 257
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "plainLogList"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return v1
.end method

.method protected abstract setAuthorityList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 3

    .line 263
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getAuthorityList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authorityList"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 264
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getServiceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serviceName"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 266
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgree()Z

    move-result v1

    const-string v2, "agreed"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->getLogList()Ljava/util/List;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    .line 270
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v1, "logList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->setPlainLogList()Ljava/util/List;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->makeLogListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0

    .line 274
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/newAbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v0, "plainLogList"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 0

    .line 302
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->getTWID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected setDeviceInfo()Landroid/os/Bundle;
    .locals 1

    .line 311
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/diagmonagent/log/provider/newPackageInformation;->getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected abstract setServiceName()Ljava/lang/String;
.end method

.method protected setSupportPush()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected setUploadWiFiOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
