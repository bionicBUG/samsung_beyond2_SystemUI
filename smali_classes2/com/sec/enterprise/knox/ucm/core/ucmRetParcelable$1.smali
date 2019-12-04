.class Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;
.super Ljava/lang/Object;
.source "ucmRetParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 1

    .line 69
    new-instance p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 0

    .line 73
    new-array p0, p1, [Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;->newArray(I)[Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    return-object p0
.end method
