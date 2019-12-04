.class public Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;
.super Ljava/lang/Object;
.source "ApplicationErrorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anr:I

.field private javaCrash:I

.field private nativeCrash:I

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo$1;

    invoke-direct {v0}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo$1;-><init>()V

    sput-object v0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->javaCrash:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->nativeCrash:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->anr:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget-object p2, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget p2, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->javaCrash:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->nativeCrash:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget p0, p0, Lcom/sec/analytics/data/collection/serviceif/ApplicationErrorInfo;->anr:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
