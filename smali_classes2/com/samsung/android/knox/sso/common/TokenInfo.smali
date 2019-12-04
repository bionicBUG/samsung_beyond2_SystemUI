.class public Lcom/samsung/android/knox/sso/common/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/common/TokenInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private protocolType:I

.field private responseBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/samsung/android/knox/sso/common/TokenInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/TokenInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/common/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/common/TokenInfo$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/TokenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getProtocolType()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    return p0
.end method

.method public getResponseBundle()Landroid/os/Bundle;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 110
    iget p2, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->protocolType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/TokenInfo;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
