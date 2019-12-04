.class Lcom/android/systemui/qs/tiles/HotspotTile$4;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->showWifiSharingSelectDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/ContentResolver;Z)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 539
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 541
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x4d

    .line 542
    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feature"

    const-string v3, "MHWS"

    .line 544
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    const-string/jumbo v3, "wifi_ap_wifi_sharing"

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 547
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$cr:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.UPDATE_OPTIONS_MENU"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v6}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "ON"

    .line 550
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 552
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$cr:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "OFF"

    .line 553
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "provider value after ok button "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$cr:Landroid/content/ContentResolver;

    invoke-static {v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 557
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1400(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in getting provider value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_2
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    if-ne p2, v4, :cond_2

    .line 561
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 562
    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiSharingSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 563
    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1600(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 564
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$enable:Z

    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    goto :goto_3

    .line 567
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$4;->val$enable:Z

    invoke-static {p2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    .line 569
    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
