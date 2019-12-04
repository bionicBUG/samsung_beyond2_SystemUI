.class public Lcom/samsung/android/knox/container/EnterpriseContainerObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerObject.java"

# interfaces
.implements Lcom/samsung/android/knox/container/EnterpriseContainerConstants;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private admin:I

.field private containerType:I

.field private email:Ljava/lang/String;

.field private id:I

.field private lockType:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/EnterpriseContainerObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 20
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 24
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 20
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 24
    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 167
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->admin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->email:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    :goto_1
    iget p2, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->lockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p0, p0, Lcom/samsung/android/knox/container/EnterpriseContainerObject;->containerType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
