.class public Landroid/app/enterprise/UsbDeviceConfig;
.super Ljava/lang/Object;
.source "UsbDeviceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/UsbDeviceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public productId:I

.field public vendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/app/enterprise/UsbDeviceConfig$1;

    invoke-direct {v0}, Landroid/app/enterprise/UsbDeviceConfig$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/UsbDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/enterprise/UsbDeviceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/UsbDeviceConfig$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/app/enterprise/UsbDeviceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 153
    :cond_0
    instance-of v1, p1, Landroid/app/enterprise/UsbDeviceConfig;

    if-nez v1, :cond_1

    return v0

    .line 159
    :cond_1
    check-cast p1, Landroid/app/enterprise/UsbDeviceConfig;

    iget v1, p1, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    if-lez v1, :cond_3

    iget p1, p1, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    if-gtz p1, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    iget v2, p0, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    if-ne v2, v1, :cond_3

    iget p0, p0, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 123
    iget p2, p0, Landroid/app/enterprise/UsbDeviceConfig;->vendorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget p0, p0, Landroid/app/enterprise/UsbDeviceConfig;->productId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
