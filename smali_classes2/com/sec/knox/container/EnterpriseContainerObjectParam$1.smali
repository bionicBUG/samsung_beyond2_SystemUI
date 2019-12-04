.class Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 0

    .line 33
    new-instance p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-direct {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .locals 0

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;->newArray(I)[Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    move-result-object p0

    return-object p0
.end method
