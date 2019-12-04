.class public Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "UcmKeyPairGenerator.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mKeySize:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    .line 50
    iget v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    .line 55
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mSource:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 57
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "bytearrayresponse"

    .line 63
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 73
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, p0, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :catch_0
    move-exception p0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keystore returned invalid key encoding"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t instantiate key generator"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "generateKeyPair returns null byte arr"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call initialize with an android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 88
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 97
    instance-of p2, p1, Landroid/security/KeyPairGeneratorSpec;

    if-eqz p2, :cond_0

    .line 98
    check-cast p1, Landroid/security/KeyPairGeneratorSpec;

    .line 99
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    .line 101
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlgorithm:Ljava/lang/String;

    return-void

    .line 103
    :cond_0
    instance-of p2, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz p2, :cond_1

    .line 104
    check-cast p1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 105
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mAlias:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeyPairGenerator;->mKeySize:I

    return-void

    .line 110
    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "params must be of type android.security.KeyPairGeneratorSpecor or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "must supply params of type android.security.KeyPairGeneratorSpec or android.security.keystore.KeyGenParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
