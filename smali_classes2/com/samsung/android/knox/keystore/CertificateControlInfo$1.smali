.class Lcom/samsung/android/knox/keystore/CertificateControlInfo$1;
.super Ljava/lang/Object;
.source "CertificateControlInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/CertificateControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/keystore/CertificateControlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/CertificateControlInfo;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 95
    new-instance p0, Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/keystore/CertificateControlInfo;-><init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/CertificateControlInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateControlInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/keystore/CertificateControlInfo;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 100
    new-array p0, p1, [Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/CertificateControlInfo$1;->newArray(I)[Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    move-result-object p0

    return-object p0
.end method
