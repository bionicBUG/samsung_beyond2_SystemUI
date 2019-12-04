.class public Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mExtData:Lorg/json/JSONObject;

.field private mLogPath:Ljava/lang/String;

.field private mNetworkMode:Z

.field private mRelayClientType:Ljava/lang/String;

.field private mRelayClientVer:Ljava/lang/String;

.field private mServiceDefinedKey:Ljava/lang/String;

.field private mZipFile:Ljava/lang/String;

.field private oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;


# direct methods
.method private isConfigured()Z
    .locals 0

    .line 296
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getResultCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mExtData:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkMode()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getWifiOnly()Z

    move-result p0

    return p0

    .line 131
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mNetworkMode:Z

    return p0
.end method

.method public getRelayClientType()Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getRelayClient()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientType:Ljava/lang/String;

    return-object p0
.end method

.method public getRelayClientVer()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getRelayClientVer()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mRelayClientVer:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceDefinedKey()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->oldIb:Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder$oldEventBuilder;->getEventId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mServiceDefinedKey:Ljava/lang/String;

    return-object p0
.end method

.method public getZipPath()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mZipFile:Ljava/lang/String;

    return-object p0
.end method

.method public makeLogList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLogPath(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLogPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getOldConfig()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mLogPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->makeLogList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->setLogList(Ljava/util/List;)V

    .line 69
    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getElp()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;->setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    nop

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setZipFilePath(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mZipFile:Ljava/lang/String;

    return-void
.end method
