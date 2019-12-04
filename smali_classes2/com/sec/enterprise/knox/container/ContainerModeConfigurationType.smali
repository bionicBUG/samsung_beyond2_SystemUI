.class public Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
.super Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
.source "ContainerModeConfigurationType.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllowClearAllNotification:Z

.field protected mAllowHomeKey:Z

.field protected mAllowSettingsChanges:Z

.field protected mAllowStatusBarExpansion:Z

.field protected mHideSystemBar:Z

.field protected mWipeRecentTasks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType$1;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    .line 54
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 257
    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    .line 51
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

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

    .line 275
    invoke-super {p0, p1, p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean p0, p0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
