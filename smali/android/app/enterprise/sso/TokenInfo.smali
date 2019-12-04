.class public Landroid/app/enterprise/sso/TokenInfo;
.super Ljava/lang/Object;
.source "TokenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/sso/TokenInfo;",
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
    new-instance v0, Landroid/app/enterprise/sso/TokenInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/sso/TokenInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/sso/TokenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/app/enterprise/sso/TokenInfo;->protocolType:I

    .line 83
    iput-object p2, p0, Landroid/app/enterprise/sso/TokenInfo;->responseBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/TokenInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/enterprise/sso/TokenInfo$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/enterprise/sso/TokenInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static convertToOld(Lcom/samsung/android/knox/sso/common/TokenInfo;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Landroid/app/enterprise/sso/TokenInfo;

    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getProtocolType()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/sso/common/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/app/enterprise/sso/TokenInfo;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/sso/TokenInfo;->protocolType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/app/enterprise/sso/TokenInfo;->responseBundle:Landroid/os/Bundle;

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

    .line 117
    iget p2, p0, Landroid/app/enterprise/sso/TokenInfo;->protocolType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object p0, p0, Landroid/app/enterprise/sso/TokenInfo;->responseBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
