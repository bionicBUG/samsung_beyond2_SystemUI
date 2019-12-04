.class Landroid/app/enterprise/NetworkStats$1;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/enterprise/NetworkStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/NetworkStats;
    .locals 0

    .line 77
    new-instance p0, Landroid/app/enterprise/NetworkStats;

    invoke-direct {p0, p1}, Landroid/app/enterprise/NetworkStats;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NetworkStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/enterprise/NetworkStats;
    .locals 0

    .line 82
    new-array p0, p1, [Landroid/app/enterprise/NetworkStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/enterprise/NetworkStats$1;->newArray(I)[Landroid/app/enterprise/NetworkStats;

    move-result-object p0

    return-object p0
.end method
