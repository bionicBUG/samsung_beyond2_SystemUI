.class public Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
.super Ljava/lang/Object;
.source "ApduMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/ucm/core/ApduMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:I

.field public message:[B

.field public messageType:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->message:[B

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->messageType:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/ucm/core/ApduMessage$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 69
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->status:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 70
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->errorCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 71
    iget p2, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->messageType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 72
    iget-object p0, p0, Lcom/sec/enterprise/knox/ucm/core/ApduMessage;->message:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
