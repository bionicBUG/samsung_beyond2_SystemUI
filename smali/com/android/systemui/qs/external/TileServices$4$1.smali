.class Lcom/android/systemui/qs/external/TileServices$4$1;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/external/TileServices$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices$4;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServices;->access$200(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 446
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$4$1;->this$1:Lcom/android/systemui/qs/external/TileServices$4;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$4;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {p0}, Lcom/android/systemui/qs/external/TileServices;->access$200(Lcom/android/systemui/qs/external/TileServices;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 450
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 451
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->getIsDefaultTile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 452
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 454
    :try_start_1
    invoke-virtual {v2}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 447
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
