.class Lcom/android/systemui/qs/external/TileServices$4;
.super Landroid/content/BroadcastReceiver;
.source "TileServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTileUpdateReceiver : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TileServices"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {p1}, Lcom/android/systemui/qs/external/TileServices;->access$300(Lcom/android/systemui/qs/external/TileServices;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/external/TileServices$4$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/external/TileServices$4$1;-><init>(Lcom/android/systemui/qs/external/TileServices$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
