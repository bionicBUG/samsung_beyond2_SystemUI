.class public Lcom/android/settingslib/media/InfoMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "InfoMediaDevice.java"


# instance fields
.field private mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    const/4 v0, 0x2

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-static {p0}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
