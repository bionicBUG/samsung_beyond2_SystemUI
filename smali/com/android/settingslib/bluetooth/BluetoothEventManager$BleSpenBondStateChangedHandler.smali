.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BleSpenBondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleSpenBondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BleSpenBondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BleSpenBondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    if-nez p3, :cond_0

    const-string p0, "BluetoothEventManager"

    const-string p1, "SEM_ACTION_BOND_STATE_CHANGED_FROM_NEARBY_DEVICE with no EXTRA_DEVICE"

    .line 684
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 p0, -0x80000000

    const-string p3, "android.bluetooth.device.extra.BOND_STATE"

    .line 687
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/16 p2, 0xc

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa

    if-ne p0, p2, :cond_2

    :cond_1
    const/4 p0, 0x0

    .line 691
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->updateBleSpenAddress(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
