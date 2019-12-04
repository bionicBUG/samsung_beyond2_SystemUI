.class Lcom/android/systemui/qs/tiles/HotspotTile$3;
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

    .line 572
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 574
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo p2, "wifi_ap_wifi_sharing"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 576
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$enable:Z

    invoke-static {p1, p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1100(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    return-void
.end method
