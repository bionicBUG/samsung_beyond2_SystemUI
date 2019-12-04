.class public Lcom/android/settingslib/media/MediaDeviceUtils;
.super Ljava/lang/Object;
.source "MediaDeviceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getId(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
