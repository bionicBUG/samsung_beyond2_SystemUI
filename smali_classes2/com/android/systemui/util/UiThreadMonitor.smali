.class public final Lcom/android/systemui/util/UiThreadMonitor;
.super Ljava/lang/Object;
.source "UiThreadMonitor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/UiThreadMonitor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUiThreadMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UiThreadMonitor.kt\ncom/android/systemui/util/UiThreadMonitor\n*L\n1#1,281:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/util/UiThreadMonitor$Companion;

.field public static final instance:Lcom/android/systemui/util/UiThreadMonitor;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private anrCount:I

.field private final asyncRunnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private awakeCount:I

.field private final blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final callback:Lcom/android/systemui/util/UiThreadMonitor$callback$1;

.field private final handler:Landroid/os/Handler;

.field private isDreaming:Z

.field private volatile isPaused:Z

.field private lastAsyncMsgHandledTimed:J

.field private lastAwakeTime:J

.field private lastStackTrace:Ljava/lang/String;

.field private lastStackTraceTime:J

.field private final looper:Landroid/os/Looper;

.field private looperMsgLog:Z

.field private looperSlowLog:Z

.field private final mainThread:Ljava/lang/Thread;

.field private final monitorThread:Ljava/lang/Thread;

.field private final runnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/UiThreadMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/UiThreadMonitor;->Companion:Lcom/android/systemui/util/UiThreadMonitor$Companion;

    .line 273
    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor;

    invoke-direct {v0}, Lcom/android/systemui/util/UiThreadMonitor;-><init>()V

    sput-object v0, Lcom/android/systemui/util/UiThreadMonitor;->instance:Lcom/android/systemui/util/UiThreadMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looper:Landroid/os/Looper;

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    .line 62
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looper:Landroid/os/Looper;

    const-string v1, "looper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "looper.thread"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/UiThreadMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/UiThreadMonitor$1;-><init>(Lcom/android/systemui/util/UiThreadMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    .line 66
    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor$runnable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/UiThreadMonitor$runnable$1;-><init>(Lcom/android/systemui/util/UiThreadMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->runnable:Lkotlin/jvm/functions/Function0;

    .line 67
    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor$asyncRunnable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/UiThreadMonitor$asyncRunnable$1;-><init>(Lcom/android/systemui/util/UiThreadMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->asyncRunnable:Lkotlin/jvm/functions/Function0;

    .line 75
    new-instance v0, Lcom/android/systemui/util/UiThreadMonitor$callback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/UiThreadMonitor$callback$1;-><init>(Lcom/android/systemui/util/UiThreadMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->callback:Lcom/android/systemui/util/UiThreadMonitor$callback$1;

    return-void
.end method

.method public static final synthetic access$isPaused$p(Lcom/android/systemui/util/UiThreadMonitor;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    return p0
.end method

.method public static final synthetic access$pause(Lcom/android/systemui/util/UiThreadMonitor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->pause()V

    return-void
.end method

.method public static final synthetic access$resume(Lcom/android/systemui/util/UiThreadMonitor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->resume()V

    return-void
.end method

.method public static final synthetic access$run(Lcom/android/systemui/util/UiThreadMonitor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->run()V

    return-void
.end method

.method public static final synthetic access$sendAsyncMsg(Lcom/android/systemui/util/UiThreadMonitor;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->sendAsyncMsg()V

    return-void
.end method

.method public static final synthetic access$setAwake(Lcom/android/systemui/util/UiThreadMonitor;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/util/UiThreadMonitor;->setAwake(I)V

    return-void
.end method

.method public static final synthetic access$setDreaming$p(Lcom/android/systemui/util/UiThreadMonitor;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->isDreaming:Z

    return-void
.end method

.method public static final synthetic access$setLastAsyncMsgHandledTimed$p(Lcom/android/systemui/util/UiThreadMonitor;J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    return-void
.end method

.method public static final getInstance()Lcom/android/systemui/util/UiThreadMonitor;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/util/UiThreadMonitor;->Companion:Lcom/android/systemui/util/UiThreadMonitor$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/util/UiThreadMonitor$Companion;->getInstance()Lcom/android/systemui/util/UiThreadMonitor;

    move-result-object v0

    return-object v0
.end method

.method private final isDisabled()Z
    .locals 1

    const/4 p0, 0x0

    const-string v0, "debug.sysui.anr_detector.disabled"

    .line 97
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UiThreadMonitor"

    const-string v0, "UiThreadMonitor is disabled"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private final pause()V
    .locals 1

    const-string v0, "pause"

    .line 120
    invoke-static {v0}, Lcom/android/systemui/util/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    return-void
.end method

.method private final resume()V
    .locals 1

    const-string v0, "resume"

    .line 126
    invoke-static {v0}, Lcom/android/systemui/util/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/util/UiThreadMonitor;->setAwake(I)V

    :cond_0
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    return-void
.end method

.method private final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "   "

    const-string v3, " ms) ***\n"

    const-string v4, ", "

    const-string v5, "*** Traced call stack: "

    const-string v6, "UiThreadMonitor"

    const/4 v7, 0x0

    .line 159
    iput-boolean v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    const/16 v0, 0x13

    .line 160
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 163
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/util/UiThreadMonitor;->updateLooperMsgLog()V

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/util/UiThreadMonitor;->updateShowLooperSlowLog()V

    .line 166
    iget-boolean v8, v1, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    if-eqz v8, :cond_0

    const-wide/32 v9, 0x5265c00

    goto :goto_1

    :cond_0
    const-wide/16 v9, 0x1770

    .line 169
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 171
    iget-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/systemui/util/UiThreadMonitor;->runnable:Lkotlin/jvm/functions/Function0;

    if-eqz v11, :cond_1

    new-instance v12, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;

    invoke-direct {v12, v11}, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v11, v12

    :cond_1
    check-cast v11, Ljava/lang/Runnable;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v8, :cond_3

    .line 173
    iget-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/systemui/util/UiThreadMonitor;->runnable:Lkotlin/jvm/functions/Function0;

    if-eqz v11, :cond_2

    new-instance v12, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;

    invoke-direct {v12, v11}, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v11, v12

    :cond_2
    check-cast v11, Ljava/lang/Runnable;

    const-wide/16 v12, 0xbb8

    invoke-virtual {v0, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/16 v11, 0xa

    const/16 v12, 0x28

    const/4 v13, 0x1

    .line 178
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "wait "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/UiThreadMonitorKt;->access$debugLog(Ljava/lang/String;)V

    .line 179
    iget-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10, v14}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_6

    if-nez v0, :cond_6

    .line 184
    iget v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    .line 187
    iget-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v14, v15}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v14, v7

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    array-length v7, v0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v0, v8

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v16

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v12, v16

    .line 196
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_3
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    .line 181
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "run exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_6

    .line 184
    iget v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    .line 187
    iget-object v0, v1, Lcom/android/systemui/util/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v14, v15}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v10, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v14, v10

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    array-length v8, v0

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_5

    aget-object v11, v0, v10

    .line 193
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 196
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 202
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/util/UiThreadMonitor;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    iput-boolean v13, v1, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    return-void

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-nez v8, :cond_9

    .line 184
    iget v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    add-int/2addr v7, v13

    iput v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    .line 187
    iget-object v7, v1, Lcom/android/systemui/util/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {v4, v5}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    iget-wide v11, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v4, v11

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    array-length v3, v7

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v3, :cond_8

    aget-object v4, v7, v9

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 196
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object v2, v1, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    .line 196
    :cond_9
    throw v0
.end method

.method private final sendAsyncMsg()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->asyncRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;

    invoke-direct {v2, v1}, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->asyncRunnable:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;

    invoke-direct {v2, v1}, Lcom/android/systemui/util/UiThreadMonitorKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    move-object v1, v2

    :cond_1
    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-string v1, "it"

    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 154
    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final setAwake(I)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 136
    iget-boolean p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->isDreaming:Z

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAwake "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/util/UiThreadMonitor;->awakeCount:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAwakeTime:J

    sub-long v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UiThreadMonitor"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iput-wide v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAwakeTime:J

    .line 140
    iget p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->awakeCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->awakeCount:I

    .line 144
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->blockingDeque:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final updateLooperMsgLog()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "debug.sysui.looper.msg_log"

    .line 208
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperMsgLog:Z

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looper:Landroid/os/Looper;

    sget-object v1, Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;->INSTANCE:Lcom/android/systemui/util/UiThreadMonitor$updateLooperMsgLog$1;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperMsgLog:Z

    goto :goto_0

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperMsgLog:Z

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->looper:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 216
    iput-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperMsgLog:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateShowLooperSlowLog()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "debug.sysui.looper.slow_log"

    .line 225
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_0

    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperSlowLog:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    const-string v2, "debug.sysui.looper.slow_dispatch"

    .line 228
    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "debug.sysui.looper.slow_delivery"

    .line 230
    invoke-static {v4, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v4, 0x1

    .line 231
    iput-boolean v4, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperSlowLog:Z

    goto :goto_0

    .line 234
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperSlowLog:Z

    if-eqz v1, :cond_1

    .line 237
    iput-boolean v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looperSlowLog:Z

    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, v4

    move-wide v2, v0

    :goto_0
    const/4 v4, -0x1

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateShowLooperSlowLog dispatch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, delivery="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiThreadMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->looper:Landroid/os/Looper;

    invoke-virtual {p0, v2, v3, v2, v3}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UiThreadMonitor state:\n  monitorThread state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", paused="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/util/UiThreadMonitor;->isPaused:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", count="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/util/UiThreadMonitor;->anrCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n  mainThread state="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/UiThreadMonitor;->mainThread:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\n  lastAsyncMsgHandledTime="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-object p3, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 265
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n  lastStackTrace=[\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTrace:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  ], "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastStackTraceTime:J

    invoke-static {p0, p1}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAsyncMsgHandledTimed:J

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->lastAwakeTime:J

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/UiThreadMonitor;->sendAsyncMsg()V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/util/UiThreadMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/UiThreadMonitor;->callback:Lcom/android/systemui/util/UiThreadMonitor$callback$1;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiThreadMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
