.class public Landroid/app/enterprise/geofencing/LinearGeofence;
.super Landroid/app/enterprise/geofencing/Geofence;
.source "LinearGeofence.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

.field public optimizedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation
.end field

.field public width:D


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Landroid/app/enterprise/geofencing/Geofence;-><init>()V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    .line 143
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/LinearGeofence;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Landroid/app/enterprise/geofencing/Geofence;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    sget-object v2, Landroid/app/enterprise/geofencing/LatLongPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    if-eqz v2, :cond_0

    .line 180
    iget-object v3, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "Parcel format exception"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/geofencing/Geofence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    iget-object v0, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .line 158
    invoke-virtual {v1, p1, p2}, Landroid/app/enterprise/geofencing/LatLongPoint;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-wide v0, p0, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
