.class public Lcom/sec/enterprise/knox/certenroll/CMCProfile;
.super Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
.source "CMCProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public estServerUrl:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public oneTimePassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public serverSideKeyGeneration:Z

.field public subjectAlterNativeName:Ljava/lang/String;

.field public subjectName:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;-><init>()V

    return-void
.end method

.method public static convertToOld(Lcom/samsung/android/knox/keystore/CMCProfile;)Lcom/sec/enterprise/knox/certenroll/CMCProfile;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    new-instance v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certenroll/CMCProfile;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->profileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->profileType:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->estServerUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->estServerUrl:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->subjectName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->subjectName:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->subjectAlterNativeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->subjectAlterNativeName:Ljava/lang/String;

    .line 200
    iget v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    .line 201
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->userName:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->password:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->oneTimePassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->oneTimePassword:Ljava/lang/String;

    .line 207
    iget-boolean v1, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->serverSideKeyGeneration:Z

    iput-boolean v1, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->serverSideKeyGeneration:Z

    .line 208
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    .line 209
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    .line 210
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CMCProfile;->extras:Landroid/os/Bundle;

    iput-object p0, v0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->extras:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    const-class p2, Lcom/sec/enterprise/knox/certenroll/CMCProfile;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p2, "CMC"

    .line 150
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->estServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->subjectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->subjectAlterNativeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->oneTimePassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-boolean p2, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->serverSideKeyGeneration:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 163
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/sec/enterprise/knox/certenroll/CMCProfile;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
