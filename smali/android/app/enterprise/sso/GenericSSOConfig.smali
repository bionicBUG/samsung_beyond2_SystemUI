.class public Landroid/app/enterprise/sso/GenericSSOConfig;
.super Ljava/lang/Object;
.source "GenericSSOConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/sso/GenericSSOConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field authenticatorConfig:Landroid/os/Bundle;

.field authenticatorPkgName:Ljava/lang/String;

.field authenticatorPkgSignature:Ljava/lang/String;

.field ssoConfigFile:[B

.field whiteListPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Landroid/app/enterprise/sso/GenericSSOConfig$1;

    invoke-direct {v0}, Landroid/app/enterprise/sso/GenericSSOConfig$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/sso/GenericSSOConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/GenericSSOConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    .line 175
    iget-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    sget-object v1, Landroid/app/enterprise/sso/WhiteListPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->ssoConfigFile:[B

    .line 179
    iget-object p0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->ssoConfigFile:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
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

    .line 195
    :try_start_0
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 198
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->whiteListPackages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 199
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->ssoConfigFile:[B

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 200
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p2, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->ssoConfigFile:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object p0, p0, Landroid/app/enterprise/sso/GenericSSOConfig;->ssoConfigFile:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
