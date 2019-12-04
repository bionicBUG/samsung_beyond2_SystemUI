.class public abstract Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;
.super Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;
.source "AbstractMasterLogProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;-><init>()V

    return-void
.end method

.method private enforceAgreement()V
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->isAgreed()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Permission Denial"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 304
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    invoke-virtual {p0, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 298
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 299
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 0

    .line 292
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 293
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->enforceSelfOrSystem()V

    const-string v0, "get"

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "agreed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->isAgreed()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    .line 370
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "registered"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->enforceAgreement()V

    .line 373
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method protected abstract isAgreed()Z
.end method

.method public onCreate()Z
    .locals 4

    .line 273
    invoke-super {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->onCreate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "registered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "pushRegistered"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "tryRegistering"

    invoke-direct {p0, v2, v1}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    const-string v2, "nonce"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setAuthorityList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeAuthorityListBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authorityList"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 281
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setServiceName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "serviceName"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDefaultMO()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "defaultMO"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setDeviceInfo()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "deviceInfo"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setUploadWiFiOnly()Z

    move-result v2

    const-string v3, "uploadWifionly"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractLogProvider;->data:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->setSupportPush()Z

    move-result v2

    const-string v3, "supportPush"

    invoke-direct {p0, v3, v2}, Lcom/sec/android/diagmonagent/log/provider/v1/AbstractMasterLogProvider;->makeBundle(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

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

.method protected abstract setDefaultMO()Landroid/os/Bundle;
.end method

.method protected setDeviceId()Ljava/lang/String;
    .locals 0

    .line 316
    sget-object p0, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->getTWID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected setDeviceInfo()Landroid/os/Bundle;
    .locals 1

    .line 325
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->instance:Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/diagmonagent/log/provider/v1/PackageInformation;->getDeviceInfoBundle(Landroid/content/Context;)Landroid/os/Bundle;

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
