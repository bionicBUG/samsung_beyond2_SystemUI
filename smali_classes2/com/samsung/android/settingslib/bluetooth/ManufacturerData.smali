.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;,
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
    }
.end annotation


# instance fields
.field public final MANUFACTURER_DEVICE_ID_GEAR:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_360:I

.field public final MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

.field public final MANUFACTURER_DEVICE_ID_GLOBE:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

.field public final MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

.field public final MANUFACTURER_DEVICE_TYPE_BLE:B

.field public final MANUFACTURER_DEVICE_TYPE_CLASSIC:B

.field public final MANUFACTURER_DEVICE_TYPE_DEFAULT:B

.field public final MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

.field public final MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

.field public final MANUFACTURER_DEVICE_TYPE_NONE:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_L:B

.field public final MANUFACTURER_DEVICE_TYPE_SLD_R:B

.field private MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

.field private MANUFACTURER_LENGTH_SS_LE_DEVICE:I

.field private MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

.field private MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

.field private MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

.field private MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

.field private MANUFACTURER_OFFSET_SS_LE_FEATURES:I

.field private MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

.field private MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

.field private MANUFACTURER_OFFSET_SS_SERVICE_ID:I

.field private final MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

.field private final MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

.field private final MANUFACTURER_SS_LE_DEVICE_FIELD:B

.field private final MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

.field private final MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

.field public final MANUFACTURER_TYPE_DEFAULT:I

.field public final MANUFACTURER_TYPE_OLD:I

.field public final MANUFACTURER_TYPE_SS_BREDR:I

.field public final MANUFACTURER_TYPE_SS_LE:I

