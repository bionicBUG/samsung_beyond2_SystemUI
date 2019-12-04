.class public Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;
.super Ljava/lang/Object;
.source "EnterpriseResponseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mFailureState:I

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 88
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 88
    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    iget-object p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mData:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 135
    iget p2, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p0, p0, Lcom/samsung/android/knox/net/vpn/EnterpriseResponseData;->mFailureState:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
