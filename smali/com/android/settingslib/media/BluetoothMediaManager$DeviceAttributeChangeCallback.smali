.class Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;
.super Ljava/lang/Object;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/BluetoothMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceAttributeChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/media/BluetoothMediaManager;


# virtual methods
.method public onDeviceAttributesChanged()V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDataChanged()V

    return-void
.end method
