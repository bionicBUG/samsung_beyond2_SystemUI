.class Lcom/android/systemui/sensor/PickupController$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;Landroid/os/Looper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const-string v1, "PickupController"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MSG_UNREGISTER_MONITOR"

    .line 76
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p1}, Lcom/android/systemui/sensor/PickupController;->access$200(Lcom/android/systemui/sensor/PickupController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$100(Lcom/android/systemui/sensor/PickupController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0

    :cond_1
    const-string p1, "MSG_REGISTER_MONITOR"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p1}, Lcom/android/systemui/sensor/PickupController;->access$200(Lcom/android/systemui/sensor/PickupController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$100(Lcom/android/systemui/sensor/PickupController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$000(Lcom/android/systemui/sensor/PickupController;)V

    :goto_0
    return-void
.end method
