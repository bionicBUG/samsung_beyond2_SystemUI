.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;
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

    .line 1333
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "com.sec.knox.container.action.containerremovalstarted"

    .line 1338
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1339
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$4900(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1340
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$4902(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Z)Z

    .line 1341
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object p1, p1, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x139d

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1342
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object p1, p1, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1344
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7800(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->access$7702(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    :cond_1
    return-void
.end method
