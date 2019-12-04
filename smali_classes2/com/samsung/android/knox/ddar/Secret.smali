.class public Lcom/samsung/android/knox/ddar/Secret;
.super Ljava/lang/Object;
.source "Secret.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alias:Ljava/lang/String;

.field public data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/samsung/android/knox/ddar/Secret$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ddar/Secret$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ddar/Secret;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ddar/Secret;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 89
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 90
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    iget-object p2, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    if-eqz p2, :cond_0

    .line 79
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
