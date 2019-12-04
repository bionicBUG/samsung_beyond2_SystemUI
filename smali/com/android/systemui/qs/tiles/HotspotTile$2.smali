.class Lcom/android/systemui/qs/tiles/HotspotTile$2;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 579
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 581
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 583
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$2;->val$enable:Z

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    return-void
.end method
