.class final Lcom/android/systemui/DebugUiOffloadThread$InternalTask;
.super Ljava/lang/Object;
.source "DebugUiOffloadThread.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DebugUiOffloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalTask"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugUiOffloadThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugUiOffloadThread.kt\ncom/android/systemui/DebugUiOffloadThread$InternalTask\n*L\n1#1,159:1\n*E\n"
.end annotation


# instance fields
.field private callback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

.field private final caller:Ljava/lang/String;

.field private final mRequestedTime:J

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/DebugUiOffloadThread$Callback;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->caller:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->callback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRequestedTime:J

    return-void
.end method

.method public static final synthetic access$end(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;J)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->end(J)V

    return-void
.end method

.method private final end(J)V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->callback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->caller:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->mRequestedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/DebugUiOffloadThread$Callback;->taskEnded(Ljava/lang/String;JJJ)V

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->callback:Lcom/android/systemui/DebugUiOffloadThread$Callback;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, -0x1

    .line 137
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/DebugUiOffloadThread$InternalTask;->runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 139
    new-instance v1, Lcom/android/systemui/DebugUiOffloadThread$InternalTask$run$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DebugUiOffloadThread$InternalTask$run$1;-><init>(Lcom/android/systemui/DebugUiOffloadThread$InternalTask;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    return-void
.end method
