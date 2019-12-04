.class Lcom/android/systemui/sensor/PickupController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PickupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sensor/PickupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep(I)V
    .locals 3

    const-string v0, "PickupController"

    const-string v1, "onStartedGoingToSleep() "

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$300(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v1}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object p0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$000(Lcom/android/systemui/sensor/PickupController;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    const-string v0, "PickupController"

    const-string v1, "onStartedWakingUp() "

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$300(Lcom/android/systemui/sensor/PickupController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {v0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$400(Lcom/android/systemui/sensor/PickupController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$2;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$500(Lcom/android/systemui/sensor/PickupController;)V

    :cond_1
    :goto_0
    return-void
.end method
