.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    .line 1425
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "KnoxStateMonitor"

    if-nez p2, :cond_1

    .line 1429
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " onReceive mDPMPolicyReceiver, but intent is null "

    .line 1430
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1434
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive mDPMPolicyReceiver, userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1437
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, " onReceive mDPMPolicyReceiver, clear cached data"

    .line 1438
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7600(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1440
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$5;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8500(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    return-void
.end method