.field private mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field private mManufacturerRawData:[B

.field private mManufacturerType:I

.field private mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 9

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_DEFAULT:I

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_OLD:I

    const/4 v2, 0x2

    .line 18
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_BREDR:I

    const/4 v3, 0x3

    .line 19
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_TYPE_SS_LE:I

    .line 21
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR:I

    const/16 v4, 0x90

    .line 22
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MIN:I

    const/16 v4, 0xfb

    .line 23
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_VR_CONTROLLER:I

    const/16 v4, 0xfe

    .line 24
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GEAR_360:I

    const/16 v4, 0xdb

    .line 25
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_GLOBE:I

    const/16 v4, 0xff

    .line 26
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_ID_WEARABLE_MAX:I

    .line 29
    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_DEFAULT:B

    .line 30
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_CLASSIC:B

    .line 31
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_BLE:B

    .line 32
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_L:B

    const/4 v4, 0x4

    .line 33
    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_SLD_R:B

    .line 36
    iput-byte v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_NONE:B

    .line 37
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HIDDEN_CONDITION:B

    .line 38
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_DEVICE_TYPE_HF_ROLE_SUPPORTED:B

    const/4 v5, 0x5

    .line 41
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    const/4 v6, 0x7

    .line 42
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    const/16 v7, 0xa

    .line 43
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    .line 44
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    .line 45
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    const/16 v6, 0x8

    .line 46
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    const/16 v8, 0x9

    .line 47
    iput v8, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    .line 48
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    const/16 v7, 0xb

    .line 49
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    const/16 v7, 0xc

    .line 50
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    const/16 v7, 0xf

    .line 51
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    const/16 v7, 0x1f

    .line 52
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    .line 53
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 54
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 55
    iput v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    .line 56
    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 57
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 58
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    .line 59
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 60
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    .line 61
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    .line 62
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 63
    iput v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 64
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    .line 65
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    .line 66
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    .line 67
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    .line 69
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    .line 70
    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    const/4 v3, 0x6

    .line 71
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    const/16 v3, 0x12

    .line 72
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    .line 73
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 75
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PACKET_NUMBER_FIELD:B

    .line 76
    iput-byte v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_PROXIMITY_FIELD:B

    .line 77
    iput-byte v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_DEVICE_FIELD:B

    .line 78
    iput-byte v6, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_CONNECTIVITY_FIELD:B

    const/16 v1, 0x10

    .line 79
    iput-byte v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_SS_LE_ASSOCIATED_SERVICE_DATA_FIELD:B

    const/4 v1, 0x0

    .line 349
    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    .line 350
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 355
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 356
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 357
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    return-void
.end method

.method private setBluetoothType([B)V
    .locals 4

    .line 597
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 599
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v1, p0

    aget-byte p0, p1, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 618
    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 620
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v0, p0

    aget-byte p0, p1, v0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    const/4 v3, 0x0

    .line 606
    aget-byte v3, v0, v3

    if-nez v3, :cond_3

    .line 607
    aget-byte v0, v0, v1

    and-int/2addr v0, v2

    const/16 v1, 0x90

    if-lt v0, v1, :cond_3

    if-gt v0, v2, :cond_3

    .line 611
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_TYPE:I

    if-le v0, v1, :cond_3

    .line 612
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setContactCrc([B)V
    .locals 3

    .line 554
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 559
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v1, v0

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 561
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v0, p0

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setContactHash([B)V
    .locals 2

    .line 537
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 542
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v1, p0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceCategory([B)V
    .locals 2

    .line 463
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 468
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    aget-byte p0, p1, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_TYPE:I

    aget-byte p0, p1, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceCategoryPrefix([B)V
    .locals 6

    .line 497
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-static {p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->access$000(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;)B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getCategoryPrefix(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v0, ""

    .line 500
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    .line 502
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    .line 506
    :cond_2
    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 507
    array-length v1, p1

    if-le v1, v2, :cond_7

    aget-byte v1, p1, v2

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_3

    goto :goto_3

    .line 512
    :cond_3
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 513
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_6

    add-int v4, v3, v2

    .line 514
    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 515
    aget-byte v4, v1, v3

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 518
    :cond_4
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    .line 519
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 508
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setPrefixName(Ljava/lang/String;)V

    return-void
.end method

.method private setDeviceIconIndex([B)V
    .locals 2

    .line 480
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v1, p0

    aget-byte p0, p1, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_DEVICE_ICON:I

    aget-byte p0, p1, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceId([B)V
    .locals 3

    .line 573
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 575
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v1, p0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 583
    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_3

    .line 585
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, p0

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setManufacturerRawData([B)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 386
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 391
    :cond_0
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_OLD_SERVICE_ID:I

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    add-int/2addr v1, v5

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_1

    .line 394
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_3

    .line 395
    :cond_1
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    .line 398
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_3

    .line 399
    :cond_2
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_8

    const/4 v1, 0x3

    .line 402
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 405
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte v2, p1, v1

    add-int/2addr v1, v5

    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_9

    shl-int v3, v5, v0

    int-to-byte v3, v3

    and-int/2addr v3, v2

    int-to-byte v3, v3

    if-eq v3, v5, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    const/16 v6, 0x8

    if-eq v3, v6, :cond_4

    const/16 v6, 0x10

    if-eq v3, v6, :cond_3

    goto :goto_2

    .line 429
    :cond_3
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 430
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v3, p1, v3

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    .line 431
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    goto :goto_1

    .line 425
    :cond_4
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 426
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_CONNECTIVITY:I

    goto :goto_1

    .line 421
    :cond_5
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_DEVICE_TYPE:I

    .line 422
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_DEVICE:I

    goto :goto_1

    .line 417
    :cond_6
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 418
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PROXIMITY:I

    goto :goto_1

    .line 413
    :cond_7
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PACKET_NUMBER:I

    .line 414
    iget v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_LENGTH_SS_LE_PACKET_NUMBER:I

    :goto_1
    add-int/2addr v1, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_8
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    :cond_9
    :goto_3
    return-void

    .line 387
    :cond_a
    :goto_4
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return-void
.end method

.method private setTxPower([B)V
    .locals 4

    .line 441
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 457
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_2

    .line 450
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v0, p0

    aget-byte p0, p1, v0

    invoke-virtual {v1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 443
    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte p0, p1, p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public byteToString([B)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 738
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 739
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const-string v4, "0123456789abcdef"

    .line 740
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ManufacturerType] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [TxPower] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getTxPower()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceCategory] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceIconIndex] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DevicePrefix] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Contact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Device ID] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [BT Type] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothType()B
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result p0

    return p0
.end method

.method public getDeviceCategory()B
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result p0

    return p0
.end method

.method public getDeviceIcon()I
    .locals 3

    .line 667
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getDeviceIcon(BB)I

    move-result p0

    return p0

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object p0

    .line 675
    aget-byte v0, p0, v1

    if-nez v0, :cond_4

    .line 676
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xfb

    if-ne p0, v0, :cond_2

    .line 678
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_vr_controller:I

    return p0

    :cond_2
    const/16 v0, 0xfe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xdb

    if-ne p0, v0, :cond_4

    .line 680
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_gear_camera:I

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public getDeviceId()[B
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object p0

    return-object p0
.end method

.method public getManufacturerRawData()[B
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-object p0
.end method

.method public getManufacturerType()I
    .locals 0

    .line 636
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSupportFeature(B)Z
    .locals 2

    .line 702
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz v0, :cond_1

    .line 705
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->MANUFACTURER_OFFSET_SS_LE_FEATURES:I

    aget-byte p0, v0, p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDeviceInfo([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerRawData([B)V

    .line 366
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerType([B)V

    .line 367
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setTxPower([B)V

    .line 368
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategory([B)V

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceIconIndex([B)V

    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategoryPrefix([B)V

    .line 371
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactHash([B)V

    .line 372
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactCrc([B)V

    .line 373
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceId([B)V

    .line 374
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setBluetoothType([B)V

    .line 376
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 377
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDeviceInfo :: describe data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->describe()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManufacturerData"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
