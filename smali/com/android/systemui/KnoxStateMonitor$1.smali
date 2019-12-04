.class Lcom/android/systemui/KnoxStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.knox.keyguard.show"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "personaId"

    .line 212
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 213
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const-string v0, "isShown"

    .line 214
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 215
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x138a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 216
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    .line 220
    iget-object p2, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p2}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0x138b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 221
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x138c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.ucs.ucsservice.stateblocked"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 225
    iget-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p1}, Lcom/android/systemui/KnoxStateMonitor;->access$100(Lcom/android/systemui/KnoxStateMonitor;)Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->getUCMVendor()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UCS_CSNAME"

    .line 226
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "KnoxStateMonitor"

    const-string p2, "com.samsung.ucs.ucsservice.stateblocked intent!"

    .line 228
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p0, p0, Lcom/android/systemui/KnoxStateMonitor$1;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {p0}, Lcom/android/systemui/KnoxStateMonitor;->access$000(Lcom/android/systemui/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x138d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
