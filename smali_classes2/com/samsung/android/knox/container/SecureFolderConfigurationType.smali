.class public Lcom/samsung/android/knox/container/SecureFolderConfigurationType;
.super Lcom/samsung/android/knox/container/KnoxConfigurationType;
.source "SecureFolderConfigurationType.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/SecureFolderConfigurationType;",
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

    .line 252
    new-instance v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/SecureFolderConfigurationType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/container/KnoxConfigurationType;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 57
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

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

    .line 296
    invoke-super {p0, p1, p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 297
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowSettingsChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowStatusBarExpansion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowHomeKey:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mAllowClearAllNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mHideSystemBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/SecureFolderConfigurationType;->mWipeRecentTasks:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
