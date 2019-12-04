.class public Lcom/sec/enterprise/knox/certenroll/CMPProfile;
.super Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;
.source "CMPProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public cmpServerURL:Ljava/lang/String;

.field public iakLength:J

.field public initialAuthenticationKey:[B

.field public issuerDN:Ljava/lang/String;

.field public keyUsage:I

.field public notAfterDate:J

.field public notBeforeDate:J

.field public popType:I

.field public subjectDN:Ljava/lang/String;

.field public transport:I

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;-><init>()V

    return-void
.end method

.method public static convertToOld(Lcom/samsung/android/knox/keystore/CMPProfile;)Lcom/sec/enterprise/knox/certenroll/CMPProfile;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 319
    :cond_0
    new-instance v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/certenroll/CMPProfile;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->profileType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->profileType:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->cmpServerURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->cmpServerURL:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->userName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->userName:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->initialAuthenticationKey:[B

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->initialAuthenticationKey:[B

    .line 324
    iget-wide v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->iakLength:J

    iput-wide v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->iakLength:J

    .line 325
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->subjectDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->subjectDN:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->issuerDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->issuerDN:Ljava/lang/String;

    .line 327
    iget v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keySize:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    .line 328
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    .line 329
    iget v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->popType:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->popType:I

    .line 330
    iget v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->keyUsage:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->keyUsage:I

    .line 331
    iget v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->transport:I

    iput v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->transport:I

    .line 332
    iget-wide v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notBeforeDate:J

    iput-wide v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->notBeforeDate:J

    .line 333
    iget-wide v1, p0, Lcom/samsung/android/knox/keystore/CMPProfile;->notAfterDate:J

    iput-wide v1, v0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->notAfterDate:J

    .line 334
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    .line 336
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    iput-object p0, v0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

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

    .line 256
    const-class p2, Lcom/sec/enterprise/knox/certenroll/CMPProfile;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->profileType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->cmpServerURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-wide v0, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->iakLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->initialAuthenticationKey:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 262
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->subjectDN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->issuerDN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keySize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keyPairAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->popType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->keyUsage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget p2, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->transport:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-wide v0, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->notBeforeDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    iget-wide v0, p0, Lcom/sec/enterprise/knox/certenroll/CMPProfile;->notAfterDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->keystoreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->credentialStorageBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 274
    iget-object p0, p0, Lcom/sec/enterprise/knox/certenroll/EnrollmentProfile;->hashAlgorithmType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
