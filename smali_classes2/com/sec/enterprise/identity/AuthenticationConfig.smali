.class public Lcom/sec/enterprise/identity/AuthenticationConfig;
.super Ljava/lang/Object;
.source "AuthenticationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/enterprise/identity/AuthenticationConfig$AuthenticationRequestKeys;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/enterprise/identity/AuthenticationConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field authenticatorConfig:Landroid/os/Bundle;

.field authenticatorPkgName:Ljava/lang/String;

.field authenticatorPkgSignature:Ljava/lang/String;

.field enforceEnterpriseIdentityLock:Z

.field enforceRemoteAuthAlways:Z

.field hideEnterpriseIdentityLock:Z

.field isConfiguredByMDM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Lcom/sec/enterprise/identity/AuthenticationConfig$1;

    invoke-direct {v0}, Lcom/sec/enterprise/identity/AuthenticationConfig$1;-><init>()V

    sput-object v0, Lcom/sec/enterprise/identity/AuthenticationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    .line 196
    iput-boolean v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    .line 197
    iput-boolean v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    .line 198
    iput-boolean v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-direct {p0, p1}, Lcom/sec/enterprise/identity/AuthenticationConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Z

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 209
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    const/4 v1, 0x1

    .line 210
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    const/4 v1, 0x2

    .line 211
    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    const/4 v1, 0x3

    .line 212
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 217
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x4

    :try_start_0
    new-array p2, p2, [Z

    const/4 v0, 0x0

    .line 230
    iget-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceRemoteAuthAlways:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->enforceEnterpriseIdentityLock:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->hideEnterpriseIdentityLock:Z

    aput-boolean v1, p2, v0

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->isConfiguredByMDM:Z

    aput-boolean v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 232
    iget-object p2, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorPkgSignature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/sec/enterprise/identity/AuthenticationConfig;->authenticatorConfig:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
