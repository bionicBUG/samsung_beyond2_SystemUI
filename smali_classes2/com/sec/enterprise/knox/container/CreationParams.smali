.class public Lcom/sec/enterprise/knox/container/CreationParams;
.super Ljava/lang/Object;
.source "CreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/container/CreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdminPkgName:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mPwdResetToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/sec/enterprise/knox/container/CreationParams$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/container/CreationParams$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/container/CreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 91
    iget-object p2, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mConfigName:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    :goto_0
    iget-object p2, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mAdminPkgName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    :goto_1
    iget-object p0, p0, Lcom/sec/enterprise/knox/container/CreationParams;->mPwdResetToken:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 102
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
