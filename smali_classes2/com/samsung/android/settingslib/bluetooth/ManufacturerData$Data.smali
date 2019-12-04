.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mBluetoothType:B

.field private mContactCrc:[B

.field private mContactHash:[B

.field private mDeviceCategory:B

.field private mDeviceCategoryPrefix:Ljava/lang/String;

.field private mDeviceIconIndex:B

.field private mDeviceId:[B

.field private mTxPower:I

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 3

    .line 315
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 310
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 p1, 0x2

    new-array v0, p1, [B

    .line 311
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    new-array v0, p1, [B

    .line 312
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v0, 0x0

    .line 316
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 317
    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 318
    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    const-string v1, ""

    .line 319
    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    aput-byte v0, v1, v0

    const/4 v2, 0x1

    .line 321
    aput-byte v0, v1, v2

    .line 322
    aput-byte v0, v1, p1

    .line 323
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    aput-byte v0, p1, v0

    .line 324
    aput-byte v0, p1, v2

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    aput-byte v0, p1, v0

    .line 326
    aput-byte v0, p1, v2

    .line 327
    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B
    .locals 0

    .line 305
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return p0
.end method


# virtual methods
.method public getBluetoothType()B
    .locals 0

    .line 346
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return p0
.end method

.method public getContactCrc()[B
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    return-object p0
.end method

.method public getContactHash()[B
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    return-object p0
.end method

.method public getDeviceCategory()B
    .locals 0

    .line 340
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return p0
.end method

.method public getDeviceIconIndex()B
    .locals 0

    .line 341
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return p0
.end method

.method public getDeviceId()[B
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    return-object p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getTxPower()I
    .locals 0

    .line 339
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return p0
.end method

.method protected setBluetoothType(B)V
    .locals 0

    .line 337
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method

.method protected setContactCrc([BI)V
    .locals 2

    .line 335
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setContactHash([BI)V
    .locals 2

    .line 334
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setDeviceCategory(B)V
    .locals 0

    .line 331
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return-void
.end method

.method protected setDeviceIconIndex(B)V
    .locals 0

    .line 332
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return-void
.end method

.method protected setDeviceId([BI)V
    .locals 2

    .line 336
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setPrefixName(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-void
.end method

.method protected setTxPower(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return-void
.end method
