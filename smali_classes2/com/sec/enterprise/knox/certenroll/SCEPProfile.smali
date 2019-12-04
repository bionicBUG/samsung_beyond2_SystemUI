.class public Lcom/sec/enterprise/knox/certenroll/SCEPProfile;
.super Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
.source "SCEPProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public challengeLength:I

.field public challengePassword:[B

.field public scepProfileName:Ljava/lang/String;

.field public scepUrl:Ljava/lang/String;

.field public subjectAlternativeName:Ljava/lang/String;

.field public subjectName:Ljava/lang/String;

.field public validitytimeForChallenge:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;-><init>()V

    return-void
.end method

.method public static convertToOld(Lcom/samsung/android/knox/keystore/SCEPProfile;)Lcom/sec/enterprise/knox/certenroll/SCEPProfile;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    new-instance v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->profileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->profileType:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->scepUrl:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->scepProfileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->scepProfileName:Ljava/lang/String;

    .line 229
    iget v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengeLength:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->challengeLength:I

    .line 230
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->challengePassword:[B

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->challengePassword:[B

    .line 231
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->subjectName:Ljava/lang/String;

    .line 232
    iget-wide v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->validitytimeForChallenge:J

    iput-wide v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->validitytimeForChallenge:J

    .line 233
    iget v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    .line 234
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/SCEPProfile;->subjectAlternativeName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->subjectAlternativeName:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    .line 240
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    iput-object p0, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 180
    const-class p2, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string p2, "SCEP"

    .line 181
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->scepUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->scepProfileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->challengeLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->challengePassword:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 186
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->subjectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-wide v0, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->validitytimeForChallenge:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/SCEPProfile;->subjectAlternativeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 194
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->csrExtra:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
