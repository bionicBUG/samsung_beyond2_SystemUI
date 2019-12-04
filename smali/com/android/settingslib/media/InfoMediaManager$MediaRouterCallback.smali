.class Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "InfoMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/InfoMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/media/InfoMediaManager;


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-static {p2}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteAdded() route : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InfoMediaManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object p2, p2, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-static {p2}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRouteRemoved() route : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InfoMediaManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object p2, p2, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method
