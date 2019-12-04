.class Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;
.super Ljava/lang/Object;
.source "AudioCastProfile.java"

# interfaces
.implements Lcom/samsung/android/bluetooth/SemBluetoothCastProfile$BluetoothCastProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lcom/samsung/android/bluetooth/SemBluetoothCastProfile;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->access$000(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCastProfile Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    iput-object p1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    .line 153
    iget-object p1, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    invoke-virtual {p1}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    .line 156
    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getRemoteDeviceRole()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->access$100(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->findCastDevice(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->access$100(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v3}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->access$200(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->addCastDevice(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;I)V

    .line 163
    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->refresh()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->access$000(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCastProfile Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile$1;->this$0:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    return-void
.end method
