.class public Lcom/sec/enterprise/knox/ccm/TUIProperty;
.super Ljava/lang/Object;
.source "TUIProperty.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/ccm/TUIProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public loginExpirationPeriod:I

.field public loginRetry:I

.field public pin:[B

.field public secretImage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/sec/enterprise/knox/ccm/TUIProperty$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ccm/TUIProperty$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    .line 55
    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    .line 129
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    .line 55
    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    .line 129
    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    .line 154
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/ccm/TUIProperty;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/ccm/TUIProperty$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/ccm/TUIProperty;-><init>(Landroid/os/Parcel;)V

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

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    iget p2, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object p2, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    iget-object p0, p0, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
