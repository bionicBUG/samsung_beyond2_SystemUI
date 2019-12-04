.class public Lcom/samsung/android/knox/log/AuditLogRulesInfo;
.super Ljava/lang/Object;
.source "AuditLogRulesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/log/AuditLogRulesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnableKernel:Z

.field private mGroupsRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutcomeRule:I

.field private mSeverityRule:I

.field private mUsersRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mEnableKernel:Z

    .line 47
    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/log/AuditLogRulesInfo$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mEnableKernel:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    .line 136
    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

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

    .line 119
    iget p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 122
    iget-boolean p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mEnableKernel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
