.class Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;
.super Ljava/lang/Object;
.source "BluetoothAdapterWrapper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->access$002(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p0, p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->access$102(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-static {p0, v1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->access$002(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$1;->this$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-static {p0, v1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->access$102(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :goto_0
    return-void
.end method
