.class public Landroid/app/enterprise/BluetoothControlInfo;
.super Landroid/app/enterprise/ControlInfo;
.source "BluetoothControlInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/app/enterprise/BluetoothControlInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/BluetoothControlInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/BluetoothControlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/app/enterprise/ControlInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/app/enterprise/ControlInfo;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/enterprise/ControlInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/BluetoothControlInfo$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
