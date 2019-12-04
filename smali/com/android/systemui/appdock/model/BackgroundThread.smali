.class public final Lcom/android/systemui/appdock/model/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/systemui/appdock/model/BackgroundThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string v0, "MW_APPDOCK bg thread"

    const/16 v1, 0xa

    .line 30
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 49
    const-class v0, Lcom/android/systemui/appdock/model/BackgroundThread;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/systemui/appdock/model/BackgroundThread;->sInstance:Lcom/android/systemui/appdock/model/BackgroundThread;

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Lcom/android/systemui/appdock/model/BackgroundThread;->init()V

    .line 53
    :cond_0
    sget-object v1, Lcom/android/systemui/appdock/model/BackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static init()V
    .locals 2

    .line 34
    new-instance v0, Lcom/android/systemui/appdock/model/BackgroundThread;

    invoke-direct {v0}, Lcom/android/systemui/appdock/model/BackgroundThread;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/model/BackgroundThread;->sInstance:Lcom/android/systemui/appdock/model/BackgroundThread;

    .line 35
    sget-object v0, Lcom/android/systemui/appdock/model/BackgroundThread;->sInstance:Lcom/android/systemui/appdock/model/BackgroundThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/appdock/model/BackgroundThread;->sInstance:Lcom/android/systemui/appdock/model/BackgroundThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/appdock/model/BackgroundThread;->sHandler:Landroid/os/Handler;

    return-void
.end method
