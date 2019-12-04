.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBeforeSpd:J

.field private mBeforeVPNConnected:Z

.field private mSpd:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 326
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 328
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 339
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 340
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    .line 344
    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mSpd:J

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long v6, v4, v6

    long-to-float p1, v6

    const/high16 v6, 0x44800000    # 1024.0f

    div-float/2addr p1, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr p1, v6

    .line 345
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 346
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 347
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 348
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_2
    float-to-double v4, p1

    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_3

    const-string p1, "0\nK/s"

    goto :goto_1

    :cond_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v6, v4, v6

    const/4 v7, 0x0

    if-gez v6, :cond_4

    new-array v3, v3, [Ljava/lang/Object;

    .line 356
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v7

    const-string p1, "%.2f\nK/s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpg-double v6, v4, v8

    if-gez v6, :cond_5

    new-array v3, v3, [Ljava/lang/Object;

    .line 359
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v7

    const-string p1, "%.1f\nK/s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-wide/high16 v8, 0x40f9000000000000L    # 102400.0

    cmpg-double p1, v4, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    if-gez p1, :cond_6

    new-array p1, v3, [Ljava/lang/Object;

    div-double/2addr v4, v8

    .line 362
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v7

    const-string v3, "%.2f\nM/s"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-array p1, v3, [Ljava/lang/Object;

    div-double/2addr v4, v8

    .line 365
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v7

    const-string v3, "%.1f\nM/s"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 369
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v3}, Ljava/util/Observable;->countObservers()I

    move-result v3

    if-lez v3, :cond_9

    .line 370
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->access$1000(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-virtual {v3, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 330
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 331
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$500()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    goto :goto_2

    .line 333
    :cond_8
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeSpd:J

    .line 335
    :goto_2
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$700()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    .line 336
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_3
    return-void
.end method
