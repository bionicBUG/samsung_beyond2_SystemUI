.class public final Lcom/android/systemui/DebugUiOffloadThread;
.super Lcom/android/systemui/UiOffloadThread;
.source "DebugUiOffloadThread.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DebugUiOffloadThread$Callback;,
        Lcom/android/systemui/DebugUiOffloadThread$InternalTask;,
        Lcom/android/systemui/DebugUiOffloadThread$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugUiOffloadThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugUiOffloadThread.kt\ncom/android/systemui/DebugUiOffloadThread\n*L\n1#1,159:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/android/systemui/DebugUiOffloadThread$Companion;

.field private static final DEBUG_LOG:Z


# instance fields
.field private final count$delegate:Lkotlin/Lazy;

.field private final logList$delegate:Lkotlin/Lazy;

.field private maxDuration:J

.field private maxDurationCaller:Ljava/lang/String;

.field private maxDurationTime:J

.field private maxElapsed:J

.field private maxElapsedCaller:Ljava/lang/String;

.field private maxElapsedTime:J

.field private maxTaskCount:I

.field private maxTaskCountTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "count"

    const-string v4, "getCount()Ljava/util/concurrent/atomic/AtomicInteger;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "logList"

    const-string v4, "getLogList()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/DebugUiOffloadThread;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/DebugUiOffloadThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/DebugUiOffloadThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/DebugUiOffloadThread;->Companion:Lcom/android/systemui/DebugUiOffloadThread$Companion;

    .line 155
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    .line 18
    sget-object v0, Lcom/android/systemui/DebugUiOffloadThread$count$2;->INSTANCE:Lcom/android/systemui/DebugUiOffloadThread$count$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->count$delegate:Lkotlin/Lazy;

    .line 19
    sget-object v0, Lcom/android/systemui/DebugUiOffloadThread$logList$2;->INSTANCE:Lcom/android/systemui/DebugUiOffloadThread$logList$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->logList$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCount$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;->getCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDEBUG_LOG$cp()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    return v0
.end method

.method public static final synthetic access$getLogList$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/List;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;->getLogList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMaxDuration$p(Lcom/android/systemui/DebugUiOffloadThread;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDuration:J

    return-wide v0
.end method

.method public static final synthetic access$getMaxElapsed$p(Lcom/android/systemui/DebugUiOffloadThread;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsed:J

    return-wide v0
.end method

.method public static final synthetic access$setMaxDuration$p(Lcom/android/systemui/DebugUiOffloadThread;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDuration:J

    return-void
.end method

.method public static final synthetic access$setMaxDurationCaller$p(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDurationCaller:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMaxDurationTime$p(Lcom/android/systemui/DebugUiOffloadThread;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDurationTime:J

    return-void
.end method

.method public static final synthetic access$setMaxElapsed$p(Lcom/android/systemui/DebugUiOffloadThread;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsed:J

    return-void
.end method

.method public static final synthetic access$setMaxElapsedCaller$p(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsedCaller:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMaxElapsedTime$p(Lcom/android/systemui/DebugUiOffloadThread;J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsedTime:J

    return-void
.end method

.method private final getCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/DebugUiOffloadThread;->count$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/DebugUiOffloadThread;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private final getLogList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/DebugUiOffloadThread;->logList$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/DebugUiOffloadThread;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "DebugUiOffloadThread\n"

    .line 103
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget p3, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCount:I

    const/16 v0, 0xa

    if-eqz p3, :cond_0

    .line 105
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Max count of queued task: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCount:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCountTime:J

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsed:J

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Max elapsed time: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsed:J

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms / "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsedTime:J

    invoke-static {v1, v2}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxElapsedCaller:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDuration:J

    cmp-long p3, v1, v3

    if-eqz p3, :cond_2

    .line 113
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - Max duration: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDuration:J

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms / "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDurationTime:J

    invoke-static {v1, v2}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxDurationCaller:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;->getLogList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    const-string p3, "  - Last warning msg:\n"

    .line 118
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;->getLogList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "cur.first"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/systemui/util/LogUtil;->makeTimeStr(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_4
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    .line 126
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    monitor-exit p0

    throw p1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DebugUiOffloadThread"

    const-string/jumbo v1, "submit"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/DebugUiOffloadThread;->getCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 38
    sget-boolean v2, Lcom/android/systemui/DebugUiOffloadThread;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "submit - count of queued task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iget v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCount:I

    if-gt v0, v1, :cond_1

    .line 43
    iput v1, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCount:I

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/DebugUiOffloadThread;->maxTaskCountTime:J

    .line 48
    :cond_1
    new-instance v0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->getCaller(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/DebugUiOffloadThread$submit$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/DebugUiOffloadThread$submit$1;-><init>(Lcom/android/systemui/DebugUiOffloadThread;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;)V

    invoke-super {p0, v0}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-string/jumbo p1, "super.submit(InternalTas\u2026            }\n        }))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
