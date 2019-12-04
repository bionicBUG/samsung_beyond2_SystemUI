.class Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile$1;
.super Ljava/lang/Object;
.source "EnrollmentProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
    .locals 1

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 173
    const-class v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance p0, Lcom/samsung/android/knox/keystore/SCEPProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/SCEPProfile;-><init>(Landroid/os/Parcel;)V

    invoke-static {p0}, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->convertToOld(Lcom/samsung/android/knox/keystore/SCEPProfile;)Lcom/sec/enterprise/knox/certenroll/SCEPProfile;

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    const-class v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance p0, Lcom/samsung/android/knox/keystore/CMCProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CMCProfile;-><init>(Landroid/os/Parcel;)V

    invoke-static {p0}, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->convertToOld(Lcom/samsung/android/knox/keystore/CMCProfile;)Lcom/sec/enterprise/knox/certenroll/CMCProfile;

    move-result-object p0

    return-object p0

    .line 177
    :cond_1
    const-class v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 178
    new-instance p0, Lcom/samsung/android/knox/keystore/CMPProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CMPProfile;-><init>(Landroid/os/Parcel;)V

    invoke-static {p0}, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->convertToOld(Lcom/samsung/android/knox/keystore/CMPProfile;)Lcom/sec/enterprise/knox/certenroll/CMPProfile;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
    .locals 0

    .line 185
    new-array p0, p1, [Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile$1;->newArray(I)[Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;

    move-result-object p0

    return-object p0
.end method
