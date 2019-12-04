.class public final Lcom/android/systemui/DebugUiOffloadThread$submit$1;
.super Ljava/lang/Object;
.source "DebugUiOffloadThread.kt"

# interfaces
.implements Lcom/android/systemui/DebugUiOffloadThread$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DebugUiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugUiOffloadThread.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugUiOffloadThread.kt\ncom/android/systemui/DebugUiOffloadThread$submit$1\n*L\n1#1,159:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DebugUiOffloadThread;


# direct methods
.method constructor <init>(Lcom/android/systemui/DebugUiOffloadThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public taskEnded(Ljava/lang/String;JJJ)V
    .locals 5

    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x64

    int-to-long v0, v0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run duration: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms from\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/android/systemui/DebugUiOffloadThread;->access$getDEBUG_LOG$cp()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DebugUiOffloadThread"

    .line 56
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v3}, Lcom/android/systemui/DebugUiOffloadThread;->access$getLogList$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v3}, Lcom/android/systemui/DebugUiOffloadThread;->access$getLogList$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v2}, Lcom/android/systemui/DebugUiOffloadThread;->access$getLogList$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 67
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/DebugUiOffloadThread;->access$getMaxDuration$p(Lcom/android/systemui/DebugUiOffloadThread;)J

    move-result-wide v3

    cmp-long v0, v3, p2

    if-gtz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {v0, p2, p3}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxDuration$p(Lcom/android/systemui/DebugUiOffloadThread;J)V

    .line 69
    iget-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p2, p6, p7}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxDurationTime$p(Lcom/android/systemui/DebugUiOffloadThread;J)V

    .line 70
    iget-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p2, p1}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxDurationCaller$p(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;)V

    :cond_3
    sub-long p2, p6, p4

    .line 74
    invoke-static {}, Lcom/android/systemui/DebugUiOffloadThread;->access$getDEBUG_LOG$cp()Z

    move-result p4

    if-eqz p4, :cond_5

    const/16 p4, 0x1f4

    int-to-long p4, p4

    cmp-long p4, p2, p4

    if-ltz p4, :cond_5

    if-ne v2, v1, :cond_4

    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "elapsed time: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, "ms"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "DebugUiOffloadThread"

    invoke-static {p5, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "elapsed time: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, "ms from\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "DebugUiOffloadThread"

    invoke-static {p5, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p4}, Lcom/android/systemui/DebugUiOffloadThread;->access$getMaxElapsed$p(Lcom/android/systemui/DebugUiOffloadThread;)J

    move-result-wide p4

    cmp-long p4, p4, p2

    if-gtz p4, :cond_6

    .line 86
    iget-object p4, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p4, p2, p3}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxElapsed$p(Lcom/android/systemui/DebugUiOffloadThread;J)V

    .line 87
    iget-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p2, p6, p7}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxElapsedTime$p(Lcom/android/systemui/DebugUiOffloadThread;J)V

    .line 88
    iget-object p2, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p2, p1}, Lcom/android/systemui/DebugUiOffloadThread;->access$setMaxElapsedCaller$p(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;)V

    .line 91
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/DebugUiOffloadThread$submit$1;->this$0:Lcom/android/systemui/DebugUiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/DebugUiOffloadThread;->access$getCount$p(Lcom/android/systemui/DebugUiOffloadThread;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_7

    .line 92
    invoke-static {}, Lcom/android/systemui/DebugUiOffloadThread;->access$getDEBUG_LOG$cp()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "DebugUiOffloadThread"

    const-string p1, "no remained task"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
