.class public Lcom/samsung/android/knox/sso/common/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/sso/common/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAuthenticationType:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mIdentityProvider:Ljava/lang/String;

.field private mLastAuthenMillis:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mTenantId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private userInfoJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lcom/samsung/android/knox/sso/common/UserInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/sso/common/UserInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/sso/common/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/UserInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/sso/common/UserInfo$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/sso/common/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    return-object p0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentityProvider()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    return-object p0
.end method

.method public getJsonString()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    return-object p0
.end method

.method public getLastAuthenMillis()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-object p0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 228
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->userInfoJsonString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mIdentityProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAuthenticationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mTenantId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/samsung/android/knox/sso/common/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
