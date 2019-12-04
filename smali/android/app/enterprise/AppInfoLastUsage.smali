.class public Landroid/app/enterprise/AppInfoLastUsage;
.super Landroid/app/enterprise/AppInfo;
.source "AppInfoLastUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/enterprise/AppInfoLastUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mLastAppUsage:J

.field public mLastLaunchTime:J

.field public mLaunchCountPerMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/app/enterprise/AppInfoLastUsage$1;

    invoke-direct {v0}, Landroid/app/enterprise/AppInfoLastUsage$1;-><init>()V

    sput-object v0, Landroid/app/enterprise/AppInfoLastUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Landroid/app/enterprise/AppInfo;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 99
    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Landroid/app/enterprise/AppInfo;-><init>()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 99
    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 152
    invoke-virtual {p0, p1}, Landroid/app/enterprise/AppInfoLastUsage;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 218
    invoke-super {p0, p1}, Landroid/app/enterprise/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 180
    invoke-super {p0, p1, p2}, Landroid/app/enterprise/AppInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget p2, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-wide v0, p0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
