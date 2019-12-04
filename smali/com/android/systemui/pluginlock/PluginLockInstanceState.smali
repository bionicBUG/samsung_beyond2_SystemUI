.class public Lcom/android/systemui/pluginlock/PluginLockInstanceState;
.super Ljava/lang/Object;
.source "PluginLockInstanceState.java"


# instance fields
.field private mAllowedNumber:I

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

.field private mGson:Lcom/google/gson/Gson;

.field private mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private mIsDestroyed:Z

.field private mMode:I

.field private mPackageName:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginLockInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 49
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    .line 52
    :try_start_0
    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getServiceType()I

    move-result p1

    if-nez p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PluginLockInstanceState mPackageName["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PluginLockInstanceState Throwable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result p1

    const/16 p2, 0x44c

    if-lt p1, p2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->getMode()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->initInstanceData()V

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initInstanceData()V
    .locals 10

    .line 93
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initInstanceData list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockInstanceState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/16 v7, 0xa

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v9, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v8, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 122
    iget-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->contain(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 123
    new-instance v8, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 124
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 125
    iget v9, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    if-ne v9, v6, :cond_2

    mul-int/2addr v8, v7

    add-int/2addr v8, v7

    .line 126
    iput v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    :cond_2
    if-ne v9, v5, :cond_3

    mul-int/2addr v8, v7

    add-int/2addr v8, v1

    .line 129
    iput v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 132
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    goto :goto_3

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_8

    .line 143
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_3

    .line 103
    :cond_5
    :goto_1
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    .line 104
    new-instance v8, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v8}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 106
    iget v8, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    if-ne v8, v6, :cond_6

    .line 107
    iput v7, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_2

    :cond_6
    if-ne v8, v5, :cond_7

    .line 109
    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 111
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    .line 148
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initInstanceData setAllowedNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setAllowedNumber(I)V

    return-void
.end method

.method private updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update instance data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "key_plugin_lock_instance_data"

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setCallback(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager$Callback;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;->getBasicManager()Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setPanelView(Landroid/view/ViewGroup;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    .line 269
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    .line 272
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 273
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    return-void
.end method

.method public getAllowedNumber()I
    .locals 0

    .line 192
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    return p0
.end method

.method public getData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginLockContext()Landroid/content/Context;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getPluginLockInstance()Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method public getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isRecentInstance()Z
    .locals 8

    .line 73
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 79
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_0

    .line 80
    invoke-virtual {v5}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentInstance() true, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PluginLockInstanceState"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public setTimeStamp(Z)V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 160
    iput-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz p1, :cond_2

    .line 163
    iget-wide v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], timestamp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], instance["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mInstance:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDb()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mCr:Landroid/content/ContentResolver;

    const-string v1, "key_plugin_lock_instance_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 224
    :cond_1
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;-><init>()V

    .line 225
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 227
    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0xa

    .line 228
    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    goto :goto_0

    .line 229
    :cond_2
    iget v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x2710

    .line 230
    iput v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    .line 232
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setPackageName(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    iget v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mAllowedNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->addData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData;

    .line 243
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData;->getData(Ljava/lang/String;)Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 245
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getNumber()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setNumber(Ljava/lang/Integer;)V

    .line 246
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setTimeStamp(Ljava/lang/Long;)V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->mData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->setRecoverData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;)V

    .line 251
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->updateDb(Lcom/android/systemui/pluginlock/PluginLockInstanceData;)V

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
