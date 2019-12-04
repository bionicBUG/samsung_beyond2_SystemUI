.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;
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

    .line 1371
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "KnoxStateMonitor"

    if-nez p2, :cond_1

    .line 1375
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    .line 1376
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1381
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "policyChangedBundle"

    .line 1382
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1383
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " onReceive RCP_POLICY_CHANGED bundle is null "

    .line 1384
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 1389
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_5

    .line 1391
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    .line 1392
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 1397
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v0, -0x1

    const-string v1, "personaId"

    .line 1400
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "syncerList"

    .line 1401
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "policyName"

    .line 1402
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq v1, v0, :cond_8

    if-eqz v2, :cond_8

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const-string p2, "Notifications"

    .line 1411
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1412
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8100(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1413
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8200(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1414
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8300(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1415
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$8400(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1416
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object p2, p2, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x1391

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1417
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Notification RCP policy is updated"

    .line 1418
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1405
    :cond_8
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " syncerList = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " policyName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method
