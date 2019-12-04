.class Landroid/app/enterprise/geofencing/Geofence$1;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/geofencing/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/geofencing/Geofence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    invoke-static {v0, p1}, Landroid/app/enterprise/geofencing/GeofenceFactory;->createGeofence(ILandroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/Geofence$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/geofencing/Geofence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/Geofence$1;->newArray(I)[Landroid/app/enterprise/geofencing/Geofence;

    move-result-object p0

    return-object p0
.end method
