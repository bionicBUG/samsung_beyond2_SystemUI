.class public Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticatorPkgName:Ljava/lang/String;

.field private mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

.field private mRequestConfig:Landroid/os/Bundle;

.field private mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

.field private mWhiteListPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sso/common/TokenInfo;

    iput-object v1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    iput-object p1, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

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

    .line 135
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mToken:Lcom/samsung/android/knox/sso/common/TokenInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/knox/sso/serviceprovider/AuthenticationRequest;->mHttpRequest:Lcom/samsung/android/knox/sso/serviceprovider/WebServiceRequest;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
