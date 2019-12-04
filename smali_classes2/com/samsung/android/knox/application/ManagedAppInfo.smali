.class public Lcom/samsung/android/knox/application/ManagedAppInfo;
.super Ljava/lang/Object;
.source "ManagedAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/application/ManagedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppDisabled:I

.field public mAppInstallCount:I

.field public mAppInstallationDisabled:I

.field public mAppPkg:Ljava/lang/String;

.field public mAppUninstallCount:I

.field public mAppUninstallationDisabled:I

.field public mControlStateDisableCause:I

.field public mControlStateDisableCauseMetadata:Ljava/lang/String;

.field public mIsEnterpriseApp:I

.field public mIsInstallSourceMDM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/samsung/android/knox/application/ManagedAppInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/ManagedAppInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/application/ManagedAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    .line 58
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    .line 69
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    .line 80
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 91
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    .line 111
    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 133
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const/4 v1, -0x1

    .line 52
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    .line 58
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    .line 69
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    .line 80
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 91
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    const/4 v2, 0x0

    .line 105
    iput v2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    .line 111
    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 133
    iput v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    .line 165
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ManagedAppInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/application/ManagedAppInfo$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/ManagedAppInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,InstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UninstallCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppInstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppUninstallationDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 169
    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppInstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mControlStateDisableCauseMetadata:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget p2, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsEnterpriseApp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p0, p0, Lcom/samsung/android/knox/application/ManagedAppInfo;->mIsInstallSourceMDM:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
