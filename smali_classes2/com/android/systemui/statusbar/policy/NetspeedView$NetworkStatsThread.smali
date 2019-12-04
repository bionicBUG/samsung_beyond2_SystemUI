.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;
.super Ljava/lang/Thread;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method


# virtual methods
.method checkNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 391
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 395
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    move v0, p1

    .line 397
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 398
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public run()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->checkNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1102(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStatsThread-mNetworkStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSpeedView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$1200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
