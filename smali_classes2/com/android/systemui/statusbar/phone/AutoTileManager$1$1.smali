.class Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$200(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$100(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->access$102(Lcom/android/systemui/statusbar/phone/AutoTileManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    const-string p0, "AutoTileManager"

    const-string v0, "unregister PreInstallerFinished"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
