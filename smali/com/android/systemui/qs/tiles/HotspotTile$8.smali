.class Lcom/android/systemui/qs/tiles/HotspotTile$8;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->showNoSIMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 652
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 653
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$8;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
