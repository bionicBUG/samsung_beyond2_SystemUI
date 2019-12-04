.class Lcom/android/systemui/qs/tiles/HotspotTile$10;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->showWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 742
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2000(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEnabled : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->val$isEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2100(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->getMetricsCategory()I

    move-result p2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->val$isEnabled:Z

    invoke-static {p1, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 746
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiSharingLiteSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 747
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 749
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 751
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 753
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string/jumbo v0, "wifi_saved_state"

    .line 754
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 755
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$2400(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/HotspotTile$10$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$10$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile$10;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 764
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$10;->val$isEnabled:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    :goto_0
    return-void
.end method
