.class public Lcom/samsung/android/knox/dlp/DLPConfig;
.super Ljava/lang/Object;
.source "DLPConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/DLPConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activateDLP:Z

.field public allowClipboard:Z

.field public allowDataNetwork:Z

.field public allowedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/dlp/DLPPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expiryOffsetDays:I

.field public lockDLP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/knox/dlp/DLPConfig$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/DLPConfig$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/DLPConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPConfig;->readfromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/DLPConfig$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/DLPConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readfromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 52
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowClipboard:Z

    const/4 v1, 0x1

    .line 53
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowDataNetwork:Z

    const/4 v1, 0x2

    .line 54
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->lockDLP:Z

    const/4 v1, 0x3

    .line 55
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->activateDLP:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->expiryOffsetDays:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    .line 58
    iget-object p0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/knox/dlp/DLPPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x4

    new-array p2, p2, [Z

    .line 70
    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowClipboard:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowDataNetwork:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->lockDLP:Z

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->activateDLP:Z

    const/4 v1, 0x3

    aput-boolean v0, p2, v1

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 75
    iget p2, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->expiryOffsetDays:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/knox/dlp/DLPConfig;->allowedAppList:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
