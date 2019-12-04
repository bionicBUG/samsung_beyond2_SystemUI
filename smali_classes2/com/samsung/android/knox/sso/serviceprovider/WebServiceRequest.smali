.class public Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;",
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

.field private mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    .line 105
    const-class v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    .line 110
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    .line 113
    iget-object p0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

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

    .line 92
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mRequestType:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest$RequestType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mEntity:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;->mHeaders:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
