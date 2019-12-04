.class public Lcom/sec/knox/container/EnterpriseContainerObjectParam;
.super Ljava/lang/Object;
.source "EnterpriseContainerObjectParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/knox/container/EnterpriseContainerObjectParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdmin:I

.field private mApkInstallPath:Ljava/lang/String;

.field private mContainerCreationRequestId:I

.field private mEmail:Ljava/lang/String;

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;

    invoke-direct {v0}, Lcom/sec/knox/container/EnterpriseContainerObjectParam$1;-><init>()V

    sput-object v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 26
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 27
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 26
    iput v1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 27
    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mName:Ljava/lang/String;

    const-string v1, "writeToParcel Password null"

    const-string v2, "EnterpriseContainerObjectParam"

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "writeToParcel Email null"

    .line 156
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 161
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "writeToParcel Security Text null"

    .line 162
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_3
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mSecurityIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget p2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mContainerCreationRequestId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget p2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mAdmin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mLockType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object p0, p0, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->mApkInstallPath:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 169
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 171
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p0, "writeToParcel mApkInstallPath null"

    .line 172
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
