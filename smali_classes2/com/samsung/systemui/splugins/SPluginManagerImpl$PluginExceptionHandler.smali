.class Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;)V
    .locals 0

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 458
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v1, v0

    .line 459
    iget-object v5, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$400(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 460
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->checkAndDisable(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result p0

    or-int/2addr p0, v3

    return p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13

    const/4 v0, 0x0

    const-string v1, "plugin.debugging"

    .line 421
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 426
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 427
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getFirstUncaughtExceptionTime(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    sub-long v9, v1, v3

    const-wide/32 v11, 0x2bf20

    cmp-long v7, v9, v11

    if-lez v7, :cond_1

    goto/16 :goto_1

    .line 433
    :cond_1
    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/systemui/splugins/SPluginPrefs;->getUncaughtExceptionCount(Landroid/content/Context;)I

    move-result v7

    add-int/2addr v7, v8

    const/4 v9, 0x5

    if-lt v7, v9, :cond_3

    .line 436
    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UncaughtException - currentTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "   firstExceptionTime = "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$300(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 439
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$400(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 440
    invoke-virtual {v3, v1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->disableAll(Ljava/util/ArrayList;)Z

    goto :goto_0

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    .line 444
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    .line 445
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_splugin_disabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 447
    :cond_3
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    goto :goto_2

    .line 430
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;I)V

    .line 431
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-static {v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginPrefs;->setFirstUncaughtExceptionTime(Landroid/content/Context;J)V

    .line 452
    :goto_2
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
