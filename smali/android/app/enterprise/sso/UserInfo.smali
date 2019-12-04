.class public Landroid/app/enterprise/sso/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/sso/UserInfo;",
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
    new-instance v0, Landroid/app/enterprise/sso/UserInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/sso/UserInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/sso/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/UserInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/UserInfo$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static convertToOld(Lcom/samsung/android/knox/sso/common/UserInfo;)Landroid/app/enterprise/sso/UserInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_0
    new-instance v0, Landroid/app/enterprise/sso/UserInfo;

    invoke-direct {v0}, Landroid/app/enterprise/sso/UserInfo;-><init>()V

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setJsonString(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setFirstName(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setLastName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getIdentityProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setIdentityProvider(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getAuthenticationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setAuthenticationType(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getTenantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setTenantId(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setAddress(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setEmailAddress(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/sso/UserInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/UserInfo;->getLastAuthenMillis()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/enterprise/sso/UserInfo;->setLastAuthenMillis(Ljava/lang/String;)V

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->userInfoJsonString:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mUserId:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mFirstName:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mLastName:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mIdentityProvider:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mAuthenticationType:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mTenantId:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mAddress:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mPhoneNumber:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/sso/UserInfo;->mEmailAddress:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationType(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mAuthenticationType:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityProvider(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mIdentityProvider:Ljava/lang/String;

    return-void
.end method

.method public setJsonString(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->userInfoJsonString:Ljava/lang/String;

    return-void
.end method

.method public setLastAuthenMillis(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mLastName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTenantId(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mTenantId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Landroid/app/enterprise/sso/UserInfo;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 235
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->userInfoJsonString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mIdentityProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mAuthenticationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mTenantId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Landroid/app/enterprise/sso/UserInfo;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Landroid/app/enterprise/sso/UserInfo;->mLastAuthenMillis:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
