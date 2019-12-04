.class public Lcom/android/systemui/util/DebugLogStore;
.super Ljava/lang/Object;
.source "DebugLogStore.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/DebugLogStore$DebugLog;,
        Lcom/android/systemui/util/DebugLogStore$MessageObject;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final ENG:Z

.field private static final MAX_LOG_COUNT:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/util/DebugLogStore$DebugLog;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/DebugLogStore;->ENG:Z

    .line 33
    sget-boolean v0, Lcom/android/systemui/util/DebugLogStore;->ENG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/systemui/util/DebugLogStore;->MAX_LOG_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "debug_looper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DebugLogStore;->mLogs:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/android/systemui/util/DebugLogStore$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/DebugLogStore$1;-><init>(Lcom/android/systemui/util/DebugLogStore;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/DebugLogStore;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/DebugLogStore;Landroid/os/Message;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DebugLogStore;->handleAddLog(Landroid/os/Message;)V

    return-void
.end method

.method private handleAddLog(Landroid/os/Message;)V
    .locals 2

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/DebugLogStore$MessageObject;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/util/DebugLogStore;->mLogs:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/systemui/util/DebugLogStore$MessageObject;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v1, p1, Lcom/android/systemui/util/DebugLogStore$MessageObject;->debugLog:Lcom/android/systemui/util/DebugLogStore$DebugLog;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/android/systemui/util/DebugLogStore;->mLogs:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/systemui/util/DebugLogStore$MessageObject;->tag:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/util/DebugLogStore$MessageObject;->debugLog:Lcom/android/systemui/util/DebugLogStore$DebugLog;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lcom/android/systemui/util/DebugLogStore;->MAX_LOG_COUNT:I

    if-le p1, v1, :cond_1

    const/4 p1, 0x0

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;Lcom/android/systemui/util/DebugLogStore$DebugLog;)V
    .locals 3

    .line 104
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p3, Lcom/android/systemui/util/DebugLogStore$DebugLog;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/systemui/util/DebugLogStore$DebugLog;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 101
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$ouEQNaihOcB8A7Fv6yDqDLVXPRY;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static toString(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "outside"

    return-object p0

    :cond_1
    const-string p0, "move"

    return-object p0

    :cond_2
    const-string p0, "up"

    return-object p0

    :cond_3
    const-string p0, "down"

    return-object p0
.end method


# virtual methods
.method public addLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/android/systemui/util/DebugLogStore$DebugLog;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/DebugLogStore$DebugLog;-><init>(Lcom/android/systemui/util/DebugLogStore;Ljava/lang/String;)V

    .line 90
    new-instance p2, Lcom/android/systemui/util/DebugLogStore$MessageObject;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/util/DebugLogStore$MessageObject;-><init>(Lcom/android/systemui/util/DebugLogStore;Ljava/lang/String;Lcom/android/systemui/util/DebugLogStore$DebugLog;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/util/DebugLogStore;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x1388

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object p3, p0, Lcom/android/systemui/util/DebugLogStore;->mLogs:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/util/-$$Lambda$DebugLogStore$3YbH6DL9sRF-GUirN23Yo3qy8jY;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V

    invoke-interface {p3, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
