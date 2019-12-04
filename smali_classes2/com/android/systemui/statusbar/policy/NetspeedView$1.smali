.class Lcom/android/systemui/statusbar/policy/NetspeedView$1;
.super Landroid/database/ContentObserver;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Landroid/os/Handler;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "network_speed"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$002(Z)Z

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange - mNetspeedSwitch = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$000()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mRegisterReceiver = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetworkSpeedView"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 105
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$202(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 109
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$000()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$200(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$300(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$202(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$400(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    :cond_2
    return-void
.end method
