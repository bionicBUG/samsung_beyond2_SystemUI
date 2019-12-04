.class public final Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;
.super Ljava/lang/Object;
.source "BioUnlockPFImprover.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/BioUnlockPFImprover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelayedActionParams"
.end annotation


# instance fields
.field private atTime:J

.field private handler:Landroid/os/Handler;

.field private isDiscard:Z

.field private final maxDelayMills:J

.field private runnable:Ljava/lang/Runnable;

.field private final runnableWrapper:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->maxDelayMills:J

    .line 456
    new-instance p1, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams$runnableWrapper$1;-><init>(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getRunnable$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)Ljava/lang/Runnable;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isDiscard$p(Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;)Z
    .locals 0

    .line 453
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->isDiscard:Z

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final discard()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 472
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->isDiscard:Z

    return-void
.end method

.method public final isStarted()Z
    .locals 4

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->isDiscard:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->atTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p0, 0xa

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final start(Z)V
    .locals 4

    .line 476
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->isDiscard:Z

    if-eqz v0, :cond_0

    return-void

    .line 480
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BioUnlock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->maxDelayMills:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->atTime:J

    .line 484
    iget-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/BioUnlockPFImprover$DelayedActionParams;->runnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
