.class public Landroid/app/enterprise/sso/WebServiceResponse;
.super Ljava/lang/Object;
.source "WebServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/sso/WebServiceResponse;",
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
            "Landroid/app/enterprise/sso/WebServiceHeader;",
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
    new-instance v0, Landroid/app/enterprise/sso/WebServiceResponse$1;

    invoke-direct {v0}, Landroid/app/enterprise/sso/WebServiceResponse$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/sso/WebServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/WebServiceResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/WebServiceResponse$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/WebServiceResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mProtocol:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mMajor:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mMinor:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mStatusCode:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mEntity:[B

    .line 162
    iget-object v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mHeaders:Ljava/util/List;

    .line 165
    iget-object p0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mHeaders:Ljava/util/List;

    sget-object v0, Landroid/app/enterprise/sso/WebServiceHeader;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 139
    iget-object p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mMajor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mMinor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mStatusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mEntity:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 145
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 147
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mEntity:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 150
    :goto_0
    iget-object p0, p0, Landroid/app/enterprise/sso/WebServiceResponse;->mHeaders:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
