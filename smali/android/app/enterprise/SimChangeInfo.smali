.class public Landroid/app/enterprise/SimChangeInfo;
.super Ljava/lang/Object;
.source "SimChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/SimChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public changeOperation:I

.field public changeTime:J

.field public currentSimInfo:Landroid/app/enterprise/SimInfo;

.field public previousSimInfo:Landroid/app/enterprise/SimInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/app/enterprise/SimChangeInfo$1;

    invoke-direct {v0}, Landroid/app/enterprise/SimChangeInfo$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/SimChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/app/enterprise/SimChangeInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 131
    new-instance v0, Landroid/app/enterprise/SimInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 132
    new-instance v0, Landroid/app/enterprise/SimInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 116
    iget-wide v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget v0, p0, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget-object p0, p0, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {p0, p1, p2}, Landroid/app/enterprise/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
