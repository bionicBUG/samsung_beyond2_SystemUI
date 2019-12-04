.class public Lcom/samsung/android/knox/dlp/RulesInfo;
.super Ljava/lang/Object;
.source "RulesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/dlp/RulesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canScreenCapture:Z

.field private isOwner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Lcom/samsung/android/knox/dlp/RulesInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/dlp/RulesInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dlp/RulesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/dlp/RulesInfo$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/dlp/RulesInfo;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 p1, 0x0

    .line 202
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    const/4 p1, 0x1

    .line 203
    aget-boolean p1, v0, p1

    iput-boolean p1, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->isOwner:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Z

    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->canScreenCapture:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean p0, p0, Lcom/samsung/android/knox/dlp/RulesInfo;->isOwner:Z

    const/4 v0, 0x1

    aput-boolean p0, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
