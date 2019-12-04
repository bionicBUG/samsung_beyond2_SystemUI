.class public Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
.super Ljava/lang/Object;
.source "AuditLogRulesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;",
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

    .line 125
    new-instance v0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mSeverityRule:I

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mOutcomeRule:I

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mEnableKernel:Z

    .line 41
    iput-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mSeverityRule:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mOutcomeRule:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mEnableKernel:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    .line 119
    iget-object p0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

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

    .line 102
    iget p2, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mSeverityRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget p2, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mOutcomeRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p2, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 105
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mEnableKernel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-object p0, p0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
