.class Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;
.super Ljava/lang/Object;
.source "SemAutoEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiltDecisionRunnable"
.end annotation


# instance fields
.field AEDecision:I

.field AEHandle:J

.field isThreadComplete:Z


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SemAutoEnhance"

    const-string v1, "APP - AutoEnhanceTiltEstimation S"

    .line 2524
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-wide v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEHandle:J

    invoke-static {v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNative;->AutoEnhanceTiltEstimation(J)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->AEDecision:I

    const-string v1, "APP - AutoEnhanceTiltEstimation E"

    .line 2528
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2531
    iput-boolean v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhance$TiltDecisionRunnable;->isThreadComplete:Z

    return-void
.end method
