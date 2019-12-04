.class public Lcom/samsung/android/knox/EnrollData;
.super Ljava/lang/Object;
.source "EnrollData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private comment:Ljava/lang/String;

.field private constrainedState:I

.field private downloadUrl:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private policyBitMask:I

.field private signature:[B

.field private targetPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/knox/EnrollData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnrollData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnrollData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 13
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 13
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    .line 89
    iget-object v0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 76
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
