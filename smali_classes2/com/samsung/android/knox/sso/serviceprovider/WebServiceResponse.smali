.class public Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;
.super Ljava/lang/Object;
.source "WebServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntity:[B

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mMajor:I

.field private mMinor:I

.field private mProtocol:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    .line 155
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 157
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    .line 158
    iget-object p0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceHeader;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

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

    .line 132
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMajor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mMinor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mStatusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 140
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 143
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceResponse;->mHeaders:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
