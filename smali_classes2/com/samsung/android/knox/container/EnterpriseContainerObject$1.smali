.class Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/EnterpriseContainerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/container/EnterpriseContainerObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/EnterpriseContainerObject;
    .locals 0

    .line 30
    new-instance p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/EnterpriseContainerObject;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/container/EnterpriseContainerObject;
    .locals 1

    const-string p0, "EnterpriseContainerObject"

    const-string v0, "EnterpriseContainerObject[] array to be created"

    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-array p0, p1, [Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;->newArray(I)[Lcom/samsung/android/knox/container/EnterpriseContainerObject;

    move-result-object p0

    return-object p0
.end method
