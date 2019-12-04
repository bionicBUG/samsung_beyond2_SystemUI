.class public Landroid/app/enterprise/sso/AuthenticationRequest;
.super Ljava/lang/Object;
.source "AuthenticationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/sso/AuthenticationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthenticatorPkgName:Ljava/lang/String;

.field private mHttpRequest:Landroid/app/enterprise/sso/WebServiceRequest;

.field private mRequestConfig:Landroid/os/Bundle;

.field private mToken:Landroid/app/enterprise/sso/TokenInfo;

.field private mWhiteListPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest$1;

    invoke-direct {v0}, Landroid/app/enterprise/sso/AuthenticationRequest$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/sso/AuthenticationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/AuthenticationRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/AuthenticationRequest$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/sso/TokenInfo;

    iput-object v1, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mToken:Landroid/app/enterprise/sso/TokenInfo;

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/enterprise/sso/WebServiceRequest;

    iput-object p1, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mHttpRequest:Landroid/app/enterprise/sso/WebServiceRequest;

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

    .line 142
    iget-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mAuthenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mWhiteListPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mRequestConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 145
    iget-object v0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mToken:Landroid/app/enterprise/sso/TokenInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object p0, p0, Landroid/app/enterprise/sso/AuthenticationRequest;->mHttpRequest:Landroid/app/enterprise/sso/WebServiceRequest;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
