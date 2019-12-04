.class public Lcom/sec/enterprise/knox/ccm/CSRProfile;
.super Ljava/lang/Object;
.source "CSRProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;,
        Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;,
        Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/ccm/CSRProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonName:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

.field public domainComponent:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

.field public keyLength:I

.field public locality:Ljava/lang/String;

.field public organization:Ljava/lang/String;

.field public profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

.field public state:Ljava/lang/String;

.field public templateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ccm/CSRProfile$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 117
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 125
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    const/16 v1, 0x400

    .line 141
    iput v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    .line 148
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 230
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 231
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 117
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 125
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    const/16 v1, 0x400

    .line 141
    iput v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    .line 148
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    .line 239
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 241
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 242
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    if-nez v1, :cond_0

    .line 245
    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    iput-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    .line 249
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 251
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 252
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 254
    :goto_1
    iget-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    if-nez v1, :cond_1

    .line 255
    sget-object v1, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    iput-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    .line 259
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 261
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    .line 262
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 264
    :goto_2
    iget-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    if-nez v0, :cond_2

    .line 265
    sget-object v0, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    .line 268
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/ccm/CSRProfile$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ccm/CSRProfile;-><init>(Landroid/os/Parcel;)V

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

    .line 196
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    if-nez p2, :cond_0

    .line 197
    sget-object p2, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->SCEP:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->csrFormat:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    if-nez p2, :cond_1

    .line 203
    sget-object p2, Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;->PKCS10:Lcom/sec/enterprise/knox/ccm/CSRProfile$CSRFormat;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    :goto_1
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyAlgType:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    if-nez p2, :cond_2

    .line 209
    sget-object p2, Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;->RSA:Lcom/sec/enterprise/knox/ccm/CSRProfile$KeyAlgorithm;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    :goto_2
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
