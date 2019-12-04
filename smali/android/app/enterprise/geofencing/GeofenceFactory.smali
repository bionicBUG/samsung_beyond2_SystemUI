.class public Landroid/app/enterprise/geofencing/GeofenceFactory;
.super Ljava/lang/Object;
.source "GeofenceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGeofence(ILandroid/os/Parcel;)Landroid/app/enterprise/geofencing/Geofence;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance p0, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct {p0, p1}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    .line 52
    :cond_1
    new-instance p0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    invoke-direct {p0, p1}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0

    .line 55
    :cond_2
    new-instance p0, Landroid/app/enterprise/geofencing/CircularGeofence;

    invoke-direct {p0, p1}, Landroid/app/enterprise/geofencing/CircularGeofence;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method
