.class final Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;
.super Ljava/lang/Object;
.source "AospHotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AospHotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotspotAndDataSaverCallbacks"
.end annotation


# instance fields
.field mCallbackInfo:Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AospHotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/AospHotspotTile;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/AospHotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance p1, Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;

    invoke-direct {p1}, Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AospHotspotTile;Lcom/android/systemui/qs/tiles/AospHotspotTile$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/AospHotspotTile;)V

    return-void
.end method


# virtual methods
.method public onDataSaverChanged(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 197
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/AospHotspotTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/AospHotspotTile;->access$100(Lcom/android/systemui/qs/tiles/AospHotspotTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onHotspotChanged(ZI)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->mCallbackInfo:Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;->isHotspotEnabled:Z

    .line 203
    iput p2, v0, Lcom/android/systemui/qs/tiles/AospHotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 204
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/AospHotspotTile;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/AospHotspotTile;->access$200(Lcom/android/systemui/qs/tiles/AospHotspotTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onHotspotPrepared()V
    .locals 1

    .line 209
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AospHotspotTile$HotspotAndDataSaverCallbacks;->this$0:Lcom/android/systemui/qs/tiles/AospHotspotTile;

    invoke-static {}, Lcom/android/systemui/qs/tiles/AospHotspotTile;->access$300()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/tiles/AospHotspotTile;->access$400(Lcom/android/systemui/qs/tiles/AospHotspotTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateConnectedDevices(Z)V
    .locals 0

    return-void
.end method
