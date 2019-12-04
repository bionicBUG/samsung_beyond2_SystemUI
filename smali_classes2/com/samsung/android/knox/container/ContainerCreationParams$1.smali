.class Lcom/samsung/android/knox/container/ContainerCreationParams$1;
.super Ljava/lang/Object;
.source "ContainerCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/container/ContainerCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/container/ContainerCreationParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 0

    .line 247
    new-instance p0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 0

    .line 253
    new-array p0, p1, [Lcom/samsung/android/knox/container/ContainerCreationParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;->newArray(I)[Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0
.end method
