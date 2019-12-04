.class public Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
.super Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
.source "LightweightConfigurationType.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/container/LightweightConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFolderDisabledChangeLayout:Ljava/lang/String;

.field private mFolderHeaderIcon:Ljava/lang/String;

.field private mFolderHeaderTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 187
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 193
    :cond_1
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v1, v0

    .line 198
    :cond_3
    iput-object v1, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p1, v0

    .line 204
    :cond_5
    iput-object p1, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

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

    .line 217
    invoke-super {p0, p1, p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget-object p2, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderIcon:Ljava/lang/String;

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    :goto_0
    iget-object p2, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderHeaderTitle:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 224
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-object p0, p0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->mFolderDisabledChangeLayout:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 230
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 232
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
