.class Lcom/android/systemui/qs/tiles/MobileDataTile$18;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->setDataRoaming(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 617
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->val$enable:Z

    const-string v0, "data_roaming"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 619
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Roaming is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->val$enable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "handle_click"

    invoke-static {p1, v0, p2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$18;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
