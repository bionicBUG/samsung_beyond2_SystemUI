.class public Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
.super Ljava/lang/Object;
.source "ucmRetParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mData:[B

.field private mDataLength:I

.field public mResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(Landroid/os/Parcel;)V

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

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mResult:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCMERRORTESTING: @ucmRetParcelable readFromParcel: dateLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ucmRetParcelable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez v0, :cond_0

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 59
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 44
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-eqz p2, :cond_0

    .line 47
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
