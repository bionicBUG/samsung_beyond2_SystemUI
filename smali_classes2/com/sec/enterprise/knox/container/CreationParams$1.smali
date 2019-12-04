.class Lcom/sec/enterprise/knox/container/CreationParams$1;
.super Ljava/lang/Object;
.source "CreationParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/CreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/container/CreationParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/CreationParams;
    .locals 0

    .line 56
    new-instance p0, Lcom/sec/enterprise/knox/container/CreationParams;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/CreationParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/CreationParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/CreationParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/container/CreationParams;
    .locals 0

    .line 62
    new-array p0, p1, [Lcom/sec/enterprise/knox/container/CreationParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/CreationParams$1;->newArray(I)[Lcom/sec/enterprise/knox/container/CreationParams;

    move-result-object p0

    return-object p0
.end method
