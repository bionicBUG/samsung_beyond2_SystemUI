.class public final synthetic Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$sDnEX40LM2oQhvCk4-Li_t6c5_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$sDnEX40LM2oQhvCk4-Li_t6c5_I;->f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/-$$Lambda$BluetoothAdapterWrapper$sDnEX40LM2oQhvCk4-Li_t6c5_I;->f$0:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->lambda$getBtScoDeviceName$2$BluetoothAdapterWrapper(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
