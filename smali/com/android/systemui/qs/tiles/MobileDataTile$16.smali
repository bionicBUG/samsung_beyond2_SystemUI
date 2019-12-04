.class Lcom/android/systemui/qs/tiles/MobileDataTile$16;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    const-string p1, "displayId"

    .line 567
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 574
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 575
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$16;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    :cond_1
    :goto_0
    return-void
.end method
