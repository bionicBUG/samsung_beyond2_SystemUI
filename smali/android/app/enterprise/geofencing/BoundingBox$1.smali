.class Landroid/app/enterprise/geofencing/BoundingBox$1;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/geofencing/BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/geofencing/BoundingBox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/BoundingBox;
    .locals 1

    .line 117
    new-instance p0, Landroid/app/enterprise/geofencing/BoundingBox;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/geofencing/BoundingBox$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/BoundingBox$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/geofencing/BoundingBox;
    .locals 0

    .line 121
    new-array p0, p1, [Landroid/app/enterprise/geofencing/BoundingBox;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/enterprise/geofencing/BoundingBox$1;->newArray(I)[Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object p0

    return-object p0
.end method
