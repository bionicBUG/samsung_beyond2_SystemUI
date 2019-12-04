.class Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType$1;
.super Ljava/lang/Object;
.source "SecureFolderConfigurationType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;
    .locals 0

    .line 239
    new-instance p0, Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;

    invoke-direct {p0, p1}, Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;
    .locals 1

    const-string p0, "SecureFolderConfigurationType"

    const-string v0, "SecureFolderConfigurationType[] array to be created"

    .line 245
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-array p0, p1, [Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType$1;->newArray(I)[Lcom/sec/enterprise/knox/container/SecureFolderConfigurationType;

    move-result-object p0

    return-object p0
.end method
